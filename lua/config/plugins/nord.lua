return {
    -- 'shaunsingh/nord.nvim',
    -- config = function()
    --     vim.g.nord_disable_background = true
    --     vim.cmd("colorscheme nord")
    -- end
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("cyberdream").setup({
            transparent = true,
        })
        vim.cmd("colorscheme cyberdream")
    end
}
