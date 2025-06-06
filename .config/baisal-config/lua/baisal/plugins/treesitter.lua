return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "LspAttach",
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true
            },
            ensure_installed = {
                "json",
                "jsonc",
                "javascript",
                "typescript",
                "tsx",
                "python",
                "go",
                "tsx",
                "yaml",
                "html",
                "css",
                "markdown",
                "markdown_inline",
                "bash",
                "lua",
                "vim",
                "dockerfile",
                "gitignore",
                "c",
                "cpp",
                "rust",
                "hyprlang",
            },
            incremental_selection = {
                enable = true,
            }
        })
    end,
}
