return {
  "stevearc/oil.nvim",
  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
  },
  config = function()
    local oil = require("oil")
    oil.setup({
      float = {
        border = "rounded",
        padding = 4,
      },
    })
    vim.keymap.set("n", "-", oil.toggle_float, { desc = "Oil (floating)" })
  end,
  lazy = false,
}
