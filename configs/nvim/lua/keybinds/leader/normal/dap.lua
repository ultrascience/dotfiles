keys = {}
keys["<leader>dt"] = ":lua require'dapui'.toggle()<CR>"

keys["<leader>df"] = ":lua require('dapui').float_element()<CR>"

keys["<leader>de"] = ":lua require('dapui').eval()<CR>"

keys["<leader>dc"] = ":lua require'dap'.continue()<CR>"

keys["<leader>db"] = ":lua require'dap'.toggle_breakpoint()<CR>"

keys["<leader>ds"] = ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>"

keys["<leader>dp"] = ":lua require'dap'.print_locals()<CR>"
keys["<leader>dso"] = ":lua require'dap'.step_over()<CR>"
keys["<leader>dsi"] = ":lua require'dap'.step_into()<CR>"

keys["<leader>dm"] = ":lua require'dap'.set_breakpoint(nil nil, vim.fn.input('Log point message: '))<CR>"
--
keys["<leader>do"] = ":lua require'dap'.repl.open()<CR>"

keys["<leader>dl"] = ":lua require'dap'.run_last()<CR>"

for k, v in pairs(keys) do
	vim.api.nvim_set_keymap("n", k, v, { noremap = true, silent = false })
end
