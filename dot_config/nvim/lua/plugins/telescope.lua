return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- disable the keymap to grep files
      { "<leader>/", false },
    },
    opts = {
      pickers = {
        lsp_references = {
          path_display = { "smart" },
          show_line = false,
        },
        buffers = {
          path_display = { "smart" },
          show_line = false,
          mappings = {
            n = {
              ["d"] = "delete_buffer",
            },
          },
        },
      },
    },
  },
}
