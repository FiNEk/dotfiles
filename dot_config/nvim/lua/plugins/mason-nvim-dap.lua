local utils = require("utils")
return {
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = function(_, opts)
      utils.list.extend_or_create(opts.ensure_installed, {
        "js-debug-adapter",
      })
    end,
  },
}
