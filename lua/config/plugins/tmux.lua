return {
    "christoomey/vim-tmux-navigator",
    opts = {
        disable_keybindings = true, -- Disable default keybindings
    },
    config = function()
        -- Manually re-enable desired keybindings except for <C-\>
        vim.keymap.set("n", "<C-h>", "<cmd>TmuxNavigateLeft<CR>")
        vim.keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<CR>")
        vim.keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<CR>")
        vim.keymap.set("n", "<C-l>", "<cmd>TmuxNavigateRight<CR>")
    end,
    -- cmd = {
    --     "TmuxNavigateLeft",
    --     "TmuxNavigateDown",
    --     "TmuxNavigateUp",
    --     "TmuxNavigateRight",
    -- },
    -- keys = {
    --     { "<c-h>", "<cmd>TmuxNavigateLeft<cr>" },
    --     { "<c-j>", "<cmd>TmuxNavigateDown<cr>" },
    --     { "<c-k>", "<cmd>TmuxNavigateUp<cr>" },
    --     { "<c-l>", "<cmd>TmuxNavigateRight<cr>" },
    --     { ""
    -- },
}
