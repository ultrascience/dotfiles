vim.api.nvim_set_keymap('n', '<F1>', '', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<F1>', ':Cheatsheet <CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<F2>', '', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<F2>', ':cd ~/Github/notes/ | :Telescope live_grep <CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<F3>', '', {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<F3>', ':ToggleTerm<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<F5>', "ggVG:SnipRun<CR>",
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<F10>', ":lua require'dap'.step_over()<CR>",
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<F11>', ":lua require'dap'.step_into()<CR>",
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<F12>', ":lua require'dap'.step_out()<CR>",
                        {noremap = true, silent = false})
