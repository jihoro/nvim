require("config.lazy")

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.clipboard = 'unnamedplus'

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.opt.wrap = false
