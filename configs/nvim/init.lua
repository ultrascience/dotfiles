require("core").load_options()

require("plugins")

require("theme")

require("utils")

require("lsp")

require("autocomplete")

require("keybinds")

require("macros")

require("dapui").setup()
require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')

require("github")
require('gitsigns').setup()

require('orgmode').setup({
    org_agenda_files = {'~/Github/notes/*', '~/my-orgs/**/*'}
})
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
