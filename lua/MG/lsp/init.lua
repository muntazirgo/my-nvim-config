local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("MG.lsp.configs")
require("MG.lsp.handlers").setup()
require("MG.lsp.null-ls")
