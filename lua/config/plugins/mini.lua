return {
    'echasnovski/mini.nvim',
    enabled = false,
    config = function()
        local statusline = require("mini.statusline")
        statusline.setup({})
    end,
}
