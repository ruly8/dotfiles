return {
    {
        "lukas-reineke/headlines.nvim",
        dependencies = "nvim-treesitter/nvim-treesitter",
        --config = true, -- or `opts = {}`
        config = function()
            -- setting colors for headline.nvim, hardcoded for now
            -- figure out a way to generate guibg based on fg
            vim.cmd [[highlight Headline1 guifg=#D08770]]
            vim.cmd [[highlight Headline2 guifg=#EBCB8B]]
            vim.cmd [[highlight Headline3 guifg=#A3BE8C]]
            vim.cmd [[highlight Headline4 guifg=#81A1C1]]
            vim.cmd [[highlight Headline5 guifg=#B48EAD]]
            vim.cmd [[highlight Headline6 guifg=#D8DEE9]]
            require("headlines").setup({
                markdown = {
                    headline_highlights = {
                        "Headline1",
                        "Headline2",
                        "Headline3",
                        "Headline4",
                        --"Headline5",
                        --"Headline6",
                    },
                    bullet_highlights = {},
                    bullets = {},
                    codeblock_highlight = "CodeBlock",
                    dash_highlight = "Dash",
                    quote_highlight = "Quote",
                    --fat_headline_upper_string = "▃",
                    --fat_headline_lower_string = "🬂",
                    fat_headlines = false,
                },
            })
        end
    },
}
--#477292
--#493537
--#450610
--#430287
--#460627
--#482262
