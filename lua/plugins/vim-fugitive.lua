return {
	"tpope/vim-fugitive",
	config = function()
		vim.keymap.set("n", "<leader>gs", vim.cmd.Git);
	end,
	cond = (function() return not vim.g.vscode end),

}
