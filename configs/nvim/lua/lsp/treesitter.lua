local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.org = {
  install_info = {
    url = 'https://github.com/milisims/tree-sitter-org',
    revision = 'f110024d539e676f25b72b7c80b0fd43c34264ef',
    files = {'src/parser.c', 'src/scanner.cc'},
  },
  filetype = 'org',
}

require'nvim-treesitter.configs'.setup {
   highlight = {
    enable = true,
    disable = {'org'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
    additional_vim_regex_highlighting = {'org'}, -- Required since TS highlighter doesn't support all syntax features (conceal)
  },
  ensure_installed = {'org'}, -- Or run :TSUpdate org
    autotag = {enable = true},
    rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil -- Do not enable for files with more than n lines, int
        -- colors = {}, -- table of hex strings
        -- termcolors = {} -- table of colour name strings
    },
    textobjects = {
        select = {
            enable = true,

            -- Automatically jump forward to textobj, similar to targets.vim 
            lookahead = true,

            keymaps = {
                -- You can use the capture groups defined in textobjects.scm
                ["fo"] = "@function.outer",
                ["fi"] = "@function.inner",
                ["io"] = "@if.outer",
                ["co"] = "@class.outer",
                ["lo"] = "@loop.outer",
                ["li"] = "@loop.inner",
                ["ro"] = "@return.outer",
                ["ri"] = "@return.inner",
                ["eo"] = "@else.outer",
                ["ei"] = "@else.inner",
                ["st"] = "@statement.outer",
                ["si"] = "@statement.inner",
                ["sc"] = "@statement.continue",
                ["sd"] = "@statement.break",
                ["sp"] = "@statement.pass",
                ["ss"] = "@statement.next",
                ["sw"] = "@statement.while",
                ["su"] = "@statement.until",
                ["sl"] = "@statement.for",
                ["se"] = "@statement.else",
                ["to"] = "@try.outer",
                ["ti"] = "@try.inner",
                ["tc"] = "@try.catch",
                ["te"] = "@try.except",
                ["tf"] = "@try.finally",
                -- comment
                ["-o"] = "@comment.outer",
                ["-i"] = "@comment.inner",
                ["cl"] = "@comment.line",
                ["cx"] = "@comment.docstring",
                ["ki"] = "@call.inner",
                ["ko"] = "@call.outer",
                ["kc"] = "@call.class",
                ["kd"] = "@call.def",
                ["kf"] = "@call.function",
                ["kv"] = "@call.variable",
                ["kp"] = "@call.parameter",
                ["kr"] = "@call.reference",
                ["kt"] = "@call.type",
                ["kx"] = "@call.extension"
            }
        },
        lsp_interop = {
            enable = true,
            border = 'none',
            peek_definition_code = {
                ["df"] = "@function.outer",
                ["dF"] = "@class.outer"
            }
        },
        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                ["}f"] = "@function.outer",
                ["}s"] = "@statement.outer",
                ["}c"] = "@class.outer",
                ["}i"] = "@conditional.outer",
                ["}l"] = "@loop.outer",
                ["}b"] = "@block.inner",
                ["}k"] = "@call.inner",
                ["}d"] = "@frame.inner",
                ["}z"] = "@scopename.inner",
                ["}q"] = "@parameter.outer"
            },
            goto_previous_start = {
                ["{f"] = "@function.outer",
                ["{c"] = "@class.outer",
                ["{s"] = "@statement.outer",
                ["{i"] = "@conditional.outer",
                ["{l"] = "@loop.outer",
                ["{q"] = "@parameter.outer"
            }
        }
    }
}
