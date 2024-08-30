-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    use({ "dracula/vim", as = "dracula" })
    use({ "rose-pine/neovim", as = "rose-pine" })

    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
    use("nvim-treesitter/playground")

    use("mbbill/undotree")

    use("tpope/vim-fugitive")
    use("airblade/vim-gitgutter")

    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        requires = {
            { "neovim/nvim-lspconfig" },
            {
                "williamboman/mason.nvim",
                run = function() pcall(vim.cmd, "MasonUpdate") end,
            },
            { "williamboman/mason-lspconfig.nvim" },
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "L3MON4D3/LuaSnip" },
        },
    })

    use("folke/neodev.nvim")

    use("mfussenegger/nvim-lint")

    use("mfussenegger/nvim-dap")
    use({
        "rcarriga/nvim-dap-ui",
        requires = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    })

    use({
        "mxsdev/nvim-dap-vscode-js",
        requires = { "mfussenegger/nvim-dap" },
    })
    use({
        "microsoft/vscode-js-debug",
        opt = true,
        run = "npm install --legacy-peer-deps && npx gulp vsDebugServerBundle && mv dist out",
    })

    use({
        "folke/trouble.nvim",
        requires = { "nvim-tree/nvim-web-devicons" },
    })

    use("tpope/vim-surround")
    use("tpope/vim-unimpaired")
    use("tpope/vim-repeat")
    use("tpope/vim-commentary")

    use("LunarVim/bigfile.nvim")
end)
