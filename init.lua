require("config.lazy")
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.clipboard = 'unnamedplus'

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- vim.api.nvim_set_keymap('n', '<C-d>',
--     '<Cmd>lua vim.cmd("normal! <C-d>"); MiniAnimate.execute_after("scroll", "normal! zz")<CR>',
--     { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<C-u>',
--     '<Cmd>lua vim.cmd("normal! <C-u>"); MiniAnimate.execute_after("scroll", "normal! zz")<CR>',
--     { noremap = true, silent = true })
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    end
})
vim.opt.wrap = false
vim.o.ignorecase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.g.tmux_navigator_no_mappings = 1
vim.keymap.set("x", "<leader>p", [["_dP]])
