return {
    { 
        "zk-org/zk-nvim",
        config = function()
        require("zk").setup({
                --picker = "fzf_lua",
                picker = "telescope", 
                lsp = {
                    config = {
                        cmd = { "zk", "lsp" },
                        name = "zk",
                        on_attach = function()
                            require("cmp_nvim_lsp").default_capabilities()
                        end,
                    },
                    auto_attach = {
                        enabled = true,
                        filetypes = { "markdown" },
                    },
                }
            })
        end
    }
}
