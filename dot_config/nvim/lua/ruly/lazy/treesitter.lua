return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "vimdoc", "lua", "markdown", "markdown_inline", "bash", "python",
            },

            sync_install = false,
            --may require tree-sitter CLI to set to true
            auto_install = false,
           
            indent = {
                enable = true
            },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { "markdown" },
            },
        })
    end
}
