return {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                suggestion = {
                    enabled = true,
                    auto_trigger = true,
                    hide_during_completion = true,
                    keymap = {
                        accept = "<leader><Tab>",
                    },
                },
                panel = { enabled = false },
            })
        end,
    },
    {
        "giuxtaposition/blink-cmp-copilot",
    }
}
