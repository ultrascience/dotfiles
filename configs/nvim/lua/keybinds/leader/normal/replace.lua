vim.api.nvim_set_keymap("n", "<leader>c", ":s/\\<<C-r><C-w>\\>//g<Left><Left>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<leader>g", ":%s/\\<<C-r><C-w>\\>//g<Left><Left>", { noremap = true, silent = false })
