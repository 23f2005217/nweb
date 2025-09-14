local builtin = require("telescope.builtin")
vim.keymap.set("i", "<C-Left>", "<C-o>b", { desc = "Move back a word" })
vim.keymap.set("i", "<C-z>", "<C-o>u", { desc = "Undo" })
vim.keymap.set("i", "<C-y>", "<C-o><C-r>", { desc = "Redo" })
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select all" })
vim.keymap.set("i", "<C-e>", "<C-o>$", { desc = "Move to end of line" })
vim.keymap.set("n", "<leader>m", function()
  vim.lsp.buf.format({ async = true })
end, { desc = "Format code" })

vim.keymap.set("v", "<leader>x", '"+d', { desc = "Cut selection to clipboard" })
vim.keymap.set("n", "<leader>x", '"+dd', { desc = "Cut line to clipboard" })

vim.keymap.set("i", "<C-x>", function()
  if vim.fn.mode() == "i" and vim.fn.getreg("v") ~= "" then
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Esc>"+dgi', true, false, true), "n", false)
  else
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<Esc>"+ddi', true, false, true), "n", false)
  end
end, { desc = "Cut selection or line to clipboard" })

vim.keymap.set({ "n", "v" }, "d", [["_d]], { desc = "Delete without copying" })
vim.keymap.set({ "n", "v" }, "D", [["_D]], { desc = "Delete line without copying" })
vim.keymap.set({ "n", "v" }, "x", [["_x]], { desc = "Delete character without copying" })

vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader><leader>", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
