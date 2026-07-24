return {
  {
    "folke/lazy.nvim",
    opts = {
      checker = {
        enabled = true, -- auto check plugins update
        notify = false, -- silent check，not show the notify
        frequency = 86400, -- 86400 = 1 day
      },
    },
  },
}
