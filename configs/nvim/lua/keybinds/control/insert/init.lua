-- Insertion Mode keybindings
vim.api.nvim_set_keymap("i", "<c-a>", "<esc>ggVG", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<c-v>", '<esc>"+pi', { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<c-s>", "<esc>:w<CR>i", { noremap = true, silent = false })

vim.api.nvim_set_keymap("i", "<c-Q>", "<esc>:q!<CR>i", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<c-q>", "<esc>:q<CR>i", { noremap = true, silent = true })

vim.api.nvim_set_keymap("i", "<C-k>", "<esc>:lua vim.lsp.buf.signature_help()<CR>i", { noremap = true, silent = false })
