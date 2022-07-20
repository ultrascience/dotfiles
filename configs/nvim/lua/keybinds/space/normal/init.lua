keys = {}
keys["<space>b"] = ":Telescope buffers<CR>"
keys["<space>c"] = ":Copilot<CR>"
keys["<space>d"] = ":Telescope diagnostics<CR>"
keys["<space>g"] = ":Telescope git"
keys["<space>j"] = ":Telescope jumplist<CR>"
keys["<space>l"] = ":Telescope lsp_"
keys["<space>m"] = ":Telescope marks<CR>"
keys["<space>n"] = ":vsplit | :TroubleToggle<CR>"
keys["<space>o"] = ":on<CR>"
keys["<space>r"] = ":Telescope registers<CR>"
keys["<space>s"] = ":split<CR>"
keys["<space>t"] = ":Telescope "
keys["<space>v"] = ":vsplit<CR>"
keys["<space>w"] = ":Telescope live_grep<CR>"
keys["ñ"] = ":LazyGit<CR>"

for k, v in pairs(keys) do
	vim.api.nvim_set_keymap("n", k, v, { noremap = true, silent = false })
end
