return {
  "vim-test/vim-test",
  keys = {
    { "<leader>t", "<cmd>TestNearest<cr>", desc = "Test Nearest" },
    { "<leader>T", "<cmd>TestFile<cr>", desc = "Test File" },
  },
  config = function()
    vim.g["test#strategy"] = "neovim"
  end
}