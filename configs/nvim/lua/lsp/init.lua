local u = require("core.utils")

local lsp = vim.lsp

local border_opts = { border = "single", focusable = false, scope = "line" }

vim.diagnostic.config({ virtual_text = false, float = border_opts })

local eslint_disabled_buffers = {}

lsp.handlers["textDocument/signatureHelp"] = lsp.with(lsp.handlers.signature_help, border_opts)
lsp.handlers["textDocument/hover"] = lsp.with(lsp.handlers.hover, border_opts)
lsp.handlers["textDocument/definition"] = lsp.with(lsp.handlers.definition, border_opts)
lsp.handlers["textDocument/references"] = lsp.with(lsp.handlers.references, border_opts)
lsp.handlers["textDocument/documentHighlight"] = lsp.with(lsp.handlers.document_highlight, border_opts)
lsp.handlers["textDocument/documentSymbol"] = lsp.with(lsp.handlers.document_symbol, border_opts)
lsp.handlers["textDocument/codeAction"] = lsp.with(lsp.handlers.code_action, border_opts)
lsp.handlers["textDocument/completion"] = lsp.with(lsp.handlers.completion, border_opts)
lsp.handlers["textDocument/formatting"] = lsp.with(lsp.handlers.formatting, border_opts)
lsp.handlers["textDocument/rangeFormatting"] = lsp.with(lsp.handlers.range_formatting, border_opts)
lsp.handlers["textDocument/onTypeFormatting"] = lsp.with(lsp.handlers.on_type_formatting, border_opts)
lsp.handlers["textDocument/rename"] = lsp.with(lsp.handlers.rename, border_opts)
lsp.handlers["textDocument/publishDiagnostics"] = lsp.with(lsp.handlers.publish_diagnostics, border_opts)
lsp.handlers["textDocument/codeLens"] = lsp.with(lsp.handlers.code_lens, border_opts)
lsp.handlers["textDocument/documentLink"] = lsp.with(lsp.handlers.document_link, border_opts)
lsp.handlers["textDocument/documentColor"] = lsp.with(lsp.handlers.document_color, border_opts)

-- track buffers that eslint can't format to use prettier instead
lsp.handlers["textDocument/publishDiagnostics"] = function(_, result, ctx, config)
	local client = lsp.get_client_by_id(ctx.client_id)
	if not (client and client.name == "eslint") then
		goto done
	end

	for _, diagnostic in ipairs(result.diagnostics) do
		if diagnostic.message:find("The file does not match your project config") then
			local bufnr = vim.uri_to_bufnr(result.uri)
			eslint_disabled_buffers[bufnr] = true
		end
	end

	::done::
	return lsp.diagnostic.on_publish_diagnostics(nil, result, ctx, config)
end

for _, server in ipairs({
	"bashls",
	-- -- "ccls",
	"eslint",
	-- -- "jsonls",
	"cssmodules-ls",
	"null-ls",
	"docker-ls",
	"tailwindcss-ls",
	"emmet-ls",
	"html-ls",
	"pyright",
	-- "sumneko_lua",
	"tsserver",
}) do
	require("lsp.servers." .. server).setup(on_attach, capabilities)
end

-- suppress irrelevant messages
local notify = vim.notify
vim.notify = function(msg, ...)
	if msg:match("%[lspconfig%]") then
		return
	end

	if msg:match("warning: multiple different client offset_encodings") then
		return
	end

	notify(msg, ...)
end

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
	},
})
