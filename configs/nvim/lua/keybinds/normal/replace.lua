
vim.api.nvim_set_keymap('n', 'r', '',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'r', ':%s/\\<<C-r><C-w>\\>//g<Left><Left>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'R', '',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'r', ':s/\\<<C-r><C-w>\\>//g<Left><Left>',
                        {noremap = true, silent = false})

-- Reemplaza la seleccion visual
vim.api.nvim_set_keymap('v', 'r', '"hy:%s/<C-r>h//gc<left><left><left>',
                        {noremap = true, silent = false})
