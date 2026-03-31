return {
    "rmagatti/auto-session",
    lazy = false,
    cond = function() return not vim.g.vscode end,
    keys = {
        { "<leader>qr", "<cmd>AutoSession search<CR>", desc = "Session search" },
        { "<leader>qs", "<cmd>AutoSession save<CR>", desc = "Save session" },
        { "<leader>qa", "<cmd>AutoSession toggle<CR>", desc = "Toggle autosave" },
    },
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
        suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
        session_lens = {
            picker = "telescope",
            mappings = {
                delete_session = { "i", "<C-d>" },
                alternate_session = { "i", "<C-s>" },
                copy_session = { "i", "<C-y>" },
            },
        },
    },
}
