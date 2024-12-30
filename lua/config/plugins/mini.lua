return {
    'echasnovski/mini.nvim',
    config = function()
        local statusline = require("mini.statusline")
        statusline.setup({})

        local animate = require("mini.animate")
        animate.setup({})
    end,
}
