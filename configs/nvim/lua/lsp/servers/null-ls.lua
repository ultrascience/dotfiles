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
	-- formatting
	-- b.formatting.prettier,
	-- b.formatting.fish_indent,
	b.formatting.shfmt,
	-- b.formatting.clang_format,
	-- b.formatting.trim_whitespace.with({
	-- 	filetypes = { "tmux", "snippets" },
	-- }),
	-- b.formatting.stylua.with({
	-- 	condition = with_root_file("stylua.toml"),
	-- }),
	-- -- diagnostics
	-- b.diagnostics.selene.with({
	-- 	condition = with_root_file("selene.toml"),
	-- }),
	-- b.diagnostics.write_good,
	-- b.diagnostics.markdownlint,
	b.diagnostics.shellcheck.with({
		diagnostics_format = diagnostics_code_template,
	}),
	-- code actions
	b.code_actions.gitsigns,
	b.code_actions.gitrebase,
	-- hover
	-- b.hover.dictionary,

	-- b.formatting.stylua,
	-- b.formatting.eslint,
	b.diagnostics.eslint,
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
