vim.api.nvim_set_keymap('n', '<space>v', ':vsplit ',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<space>h', ':split ',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<space>o', ':on<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<space>zm', ':mkview<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<space>zl', ':loadview<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<space>z', ':set foldmethod=syntax<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<space>1', 'V}:normal @q<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<space>n', ':vsplit | :split | :vsplit | :TroubleToggle<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<space>x', 'ci"',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<space>X', "ci'",
                        {noremap = true, silent = false})
