return {
  "stevearc/conform.nvim", 
  opts = function(_, opts)
    opts.formatters_by_ft = opts.formatters_by_ft or {}
    
    -- Only format with rubocop if .rubocop.yml exists
    opts.formatters_by_ft.ruby = function(bufnr)
      local rubocop_config = vim.fs.find(".rubocop.yml", { 
        path = vim.api.nvim_buf_get_name(bufnr),
        upward = true 
      })[1]
      
      if rubocop_config then
        return { "rubocop" }
      else
        return {}
      end
    end
    
    return opts
  end,
}