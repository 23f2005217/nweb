-- Create (or get) the augroup ID
local group = vim.api.nvim_create_augroup("wrap_spell", { clear = true })

-- Now redefine the autocommand in that group
vim.api.nvim_create_autocmd("FileType", {
  group = group,
  pattern = { "text", "plaintex", "typst", "gitcommit", "markdown" },
  callback = function()
    local filetype = vim.bo.filetype

    -- Disable for programming filetypes
    local excluded = {
      python = true,
      javascript = true,
      typescript = true,
      lua = true,
      c = true,
      cpp = true,
      rust = true,
      java = true,
      sh = true,
      bash = true,
      zsh = true,
      go = true,
    }

    if not excluded[filetype] then
      vim.opt_local.wrap = true
      vim.opt_local.spell = true
    else
      vim.opt_local.wrap = false
      vim.opt_local.spell = false
    end
  end,
})
