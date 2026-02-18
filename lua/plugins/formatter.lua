local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
    }
})

vim.keymap.set(
    { "n", "v"}, 
    "<leader>mp", 
    function()
        conform.format({
            lsp_fallback = true,
            aysnc = false,
            timeout_ms = 500,
        })
    end,
    { desc = "Formatar arquivo (no visual mode)" }
)
