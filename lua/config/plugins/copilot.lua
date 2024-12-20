return {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                suggestion = {
                    enabled = false,
                    auto_trigger = true,
                    -- keymap = {
                    --     accept = "<tab>",
                    -- },
                },
                panel = { enabled = false },
            })
        end,
    },
    {
        "giuxtaposition/blink-cmp-copilot",
    }
}
