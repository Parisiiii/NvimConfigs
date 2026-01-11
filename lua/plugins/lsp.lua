local lspconfig = require("lspconfig")
local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
    handlers = {

        -- handler padrão para todos os LSPs
        function(server_name)
            lspconfig[server_name].setup({})
        end,

        -- handler específico para Java
        ["jdtls"] = function()
            lspconfig.jdtls.setup({
                root_dir = lspconfig.util.root_pattern(
                    "pom.xml",
                    "build.gradle",
                    ".git"
                ),
                cmd_env = {
                    JAVA_HOME = "/home/parisi/.sdkman/candidates/java/23.0.1-oracle",
                },
            })
        end,
    }
})
