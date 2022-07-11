require("keybinds.control.normal.windowMotion")

vim.api.nvim_set_keymap("n", "<c-s>", ":w<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<c-Q>", ":q!<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<c-q>", ":q<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", { noremap = true, silent = false })
