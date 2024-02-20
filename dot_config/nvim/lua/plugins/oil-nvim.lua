return {
  "stevearc/oil.nvim",
  lazy = false,
  opts = {
    keymaps = {
      ["<q>"] = "actions.close",
    },
  },
  keys = {
    { "<leader>e", "<CMD>Oil<CR>", desc = "Open parent directory" },
  },
}
