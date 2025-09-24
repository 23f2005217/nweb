return {
  {
    "Vigemus/iron.nvim",
    config = function()
      local iron = require("iron.core")
      local view = require("iron.view")
      local common = require("iron.fts.common")

      iron.setup({
        config = {
          scratch_repl = true,
          repl_definition = {
            python = {
              command = { "python3" },
              format = common.bracketed_paste_python,
            },
            sh = {
              command = { "bash" },
            },
          },
          repl_open_cmd = view.split.vertical.botright(0.3),
        },
        keymaps = {
          toggle_repl = "<leader>rr",
          send_line = "<leader>rl",
          visual_send = "<leader>rv",
          send_file = "<leader>rf",
        },
      })
    end,
  },
}
