local utils = require("utils")
local required_parsers = { "typescript", "tsx", "vue" }
return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      utils.list.extend_or_create(opts.ensure_installed, required_parsers)
    end,
  },
}
