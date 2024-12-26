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
        end,
    }
}
