local augroup = vim.api.nvim_create_augroup -- Create/get autocommand group
local autocmd = vim.api.nvim_create_autocmd -- Create autocommand

local autoneotree_group = augroup('Neotree', {})
autocmd({ 'UiEnter' }, {
  desc = 'Automatically open Neotree on Vim Startup',
  callback = function()
    if vim.fn.argc() == 0 then
      vim.cmd 'Neotree toggle'
    end
  end,
  group = autoneotree_group,
})
