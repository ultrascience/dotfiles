keys = {}
keys["<c-a>"] = "<esc>ggVG"
keys["<c-v>"] = '<esc>"+pi'
keys["<c-s>"] = "<esc>:w<CR>i"
keys["<c-Q>"] = "<esc>:q!<CR>i"
keys["<c-q>"] = "<esc>:q<CR>i"
keys["<C-k>"] = "<esc>:lua vim.lsp.buf.signature_help()<CR>i"

for k, v in pairs(keys) do
	vim.api.nvim_set_keymap("i", k, v, { noremap = true, silent = false })
end
