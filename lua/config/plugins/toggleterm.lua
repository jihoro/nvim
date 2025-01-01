return {
    {
        'akinsho/toggleterm.nvim',
        version = "*",
        config = function()
            require("toggleterm").setup({
                open_mapping = [[<C-\>]],
                direction = 'float',
                size = 40,
                float_opts = {
                    border = 'rounded',
                }
            })
            function _G.set_terminal_keymaps()
                local opts = { noremap = true }
                vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
            end

            vim.cmd "autocmd! TermOpen term://* lua set_terminal_keymaps()"
        end,
    }
}
