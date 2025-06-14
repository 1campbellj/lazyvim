return {
  {
    "s1n7ax/nvim-window-picker",
    name = "window-picker",
    event = "VeryLazy",
    version = "2.*",
    keys = {
      { "w", function()
        local picked_window_id = require('window-picker').pick_window()
        if picked_window_id then
          vim.api.nvim_set_current_win(picked_window_id)
        end
      end, desc = "Pick Window" },
    },
    config = function()
      require("window-picker").setup({
        hint = 'floating-big-letter',
        show_prompt = false,
        picker_config = {
          handle_mouse_click = true
        },
        filter_rules = {
          include_current_win = false,
          autoselect_one = true,
          bo = {
            filetype = { "notify" },
            buftype = { "terminal", "quickfix" },
          },
        },
      })
    end,
  },
}