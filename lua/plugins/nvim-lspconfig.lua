return {
    "neovim/nvim-lspconfig",
    cond = function() return not vim.g.vscode end,
    config = function()

        vim.keymap.set('n','gD', vim.lsp.buf.declaration)
        vim.keymap.set('n','gd', vim.lsp.buf.definition)
        vim.keymap.set('n','K', vim.lsp.buf.hover)
        vim.keymap.set('n','gr', vim.lsp.buf.references)
        vim.keymap.set('n','gs', vim.lsp.buf.signature_help)
        vim.keymap.set('n','gi', vim.lsp.buf.implementation)
        vim.keymap.set('n','gt', vim.lsp.buf.type_definition)
        vim.keymap.set('n','<leader>gw', vim.lsp.buf.document_symbol)
        vim.keymap.set('n','<leader>gW', vim.lsp.buf.workspace_symbol)
        vim.keymap.set('n','<leader>ah', vim.lsp.buf.hover)
        vim.keymap.set('n','<leader>af', vim.lsp.buf.code_action)
        vim.keymap.set('n','<leader>ee', vim.diagnostic.open_float)
        vim.keymap.set('n','<leader>ar', vim.lsp.buf.rename)
        vim.keymap.set('n','<leader>=', vim.lsp.buf.format)
        vim.keymap.set('n','<leader>ai', vim.lsp.buf.incoming_calls)
        vim.keymap.set('n','<leader>ao', vim.lsp.buf.outgoing_calls)
    end,
    lazy = false,
}
