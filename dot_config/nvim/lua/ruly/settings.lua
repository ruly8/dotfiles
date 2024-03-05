--local HOME = os.getenv("HOME")

-- folding
-- tree-sitter sometimes doesnt load folds?
-- :e or zx to fix?
-- otherwise works pretty well
vim.opt.foldmethod="expr"
vim.opt.foldexpr="nvim_treesitter#foldexpr()"
vim.opt.foldlevel=10

-- concealing
vim.opt.conceallevel=0

-- basics
vim.opt.encoding = "utf-8"
vim.opt.termguicolors = true
--vim.opt.guicursor = ""
vim.opt.mouse = "a"
vim.opt.wrap = false

-- history
vim.opt.backspace = "indent,eol,start"
vim.opt.history = 1000

-- line numbers
vim.opt.nu = true
vim.opt.relativenumber = true


-- white space
vim.opt.list = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
--vim.opt.autoindent = true
vim.opt.formatoptions = "jcroqln1" -- default: jcroql (:lua print(vim.o.form..))
--vim.opt.breakindent = true

-- file clutter
vim.opt.swapfile = false
vim.opt.backup = false
--monitor for size
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true


-- searching
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true


--idk
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
--vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
