return {
  {
    "ellisonleao/gruvbox.nvim",
    "sainnhe/everforest",
    "ku1ik/vim-monokai",
    "junegunn/seoul256.vim",
    "rebelot/kanagawa.nvim",
    "sainnhe/sonokai",
    "rose-pine/neovim",
    "scottmckendry/cyberdream.nvim",
    "sainnhe/gruvbox-material",
  },
  -- Configure LazyVim to load everforest with transparency
  {
    "LazyVim/LazyVim",
    init = function()
      -- Enable transparent background for everforest
      vim.g.everforest_transparent_background = 1
    end,
    opts = {
      colorscheme = "everforest",
    },
  },
}
