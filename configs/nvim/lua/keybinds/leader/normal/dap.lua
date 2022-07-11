vim.api.nvim_set_keymap("n", "<leader>dt", ":lua require'dapui'.toggle()<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap(
	"n",
	"<leader>df",
	":lua require('dapui').float_element()<CR>",
	{ noremap = true, silent = false }
)

vim.api.nvim_set_keymap("n", "<leader>de", ":lua require('dapui').eval()<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<leader>dc", ":lua require'dap'.continue()<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap(
	"n",
	"<leader>db",
	":lua require'dap'.toggle_breakpoint()<CR>",
	{ noremap = true, silent = false }
)

vim.api.nvim_set_keymap(
	"n",
	"<leader>ds",
	":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
	{ noremap = true, silent = false }
)

vim.api.nvim_set_keymap("n", "<leader>dp", ":lua require'dap'.print_locals()<CR>", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<leader>dso", ":lua require'dap'.step_over()<CR>", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<leader>dsi", ":lua require'dap'.step_into()<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap(
	"n",
	"<leader>dm",
	":lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>",
	{ noremap = true, silent = false }
)

vim.api.nvim_set_keymap("n", "<leader>do", ":lua require'dap'.repl.open()<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<leader>dl", ":lua require'dap'.run_last()<CR>", { noremap = true, silent = false })
