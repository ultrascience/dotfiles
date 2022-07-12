keys = {}
keys["s"] = ""
keys["s"] = ":%sort<CR>i"
keys["a"] = ""
keys["a"] = "<cmd><C-U>Lspsaga range_code_action<CR>"
keys["t"] = ":%!column -t<CR>"
keys["r"] = '"hy:%s:<C-r>h::gc<left><left><left>'

for k, v in pairs(keys) do
	vim.api.nvim_set_keymap("v", k, v, { noremap = true, silent = false })
end
