vim.api.nvim_set_keymap('n', '<c-s>', ':w<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<c-Q>', ':q!<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<c-q>', ':q<CR>',
                        {noremap = true, silent = true})
