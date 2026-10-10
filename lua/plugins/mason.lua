return {
	{
		"mason-org/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
			registries = {
				"github:nvim-java/mason-registry",
				"github:mason-org/mason-registry",
				"github:Crashdummyy/mason-registry",
			},
		},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			automatic_enable = {
				exclude = { "jdtls" },
			},
		},
		dependencies = { "mason-org/mason.nvim", "neovim/nvim-lspconfig" },
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"alejandra",
				"cbfmt",
				"clang-format",
				"doctoc",
				"emmet-language-server",
				"eslint-lsp",
				"gopls",
				"htmx-lsp",
				"json-lsp",
				"ltex-ls",
				"emmylua_ls",
				"nil",
				"prettierd",
				"ruff",
				"basedpyright",
				"rustywind",
				"tailwindcss-language-server",
				"templ",
				"typescript-language-server",
				"zls",
			},
			auto_update = true,
			run_on_start = true,
			start_delay = 5000,
			debounce_hours = 1,
			integrations = {
				["mason-lspconfig"] = true,
				["mason-null-ls"] = false,
				["mason-nvim-dap"] = false,
			},
		},
	},
}
