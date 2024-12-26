return {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
        -- add any options here
    },
    dependencies = {
        'MunifTanjim/nui.nvim',
    },
    config = function()
        require('noice').setup({

        })
        -- vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })
    end,

}
