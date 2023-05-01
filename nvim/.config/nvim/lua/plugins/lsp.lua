return {
	"williamboman/mason.nvim",
	opts = {},
	dependencies = {
		{
			"williamboman/mason-lspconfig.nvim",
			cmd = { "LspInstall", "LspUninstall" },
			config = function()
				local capabilities = vim.lsp.protocol.make_client_capabilities()
				capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

				require("mason-lspconfig").setup_handlers({
					function(server_name)
						require("lspconfig")[server_name].setup({
							capabilities = capabilities,
						})
					end,
				})
			end,
		},
		{
			"neovim/nvim-lspconfig",
			keys = {
				{ "<C-.>", vim.lsp.buf.code_action },
				{ "gh", vim.lsp.buf.hover },
				{ "gd", vim.lsp.buf.definition },
				{ "<F2>", vim.lsp.buf.rename },
			},
		},
	},
}
