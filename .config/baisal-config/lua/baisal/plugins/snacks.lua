return {
    "folke/snacks.nvim",
    priority = 999,
    lazy = false,
    opts = {
        dashboard = { enabled = true },
        indent = {
            priority = 1,
            enabled = true,
            char = "|",
            animate = {
                enabled = false,
                duration = {
                    step = 5,
                    total = 200,
                },
            },
            scope = {
                enabled = true,
                char = "|"
            }
        },
        notifier = { enabled = true },
        quickfile = { enabled = true },
        statuscolumn = {
            left = { "mark", "sign"},
            right = { "fold", "git"},
            folds = {
                open = false,
                git_hl = false,
            },
            git = {
                patterns = { "GitSign", "MiniDiffSign" },
            },
            refresh = 50,
        },
    },
}
