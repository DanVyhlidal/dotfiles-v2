local opt = vim.opt

opt.number = true -- Print the line number in front of each line
opt.relativenumber = true -- Show the line number relative to the line with the cursor in front of each line.

opt.title = true -- When on, the title of the window will be set to the value of 'titlestring'

opt.clipboard = "unnamedplus" -- uses the clipboard register for all operations except yank.
opt.syntax = "on" -- When this option is set, the syntax with this name is loaded.
opt.autoindent = true -- Copy indent from current line when starting a new line.
opt.cursorline = false -- Highlight the screen line of the cursor with CursorLine.
opt.expandtab = true -- In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
opt.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent.
opt.tabstop = 2 -- Number of spaces that a <Tab> in the file counts for.
opt.encoding = "utf-8" -- Sets the character encoding used inside Vim.
opt.fileencoding = "utf-8" -- Sets the character encoding for the file of this buffer.
opt.ruler = false -- Show the line and column number of the cursor position, separated by a comma.
opt.mouse = "a" -- Enable the use of the mouse. "a" you can use on all modes
opt.hidden = true -- When on a buffer becomes hidden when it is |abandon|ed
opt.ttimeoutlen = 0 -- The time in milliseconds that is waited for a key code or mapped key sequence to complete.
opt.wildmenu = true -- When 'wildmenu' is on, command-line completion operates in an enhanced mode.
opt.showcmd = false -- Show (partial) command in the last line of the screen. Set this option off if your terminal is slow.
opt.showmatch = false -- When a bracket is inserted, briefly jump to the matching one.
opt.inccommand = "split" -- When nonempty, shows the effects of :substitute, :smagic, :snomagic and user commands with the :command-preview flag as you type.

opt.ignorecase = true -- ignore case when searching
opt.smartcase = false -- if you include mixed case in your search, assumes you want case-sensitive
