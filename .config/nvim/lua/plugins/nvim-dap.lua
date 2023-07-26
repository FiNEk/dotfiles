return {
  {
    "mfussenegger/nvim-dap",
    opts = function()
      local dap = require("dap")
      require("dap").adapters["pwa-node"] = {
        type = "server",
        host = "127.0.0.1",
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
              type = "pwa-node",
              request = "launch",
              name = "Launch file",
              program = "${file}",
              cwd = "${workspaceFolder}",
            },
            {
              type = "pwa-node",
              request = "attach",
              name = "Attach",
              processId = require("dap.utils").pick_process,
              cwd = "${workspaceFolder}",
            },
          }
        end
      end
      local launchjson_path = vim.fn.getcwd() .. "/.vscode/launch.json"
      local is_launchjson_present = vim.fn.filereadable(launchjson_path) == 1
      if is_launchjson_present then
        require("dap.ext.vscode").load_launchjs(launchjson_path)
      end
    end,
  },
}
