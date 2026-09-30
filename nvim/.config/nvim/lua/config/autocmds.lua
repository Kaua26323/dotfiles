local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Highlight copied text
local highlight_group = augroup("YankHighlight", {
  clear = true,
})

autocmd("TextYankPost", {
  group = highlight_group,
  callback = function()
    vim.highlight.on_yank()
  end,
})
