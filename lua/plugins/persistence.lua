return {
  "folke/persistence.nvim",
  event = "VimEnter",
  opts = {
    options = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp" },
  },
  config = function(_, opts)
    require("persistence").setup(opts)
    
    -- Auto-restore session on startup
    vim.api.nvim_create_autocmd("VimEnter", {
      group = vim.api.nvim_create_augroup("persistence_auto_restore", { clear = true }),
      callback = function()
        -- Only restore if no arguments and no stdin
        if vim.fn.argc() == 0 and not vim.g.started_by_firenvim then
          vim.defer_fn(function()
            require("persistence").load()
          end, 10)
        end
      end,
      nested = true,
    })
  end,
}