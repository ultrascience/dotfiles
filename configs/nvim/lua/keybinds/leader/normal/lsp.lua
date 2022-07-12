keys = {}
local prefix = "<leader>l"

keys[prefix .. "a"] = "<cmd>Lspsaga code_action<CR>"
keys[prefix .. "f"] = "<cmd>Lspsaga lsp_finder<CR>"
keys[prefix .. "i"] = "<cmd>Lspsaga implement<CR>"
keys[prefix .. "d"] = "<cmd>lua vim.lsp.buf.definition()<CR>"
keys[prefix .. "D"] = "<cmd>lua vim.lsp.buf.declaration()<CR>"
keys[prefix .. "rn"] = "<cmd>Lspsaga rename<CR>"
keys[prefix .. "rf"] = "<cmd>lua vim.lsp.buf.references()<CR>"
keys[prefix .. "ci"] = "<cmd>lua vim.lsp.buf.incoming_calls()<CR>"
keys[prefix .. "co"] = "<cmd>lua vim.lsp.buf.outgoing_calls()<CR>"
keys[prefix .. "cr"] = "<cmd>lua vim.lsp.buf.clear_references()<CR>"
keys[prefix .. "k"] = "<cmd>Lspsaga open_floaterm<CR>"
keys[prefix .. "p"] = "<cmd>Lspsaga preview_definition<CR>"
keys[prefix .. "wa"] = "<cmd>lua vim.lsp.buf.add_workspace_folder<CR>"
keys[prefix .. "wr"] = "<cmd>lua vim.lsp.buf.remove_workspace_folder<CR>"
keys[prefix .. "s"] = "<cmd>lua vim.lsp.buf.signature_help<CR>"
keys[prefix .. "o"] = "<cmd>lua vim.diagnostic.open_float()<CR>"

keys["<c-c>"] = "<C-\\><C-n><cmd>Lspsaga close_floaterm<CR>"

for k, v in pairs(keys) do
	vim.api.nvim_set_keymap("n", k, v, { noremap = true, silent = false })
end
