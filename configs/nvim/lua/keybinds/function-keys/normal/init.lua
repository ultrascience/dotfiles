keys["<F1>"] = ""
keys["<F1>"] = ":Telescope ultisnips<CR>"

keys["<F2>"] = ""
keys["<F2>"] = ":Telekasten panel<CR>"

keys["<F3>"] = ""
keys["<F3>"] = ":Telekasten search_notes<CR>"

keys["<F4>"] = ""
keys["<F4>"] = ":Telekasten follow_link<CR>"

keys["<F5>"] = "ggVG:SnipRun<CR>"

for k, v in pairs(keys) do
	vim.api.nvim_set_keymap("n", k, v, { noremap = true, silent = false })
end
