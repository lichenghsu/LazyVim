-- Some LSP servers (e.g. vue_ls/angularls) send `client/registerCapability`
-- requests with a missing `registrations` field, which violates the LSP spec
-- and crashes vim.lsp.Client:_register (bad argument #1 to 'ipairs', got nil).
-- Guard against it here, before any plugin (snacks.nvim in particular) wraps
-- vim.lsp.handlers['client/registerCapability'].
do
  local orig = vim.lsp.handlers["client/registerCapability"]
  vim.lsp.handlers["client/registerCapability"] = function(err, result, ctx, config)
    if result and result.registrations == nil then
      result.registrations = {}
    end
    return orig(err, result, ctx, config)
  end
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
