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
                        'lsp_range_code_actions',
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', 't', ':%!column -t<CR>',
                        {noremap = true, silent = true})

-- Replace the visual selection with the selected text
vim.api.nvim_set_keymap('v', 'r', '"hy:%s/<C-r>h//gc<left><left><left>',
                        {noremap = true, silent = false})
