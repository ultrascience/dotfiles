keys = {}
keys["<space>l"] = ":Telescope lsp_"
keys["<space>d"] = ":Telescope diagnostics<CR>"
keys["<space>m"] = ":Telescope marks<CR>"
keys["<space>t"] = ":Telescope "
keys["<space>b"] = ":Telescope buffers<CR>"
keys["<space>g"] = ":Telescope git"
keys["<space>w"] = ":Telescope live_grep<CR>"
keys["<space>j"] = ":Telescope jumplist<CR>"
keys["<space>c"] = ":Copilot<CR>"
keys["<space>v"] = ":vsplit<CR>"
keys["<space>s"] = ":split<CR>"
keys["<space>o"] = ":on<CR>"
keys["<space>n"] = ":vsplit | :TroubleToggle<CR>"
keys["ñ"] = ":LazyGit<CR>"
keys["<space>r"] = ":Telescope registers<CR>"

for k, v in pairs(keys) do
	vim.api.nvim_set_keymap("n", k, v, { noremap = true, silent = false })
end
