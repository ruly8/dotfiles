return {
    { 
        "zk-org/zk-nvim",
        config = function()
        require("zk").setup({
                picker = "fzf_lua",
                
                lsp = {
                    config = {
                        cmd = { "zk", "lsp" },
                        name = "zk",
                        --on_attach = ...
                        --etc
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
