return {
    {
        "RRethy/base16-nvim",
        config = function()
            vim.cmd("colorscheme base16-black-metal")
            vim.cmd [[
                highlight Normal guibg=NONE ctermbg=NONE
                highlight NormalNC guibg=NONE ctermbg=NONE
                highlight StatusLine guibg=NONE
                highlight StatusLineNC guibg=NONE guifg=NONE
            ]]
        end
    },
}
