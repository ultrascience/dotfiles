vim.api.nvim_set_keymap('n', '<space>t', ':Telescope lsp_definitions<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<space>i', ':Telescope lsp_implementations<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<space>u', ':Telescope lsp_references<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<space>e', ':Telescope diagnostics<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<space>y', ':Telescope lsp_document_symbols<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', 'a', '',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', 'a', ':Telescope lsp_code_actions<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<space>m', ':Telescope marks<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<space>c', ':Telescope command_history<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<space>h', ':Telescope search_history<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<space>t', ':Telescope treesitter<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<space>b', ':Telescope buffers<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<space>g', ':Telescope git',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<space>w', ':Telescope live_grep<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<space>f', ':RnvimrToggle<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<space>j', ':Telescope jumplist<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<space>k', ':Telescope keymaps<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 't', '', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 't', ':Telescope git_files<CR>',

                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'h', '', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', 'h', ':Telescope man_pages<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'l', '', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'l', ':LazyGit<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<space>v', ':vsplit ',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<space>s', ':split ',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<space>o', ':on<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<space>1', 'V}:normal @q<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<space>n', ':vsplit | :TroubleToggle<CR>',
                        {noremap = true, silent = false})
