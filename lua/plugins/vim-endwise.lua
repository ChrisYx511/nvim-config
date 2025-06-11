return {
    "tpope/vim-endwise",
    cond = function() return not vim.g.vscode end,
}
