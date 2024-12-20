return {
    "neovim/nvim-lspconfig",
    dependencies = {
        'saghen/blink.cmp',
        {
            "folke/lazydev.nvim",
            ft = "lua", -- only load on lua files
            opts = {
                library = {
                    -- See the configuration section for more details
                    -- Load luvit types when the `vim.uv` word is found
                    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                },
            },
        },
    },
    config = function()
        local capabilities = require('blink.cmp').get_lsp_capabilities()
        require("lspconfig").lua_ls.setup { capabilties = capabilities }
        require 'lspconfig'.gopls.setup {capabilities = capabilities}
        require 'lspconfig'.ts_ls.setup {capabilities = capabilities}
        require 'lspconfig'.helm_ls.setup {capabilities = capabilities}
        require 'lspconfig'.yamlls.setup {capabilities = capabilities}
        require 'lspconfig'.terraformls.setup {capabilities = capabilities}

        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(args)
                local client = vim.lsp.get_client_by_id(args.data.client_id)
                if not client then return end
                -- if client:supports_method('textDocument/implementation', 0) then
                --   -- Create a keymap for vim.lsp.buf.implementation
                -- end
                --
                -- if client:supports_method('textDocument/completion') then
                --   -- Enable auto-completion
                --   vim.lsp.completion.enable(true, client.id, args.buf, {autotrigger = true})
                -- end

                if client:supports_method('textDocument/formatting') then
                    -- Format the current buffer on save
                    vim.api.nvim_create_autocmd('BufWritePre', {
                        buffer = args.buf,
                        callback = function()
                            vim.lsp.buf.format({ bufnr = args.buf, id = client.id })
                        end,
                    })
                end
            end,
        })
    end,
}
