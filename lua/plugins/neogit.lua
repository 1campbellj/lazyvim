return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",         -- required
    "sindrets/diffview.nvim",        -- optional - Diff integration

    -- Only one of these is needed.
    "nvim-telescope/telescope.nvim", -- optional
    "folke/snacks.nvim",             -- optional
  },
  config = function()
  local neogit = require('neogit')
  neogit.setup({
    mappings = {
      status = {
        ["="] = "Toggle",  -- Use = to toggle files
      }
    }
  })
  
  -- Create :Git command
  vim.api.nvim_create_user_command('Git', function()
    neogit.open()
  end, {})
end
}