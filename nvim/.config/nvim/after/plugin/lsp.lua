local lsp = require("lsp-zero")
local lspconfig = require("lspconfig")

lsp.preset("recommended")

lsp.ensure_installed({
    "tsserver",
    "eslint",
    "lua_ls",
    "rust_analyzer",
})

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "gd", function()
        vim.lsp.buf.definition()
    end, opts)
    vim.keymap.set("n", "gr", function()
        vim.lsp.buf.references()
    end, opts)
    vim.keymap.set("n", "K", function()
        vim.lsp.buf.hover()
    end, opts)
    vim.keymap.set("n", "<leader>f", function()
        vim.lsp.buf.format()
    end)
    vim.keymap.set("n", "<leader>vws", function()
        vim.lsp.buf.workspace_symbol()
    end, opts)
    vim.keymap.set("n", "<leader>vd", function()
        vim.diagnostic.open_float()
    end, opts)
    vim.keymap.set("n", "]d", function()
        vim.diagnostic.goto_next()
    end, opts)
    vim.keymap.set("n", "[d", function()
        vim.diagnostic.goto_prev()
    end, opts)
    vim.keymap.set("n", "<leader>a", function()
        vim.lsp.buf.code_action()
    end, opts)
    vim.keymap.set("n", "<leader>rn", function()
        vim.lsp.buf.rename()
    end, opts)
    vim.keymap.set("i", "<C-h>", function()
        vim.lsp.buf.signature_help()
    end, opts)
end)

require("neodev").setup({
    library = {
        enabled = true,
        runtime = true,
        types = true,
        plugins = true,
    },
    setup_jsonls = true,
    lspconfig = true,
    pathStrict = true,
})

lspconfig.lua_ls.setup({
    settings = {
        Lua = {
            workspace = {
                checkThirdParty = false,
            },
        },
    },
})

lspconfig.yamlls.setup({
    settings = {
        yaml = {
            schemaStore = {
                url = "https://www.schemastore.org/api/json/catalog.json",
                enable = true,
            },
            schemas = {
                kubernetes = "*",
            },
        },
    },
})

lspconfig.efm.setup({
    root_dir = lspconfig.util.root_pattern(".git"),
    filetypes = vim.tbl_keys(require("gh0st.efm").languages),
    init_options = {
        documentFormatting = true,
        codeAction = true
    },
    settings = require("gh0st.efm"),
})

local function organizeImports()
    local params = {
        command = "_typescript.organizeImports",
        arguments = { vim.api.nvim_buf_get_name(0) },
    }
    vim.lsp.buf.execute_command(params)
end

lspconfig.tsserver.setup({
    commands = {
        OrganizeImports = {
            organizeImports,
            description = "Organize imports",
        }
    }
})

lsp.setup()
