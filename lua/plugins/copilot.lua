return {
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        dependencies = {
            { "zbirenbaum/copilot.lua" },             -- or zbirenbaum/copilot.lua
            { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
        },
        cond = function() return not vim.g.vscode end,
        build = "make tiktoken",                      -- Only on MacOS or Linux
        -- See Commands section for default commands if you want to lazy load on them
        config = function()
            require("copilot").setup({})
            require("CopilotChat").setup {
                model = "claude-sonnet-4",
                agent = "copilot",
                window = {
                    width = 0.33,
                },
            }
        end
    },
}
