return {
    'codota/tabnine-nvim',
    cond = function() return not vim.g.vscode end,
    build = "./dl_binaries.sh",
    lazy = false,
    init = function()
        require('tabnine').setup({
            disable_auto_comment = true,
            accept_keymap = "<C-/>",
            dismiss_keymap = "<C-]>",
            debounce_ms = 800,
            suggestion_color = { gui = "#808080", cterm = 244 },
            exclude_filetypes = { "TelescopePrompt", "NvimTree" },
            log_file_path = nil, -- absolute path to Tabnine log file
            ignore_certificate_errors = false,
            -- workspace_folders = {
            --   paths = { "/your/project" },
            --   get_paths = function()
            --       return { "/your/project" }
            --   end,
            -- },
        })
    end,
}
