return {
  "nvim-treesitter/nvim-treesitter", 
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = {
      "lua", "vim", "vimdoc", "query",
      "javascript", "typescript", "json", "ruby"
      -- and many more...
    },
  },
}