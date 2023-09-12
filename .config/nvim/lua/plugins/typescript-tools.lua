return {
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = function(_, opts)
      local mason_registry = require("mason-registry")
      local tsserver_path = mason_registry.get_package("typescript-language-server"):get_install_path()
      opts.settings = {
        tsserver_path = tsserver_path .. "/node_modules/typescript/lib/tsserver.js",
        expose_as_code_action = {
          "fix_all",
          "add_missing_imports",
          "remove_unused",
        },
      }
    end,
  },
}
