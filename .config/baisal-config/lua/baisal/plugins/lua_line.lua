return {
    "nvim-lualine/lualine.nvim",
    event = { "BufReadPre", "BufNewFile" },
    opts = {
        options = {
            disabled_filetypes = { "oil", "undotree" },
            section_separators = { left = "", right = "" },
            component_separators = { left = "", right = "" },
            theme = "horizon"
        },
        globalstatus = true,
    }
}
