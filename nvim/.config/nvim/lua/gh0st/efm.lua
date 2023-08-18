local tools = {
    prettier = {
        formatCommand = "prettier --stdin-filepath ${INPUT}",
        formatStdin = true,
    },
    stylua = {
        formatCommand = "stylua --search-parent-directories --stdin-filepath ${INPUT}",
        formatStdin = true,
    },
    jq = {
        formatCommand = "jq . ${INPUT}",
        formatStdin = true,
    },
    terraformfmt = {
        formatCommand = "terraform fmt -",
        formatStdin = true,
    },
    autopep8 = {
        formatCommand = "autopep8 -",
        formatStdin = true,
    },
    rustfmt = {
        formatCommand = "rustfmt --edition 2021",
        formatStdin = true,
    },
    sqlformatter = {
        formatCommand = "sql-formatter -l postgresql",
        formatStdin = true,
    },
    shfmt = {
        formatCommand = "shfmt -i " .. vim.opt.shiftwidth:get(),
        formatStdin = true,
    },
    dartformat = {
        formatCommand = "dart format --output show",
        formatStdin = true,
    },
    stylishhaskell = {
        formatCommand = "stylish-haskell",
        formatStdin = true,
    },
    clangformat = {
        formatCommand = "clang-format -assume-filename ${INPUT}",
        formatStdin = true,
    },
}

local languages = {
    lua = { tools.stylua, },
    typescript = { tools.prettier, },
    typescriptreact = { tools.prettier, },
    javascript = { tools.prettier, },
    javascriptreact = { tools.prettier, },
    json = { tools.jq, },
    yaml = { tools.prettier, },
    terraform = { tools.terraformfmt, },
    python = { tools.autopep8, },
    rust = { tools.rustfmt, },
    sql = { tools.sqlformatter },
    sh = { tools.shfmt },
    bash = { tools.shfmt },
    zsh = { tools.shfmt },
    dart = { tools.dartformat },
    haskell = { tools.stylishhaskell },
    c = { tools.clangformat },
    cpp = { tools.clangformat },
    java = { tools.clangformat },
}

local settings = {
    rootMakers = { "./git" },
    languages = languages,
    tools = tools,
}

return settings
