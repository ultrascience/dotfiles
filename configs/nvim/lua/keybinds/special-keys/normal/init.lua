vim.api.nvim_set_keymap("n", "<End>", "", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<End>", ":wq<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<Insert>", "", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<Insert>", "ggVGy<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<Bar>", ":FormatWrite<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<PageUp>", ":BufferPrevious<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<PageDown>", ":BufferNext<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<Home>", ":TroubleToggle<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<BS>", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<BS>", "ggVGx", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Del>", "", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<Del>", "ggVGs", { noremap = false, silent = true })
