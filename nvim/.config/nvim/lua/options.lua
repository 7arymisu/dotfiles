local opt = vim.opt
local set = vim.opt_local

--- Tabs ---
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.smartindent = true

--- Line Numbers ---
opt.number = true
opt.relativenumber = true

--- Search ---
opt.ignorecase = true
opt.smartcase = true

--- Clipboard ---
opt.clipboard = "unnamedplus"

--- Terminal ---
vim.api.nvim_create_autocmd("TermOpen", {
  group = vim.api.nvim_create_augroup("custom-term-open", {}),
  callback = function()
    set.number = false
    set.relativenumber = false
    set.scrolloff = 0

    vim.bo.filetype = "terminal"
  end,
})

vim.keymap.set("n", "<C-`>", function()
  vim.cmd.new()
  vim.cmd.wincmd "J"
  vim.api.nvim_win_set_height(0, 12)
  vim.wo.winfixheight = true
  vim.cmd.term()
  vim.cmd.startinsert()
end)

vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>:bd!<cr>")

--- Scroll ---
-- up
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- down
vim.keymap.set("n", "<C-d>", "<C-d>zz")

