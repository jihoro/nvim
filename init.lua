require("config.lazy")
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.clipboard = 'unnamedplus'

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set("n", "<C-d>", function()
    vim.cmd("normal! " .. math.floor(vim.api.nvim_win_get_height(0) / 4) .. "jzz")
end, { noremap = true, silent = true })
vim.keymap.set("n", "<C-u>", function()
    vim.cmd("normal! " .. math.floor(vim.api.nvim_win_get_height(0) / 4) .. "kzz")
end, { noremap = true, silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    end
})

-- enable virtual / ghost text
vim.diagnostic.config({ virtual_text = true })

vim.opt.wrap = false
vim.o.ignorecase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true
vim.g.tmux_navigator_no_mappings = 1
vim.o.guicursor = ""
