return {
  {
    "mfussenegger/nvim-dap",
    keys = {
      { "<leader>cb", "<cmd>DapToggleBreakpoint<cr>", desc = "Toggle breakpoint", mode = "n" },
      { "<leader>cc", "<cmd>DapContinue<cr>", desc = "Continue debug session", mode = "n" },
      { "<leader>cs", "<cmd>DapStepInto<cr>", desc = "Stepping through code", mode = "n" },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap, dapui = require("dap"), require("dapui")
      dapui.setup()
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      vim.keymap.set("n", "<leader>cpr", "<cmd>lua require('dap-python').test_method()<cr>", { desc = "Debug python run" })
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function()
      require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")
    end,
  },
}
