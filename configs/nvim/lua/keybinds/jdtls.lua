vim.api.nvim_set_keymap('n', '<A-CR>', "<Cmd>lua require('jdtls').code_action()<CR>",
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', "<A-o>","<Cmd>lua require'jdtls'.organize_imports()<CR>" ,
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', "<leader>r","<Cmd>lua require('jdtls').code_action(false, 'refactor')<CR>" ,
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n',"crc", "<Cmd>lua require('jdtls').extract_constant()<CR>" ,
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('n', "crv","<Cmd>lua require('jdtls').extract_variable()<CR>" ,
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', "<A-CR>","<Esc><Cmd>lua require('jdtls').code_action(tre)<CR>",
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', "crc","<Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>",
                        {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', "crm","<Esc><Cmd>lua require('jdtls').extract_method(true)<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap('v', "crv","<Esc><Cmd>lua require('jdtls').extract_variable(true)<CR>", {noremap = true, silent = true})
