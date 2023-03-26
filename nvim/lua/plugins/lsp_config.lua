require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"clangd"},
    sumneko_lua = {
        settings = {
            Lua = {
                diagnostics = {
                    globals = {"vim"}
                }
            }
        }
    }
})
