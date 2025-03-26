-- Line Numbers (settings for displaying line numbers)
vim.opt.number = true         -- Show absolute line numbers.
vim.opt.relativenumber = true -- Show relative line numbers.

-- Window Options (local to the current window)
vim.wo.number = true         -- Display absolute line numbers in the current window.
vim.wo.relativenumber = true -- Display relative line numbers in the current window.
vim.wo.signcolumn = "yes"    -- Always show the sign column (e.g., for diagnostics, breakpoints).
vim.wo.linebreak = true      -- Wrap lines at word boundaries instead of cutting words.

-- Filetype and Formatting
vim.g.did_load_filetypes = 1 -- Skip the default filetype loading for faster startup.
vim.g.formatoptions = "qrn1" -- Set format options for auto-wrapping and other behaviors.

-- Update and Mode Settings
vim.opt.showmode = false -- Do not show the current mode (like --INSERT--).
vim.opt.updatetime = 100 -- Faster updates for diagnostic messages and other events (ms).

-- Scrolling
vim.opt.scrolloff = 8 -- Minimum number of lines above/below the cursor.
vim.opt.wrap = false  -- Disable line wrapping.

-- Cursor and Editing
vim.opt.virtualedit = "block" -- Allow the cursor to move anywhere in visual block mode.
vim.opt.undofile = true       -- Enable persistent undo (undo changes after reopening the file).
vim.opt.shell = "/bin/zsh"    -- Set the default shell for terminal commands.

-- Mouse Settings
vim.opt.mouse = "a"           -- Enable mouse usage in all modes.
vim.opt.mousefocus = true     -- Automatically focus windows when the mouse hovers over them.
vim.opt.mousemoveevent = true -- Enable mouse move events (useful for plugins).

-- Splits (window behavior)
vim.opt.splitbelow = true -- Horizontal splits open below the current window.
vim.opt.splitright = true -- Vertical splits open to the right of the current window.

-- Clipboard
vim.opt.clipboard = "unnamedplus" -- Use the system clipboard for copy/paste.

-- Messages and Feedback
vim.opt.shortmess:append("c") -- Avoid showing extra completion messages.

-- Indentation Settings
vim.opt.expandtab = true   -- Convert tabs to spaces.
vim.opt.shiftwidth = 4     -- Number of spaces to use for each indentation level.
vim.opt.tabstop = 4        -- Number of spaces that a tab character represents.
vim.opt.softtabstop = 4    -- Number of spaces for a tab in insert mode.
vim.opt.smartindent = true -- Enable intelligent auto-indentation.

-- Fillchars (characters used to fill empty spaces)
vim.opt.fillchars = {
    vert = "│", -- Vertical separator.
    fold = "⠀", -- Empty space in folded lines.
    eob = " ", -- Suppress ~ at EndOfBuffer.
    msgsep = "‾", -- Separator for messages.
    foldopen = "▾", -- Symbol for open folds.
    foldsep = "│", -- Separator for folds.
    foldclose = "▸" -- Symbol for closed folds.
}

-- Colors and GUI
vim.opt.termguicolors = true -- Enable 24-bit color in the terminal.

-- Security and Local Configs
vim.opt.exrc = true   -- Enable local .exrc or .vimrc files.
vim.opt.secure = true -- Disable unsafe commands in local configs.

-- Other Settings
vim.opt.title = true                            -- Enable setting the window title.
vim.opt.spell = true                            -- Enable spell checking.
vim.opt.ignorecase = true                       -- Ignore case when searching.
vim.opt.smartcase = true                        -- Override ignorecase if search contains uppercase letters.
vim.opt.confirm = true                          -- Ask for confirmation instead of erroring on unsaved changes.
vim.opt.writebackup = true                      -- Keep a backup file while editing.
vim.opt.wildmode = "longest:full,full"          -- Command-line completion mode.
vim.opt.completeopt = "menuone,longest,preview" -- Settings for completion behavior.
vim.opt.inccommand = "split"                    -- Show search/replace results incrementally in a split window.
vim.opt.shortmess:append("I")                   -- Disable welcome message

vim.notify = require("notify")
