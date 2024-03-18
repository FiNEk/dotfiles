return {
  "stevearc/oil.nvim",
  lazy = false,
  opts = {
    keymaps = {
      ["<Esc>"] = "actions.close",
    },
  },
  keys = {
    { "<leader>e", "<CMD>Oil --float<CR>", desc = "Open parent directory" },
  },
}
