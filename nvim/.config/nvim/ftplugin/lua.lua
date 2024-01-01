vim.lsp.start({
    name = "lua_ls",
    cmd = { "lua-language-server", "--stdio" },
    capabilities = vim.lsp.protocol.make_client_capabilities(),
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT", -- Use LuaJIT runtime
                path = vim.split(package.path, ";"),
            },
            diagnostics = {
                globals = { "vim" }, -- Define global variables
            },
            workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
            },
            telemetry = {
                enable = false,
            },
        },
    },
    root_dir = vim.fs.dirname(vim.fs.find({ "init.lua", ".git" }, { upward = true, stop = vim.env.HOME })[1]),
})
