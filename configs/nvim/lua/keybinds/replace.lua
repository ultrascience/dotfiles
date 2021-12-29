
vim.api.nvim_set_keymap('n', 'r', '',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'r', ':%s/\\<<C-r><C-w>\\>//g<Left><Left>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'R', '',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'R', ':s/\\<<C-r><C-w>\\>//g<Left><Left>',
                        {noremap = true, silent = false})
