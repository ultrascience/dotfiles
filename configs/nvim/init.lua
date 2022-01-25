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

require'lspconfig'.hls.setup{}
