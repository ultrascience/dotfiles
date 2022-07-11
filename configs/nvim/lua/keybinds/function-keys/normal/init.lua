vim.api.nvim_set_keymap("n", "<F1>", "", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<F1>", ":Telescope ultisnips<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<F2>", "", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<F2>", ":Telekasten panel<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<F3>", "", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<F3>", ":Telekasten search_notes<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<F4>", "", { noremap = true, silent = false })
vim.api.nvim_set_keymap("n", "<F4>", ":Telekasten follow_link<CR>", { noremap = true, silent = false })

vim.api.nvim_set_keymap("n", "<F5>", "ggVG:SnipRun<CR>", { noremap = true, silent = false })
