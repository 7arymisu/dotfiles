return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    local ts = require("nvim-treesitter")

    ts.setup({
      install_dir = vim.fn.stdpath("data") .. "/site",
    })

    local function start(buf)
      if vim.api.nvim_buf_is_valid(buf) and pcall(vim.treesitter.start, buf) then
        vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end
    end

    vim.api.nvim_create_autocmd("FileType", {
      callback = function(args)
        local lang = vim.treesitter.language.get_lang(args.match)
        if not lang then return end

        if vim.list_contains(ts.get_installed(), lang) then
          start(args.buf)
        elseif vim.list_contains(ts.get_available(), lang) then
          ts.install(lang):await(function()
            vim.schedule(function() start(args.buf) end)
          end)
        end
      end,
    })
  end,
}
