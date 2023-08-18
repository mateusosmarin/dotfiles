require("neodev").setup({
    library = {
        plugins = {
            "neodev.nvim",
            "lsp-zero.nvim",
            "nvim-lspconfig",
            "nvim-cmp",
            "nvim-dap",
            "nvim-dap-ui",
            "nvim-dap-vscode-js",
            "telescope.nvim",
            "nvim-treesitter",
        },
        types = true,
    },
})
