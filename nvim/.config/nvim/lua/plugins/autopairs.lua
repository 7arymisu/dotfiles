return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  dependencies = { "hrsh7th/nvim-cmp" },
  config = function()
    local npairs = require("nvim-autopairs")
    local Rule = require("nvim-autopairs.rule")

    npairs.setup({
      check_ts = true,
      disable_filetype = { "TelescopePrompt", "vim" },
      fast_wrap = {},
    })

    npairs.add_rules({
      Rule("<", ">", { "cpp", "java", "rust" }),
    })

    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
  end,
}
