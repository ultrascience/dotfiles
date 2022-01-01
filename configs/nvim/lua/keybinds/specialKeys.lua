
vim.api.nvim_set_keymap('n', '<c-s>', ':w<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<c-Q>', ':q<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<c-q>', ':q<CR>',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', '<End>', '',
                        {noremap = true, silent = false})
vim.api.nvim_set_keymap('n', '<End>', ':wq<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<Insert>', '',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<Insert>', 'ggVGy<CR>',
                        {noremap = true, silent = false})

-- vim.api.nvim_set_keymap('n', '<Bar>', ':Neoformat<CR>',
--                         {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<PageUp>', ':BufferPrevious<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<PageDown>', ':BufferNext<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<Home>', ':TroubleToggle<CR>',
                        {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<Del>', '', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Del>', 'ggVGx', {noremap = true, silent = true})

