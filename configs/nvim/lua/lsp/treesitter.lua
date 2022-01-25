require'nvim-treesitter.configs'.setup {
   highlight = {
    enable = true,
  },
    textobjects = {
        select = {
            enable = true,

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
