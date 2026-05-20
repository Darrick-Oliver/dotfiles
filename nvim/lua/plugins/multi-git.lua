return {
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory", "DiffviewClose" },
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<CR>", desc = "Diffview Open" },
      { "<leader>gD", "<cmd>DiffviewFileHistory %<CR>", desc = "Diffview File History" },
    },
  },
  {
    "folke/snacks.nvim",
    keys = {
      { "<leader>gd", false },
    },
  },
}
