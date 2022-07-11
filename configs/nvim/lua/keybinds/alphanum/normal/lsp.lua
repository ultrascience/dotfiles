vim.api.nvim_set_keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>", { noremap = true, silent = false })
