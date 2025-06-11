return {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        "nvim-telescope/telescope-ui-select.nvim",
        "nvim-tree/nvim-web-devicons"
    },
    cond = (function() return not vim.g.vscode end),
    config = function()
        require('telescope').setup {
            defaults = {
                file_ignore_patterns = { "node_modules", "%.rbi" },
            },
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown {

                        layout_config = {
                            width = function(_, max_columns, _)
                                if max_columns > 80 then
                                    return math.floor(max_columns * 0.8)
                                else
                                    return max_columns
                                end
                            end,
                        }
                    },
                }
            }
        }
        require('telescope').load_extension('ui-select')
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
        vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<C-g>', builtin.git_files, { desc = 'Telescope find files' })
    end,

}
