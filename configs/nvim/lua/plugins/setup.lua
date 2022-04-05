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
require("null-ls").setup({
    sources = {
        require("null-ls").builtins.formatting.stylua,
        require("null-ls").builtins.formatting.eslint,
        require("null-ls").builtins.diagnostics.eslint,
        require("null-ls").builtins.code_actions.eslint,
        require("null-ls").builtins.completion.spell
    },
})
require'marks'.setup {
  -- whether to map keybinds or not. default true
  default_mappings = true,
  -- which builtin marks to show. default {}
  builtin_marks = { ".", "<", ">", "^" },
  -- whether movements cycle back to the beginning/end of buffer. default true
  cyclic = true,
  -- whether the shada file is updated after modifying uppercase marks. default false
  force_write_shada = false,
  -- how often (in ms) to redraw signs/recompute mark positions. 
  -- higher values will have better performance but may cause visual lag, 
  -- while lower values may cause performance penalties. default 150.
  refresh_interval = 250,
  -- sign priorities for each type of mark - builtin marks, uppercase marks, lowercase
  -- marks, and bookmarks.
  -- can be either a table with all/none of the keys, or a single number, in which case
  -- the priority applies to all marks.
  -- default 10.
  sign_priority = { lower=10, upper=15, builtin=8, bookmark=20 },
  -- disables mark tracking for specific filetypes. default {}
  excluded_filetypes = {},
  -- marks.nvim allows you to configure up to 10 bookmark groups, each with its own
  -- sign/virttext. Bookmarks can be used to group together positions and quickly move
  -- across multiple buffers. default sign is '!@#$%^&*()' (from 0 to 9), and
  -- default virt_text is "".
  bookmark_0 = {
    sign = "⚑",
    virt_text = "hello world"
  },
  mappings = {}
}

vim.cmd([[let g:indent_blankline_filetype_exclude = ['help','alpha'] ]])

vim.cmd([[let g:vimtex_view_method = 'zathura']])
vim.cmd(
    [[ autocmd FileType tex,latex nnoremap <buffer> <F5> <esc>:VimtexCompile<CR> ]])

vim.cmd([[ let g:vimwiki_list = [{'path': '~/Github/notes/',
                      \ 'syntax': 'markdown', 'ext': '.md'}] ]])

vim.cmd([[let g:UltiSnipsSnippetDirectories=["UltiSnips", "plantillas"] ]] )

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
