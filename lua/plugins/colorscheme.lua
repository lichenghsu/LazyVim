return {
  -- 1. 宣告並安裝你想要的主題外掛
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- 確保優先載入
    opts = {
      -- 不畫背景色，讓 kitty 的透明 + Hyprland blur 透出來（毛玻璃）
      transparent_background = true,
      float = { transparent = true, solid = false },
      custom_highlights = function()
        return {
          NormalFloat = { bg = "NONE" },
          FloatBorder = { bg = "NONE" },
          NeoTreeNormal = { bg = "NONE" },
          NeoTreeNormalNC = { bg = "NONE" },
          SnacksPicker = { bg = "NONE" },
          SnacksDashboardNormal = { bg = "NONE" },
        }
      end,
    },
  },

  -- 2. 告訴 LazyVim 預設要使用這個主題
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
