-- vim.api
--     .nvim_set_keymap('n', '<BS>', '`.', {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<C-Right>', '<C-w>l',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<C-Left>', '<C-w>h',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<C-Up>', '<C-w>k',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<C-Down>', '<C-w>j',
                        {noremap = true, silent = false})

