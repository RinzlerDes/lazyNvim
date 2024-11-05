return {

  {
    "sainnhe/everforest",
    init = function()
      -- Enable transparent background for everforest
      vim.g.everforest_transparent_background = 2
    end,
  },

  {
    "nyoom-engineering/oxocarbon.nvim",
  },

  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      transparent_mode = true,
    },
  },

  -- Set colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
