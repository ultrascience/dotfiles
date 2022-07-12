require("keybinds.control.normal.windowMotion")

keys = {}
keys["<c-s>"] = ":w<CR>"
keys["<c-Q>"] = ":q!<CR>"
keys["<c-q>"] = ":q<CR>"
keys["<C-k>"] = "<cmd>lua vim.lsp.buf.signature_help()<CR>"

for k, v in pairs(keys) do
	vim.api.nvim_set_keymap("n", k, v, { noremap = true, silent = false })
end
