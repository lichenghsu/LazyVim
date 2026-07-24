-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

--  git check for upstream update when start in background
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local nvim_path = vim.fn.stdpath("config")
    -- git fetch upstream in the background
    vim.fn.jobstart({ "git", "-C", nvim_path, "fetch", "upstream" }, { detach = true })
  end,
})
