
local home = os.getenv("HOME")
require("formatter").setup({
	logging = false,
	filetype = {
		javascript = {
			-- prettier
			function()
				return {
					exe = "prettier",
					args = { "--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote" },
					stdin = true,
				}
			end,
		},
		rust = {
			-- Rustfmt
			function()
				return {
					exe = "rustfmt",
					args = { "--edition=2018", "--emit=stdout" },
					stdin = true,
				}
			end,
		},
		go = {
			function()
				return {
					exe = "gofmt",
					args = { vim.api.nvim_buf_get_name(0) },
					stdin = true,
				}
			end,
		},
		lua = {
			function()
				return {
					exe = "stylua",
					args = { "-" },
					stdin = true,
				}
			end,
		},
		java = {
			function()
				return {
					exe = "java",
					args = { "-jar", "/home/aldo/.local/share/nvim/formatters/google-java-format-1.15.0-all-deps.jar", "-" },
					stdin = true,
				}
			end,
		},
	},
})

vim.api.nvim_exec(
	[[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.js,*.rs,*.go,*.lua,*.java FormatWrite
augroup END
]],
	true
)

