return {
  -- 1. 宣告並安裝你想要的主題外掛
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- 確保優先載入
  },

  -- 2. 告訴 LazyVim 預設要使用這個主題
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
