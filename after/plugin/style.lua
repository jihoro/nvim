vim.api.nvim_create_autocmd("ColorScheme", {
    pattern = "*",
    callback = function()
        vim.api.nvim_set_hl(0, "VertSplit", {
            fg = "#ffffff",
            bg = "#000000",
            bold = false,
            sp = nil,
            ctermfg = 15,
            ctermbg = 0,
        })
    end,
})
