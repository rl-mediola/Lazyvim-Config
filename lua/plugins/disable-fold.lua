vim.wo.foldenable = false

return {
  {    
    "nvim-treesitter/nvim-treesitter",
    opts = {
      folds = { enable = false },
    }
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      folds = {
        enabled = false,
      },
    }
  },

}