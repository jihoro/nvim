return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    -- or                              , branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
    },
    config = function()
        require('telescope').setup {
            pickers = {
                find_files = {
                    theme = "dropdown",
                },
                live_grep = {
                    theme = "dropdown",
                },
            },
        }
        local builtin = require('telescope.builtin')
        vim.keymap.set("n", "<leader>pf", builtin.find_files)
        vim.keymap.set("n", "<leader>fh", builtin.help_tags)
        vim.keymap.set('n', '<leader>ps', builtin.live_grep)
        vim.keymap.set("n", "<leader>gr", builtin.lsp_references)
    end
}
