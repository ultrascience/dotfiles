vim.api.nvim_set_keymap("n", "<space>l", ":Telescope lsp_", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<space>d", ":Telescope diagnostics<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<space>m", ":Telescope marks<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<space>t", ":Telescope ", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<space>b", ":Telescope buffers<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<space>g", ":Telescope git", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<space>w", ":Telescope live_grep<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<space>j", ":Telescope jumplist<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<space>c", ":Copilot<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<space>v", ":vsplit<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<space>s", ":split<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<space>o", ":on<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<space>n", ":vsplit | :TroubleToggle<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "ñ", ":LazyGit<CR>", { noremap = true, silent = true })
