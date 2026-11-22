return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,
      preset = {
        header = [[
                       °
    .                           o
              o
  °                                 .
 ><(((º>                  .

                              o
          .                          °
                              .
                         <º)))><      o

         °                 .
                  o]],
      },
      sections = {
        { section = "header" },
        { align = "center", text = { { os.date("%A, %B %d, %Y"), hl = "SnacksDashboardDesc" } }, padding = 1 },
        { section = "keys", gap = 1, padding = 1 },
        { section = "startup" },
      },
    },
    explorer = { enabled = true },
    indent = { enabled = true },
    input = { enabled = true },
    picker = { enabled = true },
    notifier = {
      enabled = true,
      timeout = 3000,
    },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
  keys = {
    { "<leader>sf",       function() Snacks.scratch() end,            desc = "Toggle Scratch Buffer" },
    { "<leader>S",        function() Snacks.scratch.select() end,     desc = "Select Scratch Buffer" },
    { "<leader>gl",       function() Snacks.lazygit.log_file() end,   desc = "Lazygit Log (file)" },
    { "<leader>lg",       function() Snacks.lazygit() end,            desc = "Lazygit" },
    { "<C-p>",            function() Snacks.picker.pick("files") end, desc = "Find Files" },
    { "<leader><leader>", function() Snacks.picker.recent() end,      desc = "Recent Files" },
    { "<leader>fb",       function() Snacks.picker.buffers() end,     desc = "Buffers" },
    { "<leader>fg",       function() Snacks.picker.grep() end,        desc = "Grep Files" },
    { "<C-n>",            function() Snacks.explorer() end,           desc = "Explorer" },
  },
}
