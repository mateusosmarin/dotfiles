local util = require("formatter.util")

require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},

		javascript = {
			require("formatter.filetypes.javascript").prettier,
		},

		javascriptreact = {
			require("formatter.filetypes.javascriptreact").prettier,
		},

		typescript = {
			require("formatter.filetypes.typescript").prettier,
		},

		typescriptreact = {
			require("formatter.filetypes.typescriptreact").prettier,
		},

		json = {
			require("formatter.filetypes.json").jq,
		},

		yaml = {
			require("formatter.filetypes.yaml").prettier,
		},

		terraform = {
			require("formatter.filetypes.terraform").terraformfmt,
		},

		python = {
			require("formatter.filetypes.python").autopep8,
		},

		rust = {
			require("formatter.filetypes.rust").rustfmt,
		},

		sql = {
			function()
				return {
					exe = "sql-formatter",
					args = {
						"-l postgresql",
					},
					stdin = true,
				}
			end,
		},

		sh = {
			require("formatter.filetypes.sh").shfmt,
		},

		dart = {
			require("formatter.filetypes.dart").dartformat,
		},

		haskell = {
			require("formatter.filetypes.haskell").stylish_haskell,
		},

		c = {
			require("formatter.filetypes.c").clangformat,
		},

		cpp = {
			require("formatter.filetypes.cpp").clangformat,
		},

		java = {
			require("formatter.filetypes.java").clangformat,
		},

		["*"] = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})
