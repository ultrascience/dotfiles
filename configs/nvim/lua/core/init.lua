local M = {}

M.load_options = function()
    local opt = vim.opt

    local default_options = {
        backup = false,
        clipboard = "unnamedplus", -- clipboard type
        cmdheight = 2, -- more space in te neovim command line for displaying messages
        colorcolumn = "99999", -- fixes indentline for now
        completeopt = {"menuone", "noselect"},
        conceallevel = 0, -- so that `` is visible in markdown files
        fileencoding = "utf-8", -- the encoding written to a file
        foldmethod = "expr", -- fold by indentation
        foldexpr = "nvim_treesitter#foldexpr()", -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
        guifont = "Fira Code:h10", -- font for the gui
        hidden = true, -- required to keep multiple buffers and open multiple buffers
        hlsearch = true, -- highlight all matches on previous search pattern
        incsearch = true, -- highlight the current match
        ignorecase = true, -- ignore case in search patterns
        mouse = "a", -- allow the mouse to be used in neovim
        pumheight = 20, -- pop up menu height
        showmode = false, -- we don't need to see things like -- INSERT -- anymore
        showtabline = 2, -- always show tabs
        smartcase = true, -- smart case
        smartindent = true, -- make indenting smarter again
        splitbelow = true, -- force all horizontal splits to go below current window
        splitright = true, -- force all vertical splits to go to the right of current window
        swapfile = false, -- creates a swapfile
        termguicolors = true, -- set term gui colors (most terminals support this)
        timeoutlen = 400, -- time to wait for a mapped sequence to complete (in milliseconds)
        title = true, -- set the title of window to the value of the titlestring
        undofile = true, -- enable persistent undo
        updatetime = 300, -- faster completion
        writebackup = true, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
        expandtab = true, -- convert tabs to spaces
        shiftwidth = 2, -- the number of spaces inserted for each indentation
        tabstop = 2, -- insert 2 spaces for a tab
        cursorline = true, -- highlight the current line
        number = true, -- set numbered lines
        relativenumber = false, -- set relative numbered lines
        numberwidth = 4, -- set number column width to 2 {default 4}
        signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
        wrap = false, -- display lines as one long line
        spell = true,
        spelllang = "en",
        scrolloff = 8, -- is one of my fav
        sidescrolloff = 8,
        scrolljump = 2

    } ---  VIM ONLY COMMANDS  ---cmd "filetype plugin on"cmd('let &titleold="' .. TERMINAL .. '"')cmd "set inccommand=split"cmd "set iskeyword+=-"

    ---  SETTINGS  ---

    opt.shortmess:append "c"

    for k, v in pairs(default_options) do vim.opt[k] = v end
    vim.g.mapleader = "\\"
end

return M
