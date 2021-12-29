
-- Insertion Mode keybindings
vim.api.nvim_set_keymap('i', '<c-a>', '<esc>ggVG',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('i', '<c-v>', '<esc>"+pi',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {noremap = true, silent = true})

