return {
  -- Add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = { -- Corretto "opt" in "opts"
      transparent_mode = true, -- Imposta la trasparenza globale
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
    config = function()
      require("gruvbox").setup({
        transparent_mode = true,
      })
      vim.cmd("colorscheme gruvbox") -- Applica il tema
    end,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
