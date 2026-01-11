require("nvim-treesitter.configs").setup({
    ensure_installed = {
        "java",
        "typescript",
        "tsx",
        "sql",
        "json",
        "html",
        "css",
    },
    highlight = {
        enable = true
    }
})
