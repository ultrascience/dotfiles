vim.api.nvim_set_keymap('n', '<space>rc', ':s/\\<<C-r><C-w>\\>//g<Left><Left>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<space>rg', ':%s/\\<<C-r><C-w>\\>//g<Left><Left>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<BS>f', 'vfod',
                        {noremap = false, silent = false})

