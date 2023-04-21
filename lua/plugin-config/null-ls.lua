local status, null_ls = pcall(require, "null-ls")
if not status then
    vim.notify("null-ls not found")
    return
end

local bt = null_ls.builtins

null_ls.setup({
    debug = true,
    sources = {
        -- c/c++
        bt.formatting.clang_format.with({
            extra_args = { "--style", "Google" }
        }),
        bt.diagnostics.clang_check.with({
            extra_args = { "--extra-arg-before", "-std=c++2a" }
        }),

        -- python
        bt.formatting.black,
        bt.diagnostics.ruff,

        -- golang
        bt.formatting.gofmt,
        bt.formatting.goimports,
        bt.diagnostics.golangci_lint,

        -- lua
        bt.formatting.stylua,
        bt.diagnostics.luacheck,

        -- javascript / css / json / yaml
        bt.formatting.prettier,
        bt.diagnostics.eslint,
        bt.diagnostics.stylelint,
        bt.diagnostics.jsonlint,
        bt.diagnostics.yamllint,

        -- shell
        bt.formatting.shfmt.with({
            extra_filetypes = { "zsh" },
        }),
        bt.diagnostics.shellcheck,
    },
    -- 保存自动格式化
    on_attach = function(client)
        if client.resolved_capabilities and client.resolved_capabilities.document_formatting then
            vim.cmd("autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()")
        end
    end,
})
