require("colorizer").setup()
require("nvim-autopairs").setup({})
require("lsp_signature").setup()
require("hop").setup()
require("Comment").setup()
require("todo-comments").setup()
require("gitsigns").setup()
require("telescope").load_extension("ultisnips")

vim.cmd([[let g:vimtex_view_method = 'zathura']])
vim.cmd([[ autocmd FileType tex,latex nnoremap <buffer> <F5> <esc>:VimtexCompile<CR> ]])

vim.cmd([[let g:UltiSnipsSnippetDirectories=["UltiSnips", "plantillas"] ]])
