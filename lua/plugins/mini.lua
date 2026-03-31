return {
    {
        "echasnovski/mini.icons",
        lazy = true,
        cond = function() return not vim.g.vscode end,
        opts = {},
        init = function()
            -- Compatibility shim for plugins expecting nvim-web-devicons
            package.preload["nvim-web-devicons"] = function()
                require("mini.icons").mock_nvim_web_devicons()
                return package.loaded["nvim-web-devicons"]
            end
        end,
    },
    {
        "echasnovski/mini.pairs",
        event = "InsertEnter",
        cond = function() return not vim.g.vscode end,
        opts = {},
    },
}
