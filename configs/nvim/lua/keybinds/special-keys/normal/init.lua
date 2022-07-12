keys = {}
keys["<End>"] = ""
keys["<End>"] = ":wq<CR>"
keys["<Insert>"] = ""
keys["<Insert>"] = "ggVGy<CR>"
keys["<Bar>"] = ":FormatWrite<CR>"
keys["<PageUp>"] = ":BufferPrevious<CR>"
keys["<PageDown>"] = ":BufferNext<CR>"
keys["<Home>"] = ":TroubleToggle<CR>"
keys["<BS>"] = ""
keys["<BS>"] = "ggVGx"
keys["<Del>"] = ""
keys["<Del>"] = "ggVGs"

for k, v in pairs(keys) do
	vim.api.nvim_set_keymap("n", k, v, { noremap = true, silent = false })
end
