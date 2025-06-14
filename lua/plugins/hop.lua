return {
  "phaazon/hop.nvim",
  keys = {
    { "s",  "<cmd>HopChar1<CR>", desc = "Hop 1 char" },
    { "S", "<cmd>HopChar2MW<CR>", desc = "Hop 2 chars" } 
  },
  config = function()
    require("hop").setup()
  end,
}