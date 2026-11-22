return {
  { "mason-org/mason.nvim", opts = {} },

  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
    opts = { ensure_installed = { "lua_ls", "jdtls", "basedpyright", "clangd" } },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
      vim.lsp.config("*", {
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
      })

      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = true,
        severity_sort = true,
      })

      vim.lsp.enable({ "lua_ls", "jdtls", "basedpyright", "clangd" })

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(e)
          local function map(keys, func)
            vim.keymap.set("n", keys, func, { buffer = e.buf })
          end
          map("K", vim.lsp.buf.hover)
          map("<leader>gd", vim.lsp.buf.definition)
          map("<leader>gr", vim.lsp.buf.references)
          map("<leader>ca", vim.lsp.buf.code_action)
          map("<leader>gf", vim.lsp.buf.format)
          map("<leader>rn", vim.lsp.buf.rename)
        end,
      })
    end,
  },
}
