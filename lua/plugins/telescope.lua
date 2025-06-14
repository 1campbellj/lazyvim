return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>fg", LazyVim.pick("live_grep"), desc = "Grep (Root Dir)" },
    { "<leader>ff", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    { "<leader>fr", "<cmd>Telescope resume<cr>", desc = "Resume" },
    { "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Recent" },
  },
  opts = {
    defaults = {
      cwd = vim.fn.getcwd(),
    },
    pickers = {
      find_files = {
        cwd = vim.fn.getcwd(),
      },
      live_grep = {
        cwd = vim.fn.getcwd(),
      },
    },
  },
}