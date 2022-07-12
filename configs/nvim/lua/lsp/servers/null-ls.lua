local null_ls = require("null-ls")
local b = null_ls.builtins

local diagnostics_code_template = "#{m} [#{c}]"

local with_root_file = function(...)
	local files = { ... }
	return function(utils)
		return utils.root_has_file(files)
	end
end

local sources = {
	b.formatting.shfmt,
	b.diagnostics.shellcheck.with({
		diagnostics_format = diagnostics_code_template,
	}),
	-- code actions
	b.code_actions.gitsigns,
	b.code_actions.gitrebase,
	b.diagnostics.eslint,
	b.code_actions.refactoring,
	b.code_actions.semgrep,
	b.code_actions.gitlint,
	b.code_actions.eslint,
	-- b.completion.spell
}

local M = {}
M.setup = function(on_attach)
	if not vim.g.started_by_firenvim then
		null_ls.setup({
			-- debug = true,
			sources = sources,
			on_attach = on_attach,
		})
	end
end

return M
