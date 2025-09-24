return {
  {
    "benlubas/molten-nvim",
    version = "^1.0.0",
    dependencies = { "3rd/image.nvim" },
    init = function()
      vim.g.molten_auto_open_output = true
      vim.g.molten_image_provider = "image.nvim"
      vim.g.molten_output_win_max_height = 20

      -- keep output window open
      vim.g.molten_output_win_hide = false
      -- copy results to clipboard (requires `pip install pyperclip`)
      vim.g.molten_copy_output = true
    end,
    config = function()
      vim.keymap.set("n", "<leader>ip", function()
        local venv = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX")
        if venv ~= nil then
          venv = string.match(venv, "/.+/(.+)")
          vim.cmd(("MoltenInit %s"):format(venv))
        else
          vim.cmd("MoltenInit python3")
        end
      end, { desc = "Initialize Molten for python3", silent = true })
      vim.keymap.set("n", "<leader>mi", ":MoltenInit<CR>", { silent = true, desc = "Initialize Molten" })
      vim.keymap.set(
        "n",
        "<leader>me",
        ":MoltenEvaluateOperator<CR>",
        { silent = true, desc = "Molten evaluate operator" }
      )
      vim.keymap.set("n", "<leader>ml", ":MoltenEvaluateLine<CR>", { silent = true, desc = "Molten evaluate line" })
      vim.keymap.set(
        "n",
        "<leader>mr",
        ":MoltenReevaluateCell<CR>",
        { silent = true, desc = "Molten re-evaluate cell" }
      )
      vim.keymap.set(
        "v",
        "<leader>m",
        ":<C-u>MoltenEvaluateVisual<CR>gv",
        { silent = true, desc = "Molten evaluate visual selection" }
      )
    end,
  },
}

