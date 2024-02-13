local yank_filename = function()
    local entry = require("telescope.actions.state").get_selected_entry()
    local cb_opts = vim.opt.clipboard:get()
    if vim.tbl_contains(cb_opts, "unnamed") then vim.fn.setreg("*", entry.filename) end
    if vim.tbl_contains(cb_opts, "unnamedplus") then
        vim.fn.setreg("+", entry.filename)
    end
    vim.fn.setreg("", entry.filename)
end

return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        'nvim-telescope/telescope-fzf-native.nvim', build = 'make',
    },
    config = function()
        require("telescope").setup({
            defaults = {
                layout_strategy = "vertical",
                layout_config = { 
                    --...
                },
            },
            pickers = {
                live_grep = {
                    mappings = {
                        i = { ["<C-y>"] = yank_filename },
                    },
                },
                find_files = {
                    mappings = {
                        i = { ["<C-y>"] = yank_filename },
                    },
                },
            },
        })
        require('telescope').load_extension('fzf')
    end
}
