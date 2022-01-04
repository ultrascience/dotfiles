-- Copiamos al portapapeles
vim.api.nvim_set_keymap('v', '<c-c>', '"+y<esc>i',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', 's', '',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', 's', ':%sort<CR>i',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', 'a',
                        '',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', 'a',
                        ':<C-U>Lspsaga range_code_action<CR>',
                        {noremap = true, silent = true})
