-- vim.api.nvim_set_keymap('n', '<CR>1', ':HopChar1<CR>',
vim.api.nvim_set_keymap('n', '<CR>1', ':HopChar1<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<CR>2', ':HopChar2<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<CR>l', ':HopLine<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<CR>a', ':HopPatternAC<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<CR>b', ':HopPatternBC<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<CR>p', ':HopPattern<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<CR>w', ':HopWord<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<CR>a', ':HopWordCurrentLine<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'ñ', 'vfogccxP',
                        {noremap = false, silent = false})
