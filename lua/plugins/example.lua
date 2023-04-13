
return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },

  {'nvim-lua/plenary.nvim',},
  {'stevearc/dressing.nvim',},
  {
      'akinsho/flutter-tools.nvim',
      lazy = false,
      dependencies = {
          'nvim-lua/plenary.nvim',
          'stevearc/dressing.nvim', -- optional for vim.ui.select
      },
      config = function()
        require("flutter-tools").setup {
          widget_guides = {
            enabled = true,
          },
        }
      end
  },
}
