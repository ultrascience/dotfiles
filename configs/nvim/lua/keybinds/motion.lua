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

vim.api
    .nvim_set_keymap('n', '+<space>', 'f\"', {noremap = true, silent = false})

vim.api
    .nvim_set_keymap('n', '-<space>', 'F\"', {noremap = true, silent = false})

vim.api
    .nvim_set_keymap('n', '<BS>', '`.', {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<C-Right>', '<C-w>l',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<C-Left>', '<C-w>h',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<C-Up>', '<C-w>k',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<C-Down>', '<C-w>j',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'j', '<C-o>',
                        {noremap = true, silent = false})
