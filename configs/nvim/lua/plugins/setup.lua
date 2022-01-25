require'colorizer'.setup()
require('nvim-autopairs').setup {}
require "lsp_signature".setup()
require'hop'.setup()
vim.opt.list = true
vim.opt.listchars:append("space:⋅")
vim.opt.listchars:append("eol:↴")
require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
require('Comment').setup()
require("todo-comments").setup()

vim.cmd([[let g:indent_blankline_filetype_exclude = ['help','alpha'] ]])

vim.cmd([[let g:vimtex_view_method = 'zathura']])
vim.cmd(
    [[ autocmd FileType tex,latex nnoremap <buffer> <F5> <esc>:VimtexCompile<CR> ]])

vim.cmd([[ let g:vimwiki_list = [{'path': '~/Github/notes/',
                      \ 'syntax': 'markdown', 'ext': '.md'}] ]])

local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
    "                                                     ",
}

-- Set menu
dashboard.section.buttons.val = {
    dashboard.button( "n", " Notes" , ":cd ~/Github/notes/ | :e index.md <CR>" ),
    dashboard.button( "c", "ﯤ Project" , ":cd ~/Github/current/ | :e README.md<CR>" ),
    dashboard.button( "d", " Dotfiles" , ":cd ~/Github/dotfiles | :e README.md <CR>" ),
    dashboard.button( "f", " Find file ", ":cd $HOME/Github | Telescope find_files<CR>"),
    dashboard.button( "r", " Recent"   , ":Telescope oldfiles<CR>"),
    dashboard.button( "s", " Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
    dashboard.button( "q", " Quit NVIM", ":qa<CR>"),

}
-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])
