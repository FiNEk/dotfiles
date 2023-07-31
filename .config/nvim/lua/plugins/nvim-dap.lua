return {
  {
    "mfussenegger/nvim-dap",
    opts = function()
      local dap = require("dap")
      require("dap").adapters["node"] = {
        type = "server",
        host = "localhost",
        port = "${port}",
        executable = {
          command = "node",
          args = {
            require("mason-registry").get_package("js-debug-adapter"):get_install_path()
              .. "/js-debug/src/dapDebugServer.js",
            "${port}",
          },
        },
      }
      for _, language in ipairs({ "typescript", "javascript" }) do
        if not dap.configurations[language] then
          dap.configurations[language] = {
            {
              type = "node",
              request = "launch",
              name = "Launch file",
              program = "${file}",
              cwd = "${workspaceFolder}",
            },
            {
              type = "node",
              request = "attach",
              name = "Attach",
              processId = require("dap.utils").pick_process,
              cwd = "${workspaceFolder}",
            },
          }
        end
      end
      -- if launch.json exists then load it
      if vim.fn.filereadable(".vscode/launch.json") == 1 then
        require("dap.ext.vscode").load_launchjs(nil, { node = { "javascript", "typescript" } })
      end
    end,
    -- keys = {
    --   {
    --     "<leader>dL",
    --     function()
    --       require("dap.ext.vscode").load_launchjs(nil, { pwa_node = { "javascript", "typescript" } })
    --     end,
    --     desc = "Load launch.json",
    --   },
    -- },
  },
}
