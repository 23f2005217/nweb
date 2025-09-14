return {
  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      if not opts.extras then
        opts.extras = {}
      end
      table.insert(opts.extras, "lazyvim.plugins.extras.lang.typescript")
    end,
  },
}
