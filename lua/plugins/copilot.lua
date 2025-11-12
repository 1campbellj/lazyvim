return {
    {
      "zbirenbaum/copilot.lua",
      cmd = "Copilot",
      event = "InsertEnter",
      opts = {
        copilot_node_command = "/opt/homebrew/bin/node",
        suggestion = {
          enabled = true,
          auto_trigger = true,   -- start suggesting automatically
          debounce = 75,
          keymap = {
            accept = "<Tab>",    -- ← Tab accepts suggestion
            next = "<M-]>",      -- Alt + ] cycles forward
            prev = "<M-[>",      -- Alt + [ cycles backward
            dismiss = "<C-]>",   -- Ctrl + ] dismisses
          },
        },
        panel = { enabled = false }, -- turn off side panel
        filetypes = {
          markdown = true,
          gitcommit = true,
          yaml = true,
          ["*"] = true, -- enable everywhere
        },
      },
      config = function(_, opts)
        require("copilot").setup(opts)
      end,
    },
  }
  