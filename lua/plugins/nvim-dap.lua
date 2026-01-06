return {
    "mfussenegger/nvim-dap",
    config = function(self, opts)
        -- Debug settings if you're using nvim-dap
        local dap = require("dap")

        dap.configurations.scala = {
            {
                type = "scala",
                request = "launch",
                name = "RunOrTest",
                metals = {
                    runType = "runOrTestFile",
                    --args = { "firstArg", "secondArg", "thirdArg" }, -- here just as an example
                },
            },
            {
                type = "scala",
                request = "launch",
                name = "Test Target",
                metals = {
                    runType = "testTarget",
                },
            },
        }

        -- Example mappings for usage with nvim-dap. If you don't use that, you can
        -- skip these
        vim.keymap.set('n', '<leader>t', function() require('dap').toggle_breakpoint() end)
    end,
}
