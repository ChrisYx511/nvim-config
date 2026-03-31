return {
    "mfussenegger/nvim-dap",
    cond = function() return not vim.g.vscode end,
    keys = {
        { "<leader>dc", function() require("dap").continue() end, desc = "Continue" },
        { "<leader>do", function() require("dap").step_over() end, desc = "Step over" },
        { "<leader>di", function() require("dap").step_into() end, desc = "Step into" },
        { "<leader>dO", function() require("dap").step_out() end, desc = "Step out" },
        { "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "Toggle breakpoint" },
        { "<leader>dB", function() require("dap").set_breakpoint() end, desc = "Set breakpoint" },
        { "<leader>dL", function() require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: ")) end, desc = "Log point" },
        { "<leader>dr", function() require("dap").repl.open() end, desc = "REPL" },
        { "<leader>dl", function() require("dap").run_last() end, desc = "Run last" },
        { "<leader>dh", function() require("dap.ui.widgets").hover() end, desc = "Hover", mode = { "n", "v" } },
        { "<leader>dp", function() require("dap.ui.widgets").preview() end, desc = "Preview", mode = { "n", "v" } },
        { "<leader>df", function() local w = require("dap.ui.widgets"); w.centered_float(w.frames) end, desc = "Frames" },
        { "<leader>ds", function() local w = require("dap.ui.widgets"); w.centered_float(w.scopes) end, desc = "Scopes" },
        -- Keep F-keys as secondary bindings
        { "<F5>", function() require("dap").continue() end, desc = "DAP Continue" },
        { "<F10>", function() require("dap").step_over() end, desc = "DAP Step over" },
        { "<F11>", function() require("dap").step_into() end, desc = "DAP Step into" },
        { "<F12>", function() require("dap").step_out() end, desc = "DAP Step out" },
    },
}
