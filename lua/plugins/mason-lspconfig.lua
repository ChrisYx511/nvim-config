return {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    cond = (function() return not vim.g.vscode end),
    dependencies = {
	    { "mason-org/mason.nvim", opts = {} },
	    "neovim/nvim-lspconfig",
	    { "ms-jpq/coq_nvim", branch = "coq" },

	    -- 9000+ Snippets
	    { "ms-jpq/coq.artifacts", branch = "artifacts" },

	    -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
	    -- Need to **configure separately**
	    { 'ms-jpq/coq.thirdparty', branch = "3p" }
	    -- - shell repl
	    -- - nvim lua api
	    -- - scientific calculator
	    -- - comment banner
	    -- - etc
    },
    lazy = false,
    init = function()
	    vim.g.coq_settings = {
		    auto_start = true,
		}
	end,
--    config = function()

--        vim.keymap.set('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>')
--	vim.keymap.set('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>')
--	vim.keymap.set('n','K','<cmd>lua vim.lsp.buf.hover()<CR>')
--	vim.keymap.set('n','gr','<cmd>lua vim.lsp.buf.references()<CR>')
--	vim.keymap.set('n','gs','<cmd>lua vim.lsp.buf.signature_help()<CR>')
--	vim.keymap.set('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>')
--	vim.keymap.set('n','gt','<cmd>lua vim.lsp.buf.type_definition()<CR>')
--	vim.keymap.set('n','<leader>gw','<cmd>lua vim.lsp.buf.document_symbol()<CR>')
--	vim.keymap.set('n','<leader>gW','<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
--	vim.keymap.set('n','<leader>ah','<cmd>lua vim.lsp.buf.hover()<CR>')
--	vim.keymap.set('n','<leader>af','<cmd>lua vim.lsp.buf.code_action()<CR>')
--	vim.keymap.set('n','<leader>ee','<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>')
--	vim.keymap.set('n','<leader>ar','<cmd>lua vim.lsp.buf.rename()<CR>')
--	vim.keymap.set('n','<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>')
--	vim.keymap.set('n','<leader>ai','<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
--	vim.keymap.set('n','<leader>ao','<cmd>lua vim.lsp.buf.outgoing_calls()<CR>')
-- end

}
