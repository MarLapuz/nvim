local opt = vim.opt -- for conciseness

opt.title = true
opt.hlsearch = false
opt.backup = false
opt.cmdheight = 1
opt.laststatus = 2
opt.scrolloff = 10
opt.inccommand = "split"
opt.smarttab = true
opt.breakindent = true
opt.ai = true -- Auto indent
opt.si = true -- Smart indent
opt.path:append({ "**" }) -- Finding file - Search down into subfolder
opt.wildignore:append({ "*/node_modules/*" })

-- line numbers
opt.relativenumber = true -- show relative line numbers
opt.number = true -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = false -- disable line wrapping

-- disable backup
opt.swapfile = false
opt.backup = false
opt.undofile = true

-- fast udpate time
opt.updatetime = 50

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance

-- turn on termguicolors for nightfly colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

opt.winblend = 0
opt.wildoptions = "pum"
opt.pumblend = 5
opt.background = "dark"

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

opt.iskeyword:append("-") -- consider string-string as whole word

-- remove `~` on empty spaces
opt.fillchars = { eob = " " }
