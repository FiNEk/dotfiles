return {
  {
    "nvim-treesitter/nvim-treesitter",
    -- dependencies = { "andymass/vim-matchup" },
    -- init = function()
    --   vim.g.matchup_matchparen_offscreen = { method = "popup", fullwidth = 1, highlight = "Normal", syntax_hl = 1 }
    --   vim.g.matchup_matchparen_deferred = 1
    -- end,
    opts = function(_, opts)
      local utils = require("utils")
      local required_parsers = { "typescript", "tsx", "vue" }
      utils.list.extend_or_create(opts.ensure_installed, required_parsers)
    end,
  },
}
