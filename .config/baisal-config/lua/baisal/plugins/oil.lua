local column_desc_shown = false

return {
    'stevearc/oil.nvim',
    priority = 1000,
    lazy = false,
    opts = {
        watch_for_changes = true,
        skip_confirm_for_simple_edits = true,
        default_file_explorer = true,
        view_options = {
            is_always_hidden = function (name, _)
                if name == ".." then
                    return true
                end
            end
        },
        float = {
            padding = 5
        },
        keymaps = {
            ["~"] = "<cmd>edit $HOME<CR>",
            ["<C-h>"] = false,
            ["<C-l>"] = false,
            ["gh"] = function()
                local oil = require("oil")
                local set_columns = oil.set_columns

                if column_desc_shown then
                    set_columns({ "icon" })
                    column_desc_shown = false
                else
                    set_columns({ "icon", "permissions", "size", "mtime" })
                    column_desc_shown = true
                end
            end,
            ["g."] = { "actions.toggle_hidden" }
        },
        use_default_keymaps = true
    },
}
