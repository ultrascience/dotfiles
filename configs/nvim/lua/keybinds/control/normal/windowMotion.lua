-- vim.api
--     .nvim_set_keymap("n", "<BS>", "`.", {noremap = true, silent = false})
keys = {}
keys["<C-Right>"] = "<C-w>l"
keys["<C-Left>"] = "<C-w>h"
keys["<C-Up>"] = "<C-w>k"
keys["<C-Down>"] = "<C-w>j"

for k, v in pairs(keys) do
	vim.api.nvim_set_keymap("n", k, v, { noremap = true, silent = false })
end
