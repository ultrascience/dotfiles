vim.api.nvim_set_keymap('n', '-1', ':HopChar1<CR>',
                        {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '-2', ':HopChar2<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '-l', ':HopLine<CR>',
                        {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '-a', ':HopPatternAC<CR>',
                        {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '-b', ':HopPatternBC<CR>',
                        {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '-p', ':HopPattern<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '-w', ':HopWord<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '--', ':HopWordCurrentLine<CR>',
                        {noremap = true, silent = false})
