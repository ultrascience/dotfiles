vim.api.nvim_set_keymap('n', 'x', '',
                        {noremap = false, silent = false})

vim.api.nvim_set_keymap('n', 'x1', ':HopChar1<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'x2', ':HopChar2<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'xl', ':HopLine<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'xb', ':HopPatternBC<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'xa', ':HopPatternAC<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'xw', ':HopWord<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'xwa', ':HopWordAC<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'xwb', ':HopWordBC<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'ñ', 'vfogccxP',
                        {noremap = false, silent = false})

vim.api.nvim_set_keymap('n', 'xc', ':HopWordCurrentLine<CR>',
                        {noremap = false, silent = false})
