vim.api.nvim_set_keymap('n', '<leader>a', '<cmd>lua vim.lsp.buf.code_action()<CR>',{noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<Bar>', '<cmd>lua vim.lsp.buf.formatting()<CR>',{noremap = true, silent = false})

vim.api.nvim_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>',{noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<leader>i', '<cmd>lua vim.lsp.buf.implementation()<CR>',{noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<leader>d', '<cmd>lua vim.lsp.buf.definition()<CR>',{noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<leader>D', '<cmd>lua vim.lsp.buf.declaration()<CR>',{noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>',{noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>',{noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<leader>rf', '<cmd>lua vim.lsp.buf.references()<CR>',{noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<leader>t', '<cmd>lua vim.lsp.buf.type_definition()<CR>',{noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>',{noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '[e', '<cmd>lua vim.diagnostic.goto_prev()<CR>',{noremap = true, silent = false})
vim.api.nvim_set_keymap('n', ']e', '<cmd>lua vim.diagnostic.goto_next()<CR>',{noremap = true, silent = false})




