local utils = require("utils")
-- BUG: required_lsps doesnt actually work
local required_lsps = { "typescript", "tsx", "volar" }
return {
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      utils.list.extend_or_create(opts.ensure_installed, required_lsps)
    end,
  },
}
