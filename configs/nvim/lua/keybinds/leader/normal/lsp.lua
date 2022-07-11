vim.api.nvim_set_keymap("n", "<leader>la", "<cmd>Lspsaga code_action<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<leader>lf", "<cmd>Lspsaga lsp_finder<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<leader>li", "<cmd>Lspsaga implement<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<leader>ld", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<leader>lD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<leader>lrn", "<cmd>Lspsaga rename<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<leader>lrf", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<leader>lk", "<cmd>Lspsaga open_floaterm<CR>", { noremap = true, silent = false })
vim.keymap.set("t", "<c-c>", "<C-\\><C-n><cmd>Lspsaga close_floaterm<CR>", { silent = true, noremap = true })

vim.api.nvim_set_keymap("n", "<leader>lp", "<cmd>Lspsaga preview_definition<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap(
	"n",
	"<leader>lo",
	"<cmd>lua vim.diagnostic.open_float()<CR>",
	{ noremap = true, silent = false }
)
