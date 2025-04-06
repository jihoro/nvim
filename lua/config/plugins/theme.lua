return {
    {
        "RRethy/base16-nvim",
        config = function()
            vim.cmd("colorscheme base16-black-metal-burzum")
            vim.cmd [[
            highlight Normal guibg=NONE ctermbg=NONE
            highlight NormalNC guibg=NONE ctermbg=NONE
            ]]
        end
    }
    -- {
    -- 'shaunsingh/nord.nvim',
    -- config = function()
    --     vim.g.nord_disable_background = true
    --     vim.cmd("colorscheme nord")
    -- end
    -- }
}
