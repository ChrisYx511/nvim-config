return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    -- enable auto install

    config = function()
        require("nvim-treesitter.configs").setup {
            auto_install = true,
        }
    end
}
