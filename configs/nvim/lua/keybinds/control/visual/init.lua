-- Copiamos al portapapeles
vim.api.nvim_set_keymap("v", "<c-c>", '"+y<esc>', { noremap = true, silent = true })
