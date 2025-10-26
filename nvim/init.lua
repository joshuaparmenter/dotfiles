vim.opt.termguicolors = true

vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldlevelstart = 99  -- Popular choice: top-level open, nested closed
--vim.opt.foldlevel = 99
--vim.opt.foldcolumn = "0"      -- Most people disable the fold column
--vim.opt.foldtext = ""         -- Empty foldtext for syntax highlighting (Neovim 0.10+)

require("config.lazy")           -- This should contain lazy.setup("plugins")
require("lsp")

vim.cmd.colorscheme("catppuccin")

