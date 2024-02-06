return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        'nvim-telescope/telescope-fzf-native.nvim', build = 'make',
    },
    config = function()
        require("telescope").setup({
            defaults = {
                --layout_strategy = "horizontal",
                layout_strategy = "vertical",
                layout_config = { 
                    --...
                },
                --probably want to set sorting_stratgey to ascending
                -- with this aswell
                --promp_position = "top",
            },
            pickers = {
                --find_files = {
                --    theme = "dropdown",
                --},
                --buffers = {
                --    theme = "dropdown",
                --},
            },
        })
        require('telescope').load_extension('fzf')
    end
}
