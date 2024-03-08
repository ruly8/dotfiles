-- rebind going to normal mode in :term
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
--vim.api.nvim_create_user_command("Term", "split | terminal", {})
vim.api.nvim_create_user_command("Term", "split | terminal <args>", { nargs = "*" })
