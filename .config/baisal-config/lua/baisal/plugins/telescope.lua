return {
    "nvim-telescope/telescope.nvim",
    lazy = true,
    tag = "0.1.8",
    cmd = {
        "Telescope"
    },
    keys = {
        { "<leader>fu", "<cmd>Telescope find_files<cr>" },
        { "<leader>fg", "<cmd>Telescope live_grep<cr>"},
        { "<leader>fb", "<cmd>Telescope buffers<cr>"},
        { "<leader>fs", "<cmd>Telescope git_status<cr>"},
        { "<leader>fc", "<cmd>Telescope git commits<cr>"},
    },
    opts = {},
}
