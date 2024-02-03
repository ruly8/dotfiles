--return {
--    {
--        "ellisonleao/gruvbox.nvim",
--        --priority = 1000,
--        config = function()
--            require("gruvbox").setup({})
--            vim.cmd("colorscheme gruvbox")
--        end
--    },
--}
return {
    {
        "EdenEast/nightfox.nvim",
        config = function()
            require("nightfox").setup({})
            vim.cmd.colorscheme("nordfox")
        end,
    },
}
