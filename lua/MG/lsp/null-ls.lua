local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion
local code_actions = null_ls.builtins.code_actions
local hover = null_ls.builtins.hover

null_ls.setup({
	debug = true,
	sources = {
    formatting.prettier,
		-- formatting.prettier.with({
		-- 	extra_args = { "--no-semi", "--single-quote", "--jsx-single-quote", "--print-width", "100" },
		-- 	filetypes = { "typescript", "typescriptreact", "css", "html" },
		-- }),

		-- python formatters and linters
		-- formatting.black.with({ extra_args = { "--fast" } }),
		formatting.autopep8,
		diagnostics.flake8,
		code_actions.refactoring,

		-- lua formatters and linters
		formatting.stylua,
		diagnostics.luacheck,

		-- bash formatters and linters
		formatting.shfmt,
		diagnostics.shellcheck,
		code_actions.shellcheck,
	},
})
