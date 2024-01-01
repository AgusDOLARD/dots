vim.lsp.start({
    name = "go",
    cmd = { "gopls" },
    capabilities = vim.lsp.protocol.make_client_capabilities(),
    root_dir = vim.fs.dirname(
        vim.fs.find({ "main.go", "Makefile", ".git" }, { upward = true, stop = vim.env.HOME })[1]
    ),
})
