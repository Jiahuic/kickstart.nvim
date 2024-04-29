-- [[ Setting options ]]
-- See `:help vim.o`, `:help vim.opt` and `:help vim.wo`
-- Example:
-- vim.o.completeopt = 'menuone,noselect'
-- vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
-- NOTE: You can change these options as you wish!

-- Set highlight on search
vim.o.hlsearch = true
-- ignore case in search patterns
vim.opt.ignorecase = true

-- Make line numbers default
vim.wo.number = true
-- vim.opt.number = true                           -- set numbered lines

-- Enable mouse mode
-- allow the mouse to be used in neovim "a": all, "n": normal, "nvi": defualt
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.o.clipboard = 'unnamedplus'

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- creates a backup file
vim.opt.backup = false

-- set relative numbered lines
vim.opt.relativenumber = true

-- Create an autocmd to restore cursor position when opening a file
vim.cmd([[
augroup RestoreCursorPosition
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END
]])

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()

  end,
  group = highlight_group,
  pattern = '*',
})

-- [[ Indentation & tabs ]]
-- Enable break indent
vim.o.breakindent = true
-- -- always show tabs
-- vim.opt.showtabline = 0 -- conflict with bufferline
-- convert tabs to spaces
vim.opt.expandtab = true
-- insert 4 spaces for a tab
vim.opt.tabstop = 4
-- the number of spaces inserted for each indentation
vim.opt.shiftwidth = 4
-- make indenting smarter again
vim.opt.smartindent = true

vim.opt.spelllang = "en_us"
vim.opt.spell = true

-- vim.opt.cmdheight = 1                           -- more space in the neovim command line for displaying messages
-- vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
-- vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
-- vim.opt.ignorecase = true                       -- ignore case in search patterns
-- vim.opt.pumheight = 10                          -- pop up menu height
-- vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
-- vim.opt.smartcase = true                        -- smart case
-- vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
-- vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
-- vim.opt.swapfile = false                        -- creates a swapfile
-- vim.opt.termguicolors = false                   -- set term gui colors (most terminals support this)
-- vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
-- vim.opt.undofile = true                         -- enable persistent undo
-- vim.opt.updatetime = 300                        -- faster completion (4000ms default)
-- vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
-- vim.opt.cursorline = false                      -- highlight the current line
-- vim.opt.laststatus = 3
-- vim.opt.showcmd = false
-- vim.opt.ruler = false
-- vim.opt.numberwidth = 4                         -- set number column width to 4 {default 4}
--vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
-- vim.opt.wrap = false                            -- display lines as one long line
-- vim.opt.scrolloff = 8                           -- is one of my fav
-- vim.opt.sidescrolloff = 8
-- vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications
-- vim.opt.fillchars.eob=" "
-- vim.opt.shortmess:append "c"
-- vim.opt.whichwrap:append("<,>,[,],h,l")
-- vim.opt.iskeyword:append("-")
