return {
    "scalameta/nvim-metals",
    ft = { "scala", "sbt", "java" },
    dependencies = {
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
        end
    },
    opts = function()
        local metals_config = require("metals").bare_config()
        metals_config.init_options.statusBarProvider = "off"

        metals_config.on_attach = function(client, bufnr)
            vim.keymap.set("n", "<leader>cl", vim.lsp.codelens.run)

            vim.keymap.set("n", "<leader>ws", function()
                require("metals").hover_worksheet()
            end)

            -- all workspace diagnostics
            vim.keymap.set("n", "<leader>aa", vim.diagnostic.setqflist)

            -- all workspace errors
            vim.keymap.set("n", "<leader>ae", function()
                vim.diagnostic.setqflist({ severity = "E" })
            end)

            -- all workspace warnings
            vim.keymap.set("n", "<leader>aw", function()
                vim.diagnostic.setqflist({ severity = "W" })
            end)

            vim.keymap.set("n", "[c", function()
                vim.diagnostic.goto_prev({ wrap = false })
            end)

            vim.keymap.set("n", "]c", function()
                vim.diagnostic.goto_next({ wrap = false })
            end)

            vim.keymap.set("n", "<leader>m", function()
                require "telescope".extensions.metals.commands()
            end
            )

            require("metals").setup_dap()
        end

        return metals_config
    end,
    config = function(self, metals_config)
        local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
        vim.api.nvim_create_autocmd("FileType", {
            pattern = self.ft,
            callback = function()
                require("metals").initialize_or_attach(metals_config)
            end,
            group = nvim_metals_group,
        })
    end
}
