return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = function()
            require("toggleterm").setup({
                open_mapping = [[<C-\>]],
                direction = 'horizontal',
                size = 20,
                auto_scroll = false,
                float_opts = {
                    border = 'rounded',
                },
                shade_terminals = false,
            })
            function _G.set_terminal_keymaps()
                local opts = { buffer = 0 }
                vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
                vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
                vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
                vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
                vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
            end

            vim.cmd "autocmd! TermOpen term://* lua set_terminal_keymaps()"
        end,
    }
}
