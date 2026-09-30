vim.pack.add({
  "https://github.com/nvim-treesitter/nvim-treesitter",
})

local treesitter = require("nvim-treesitter")

treesitter.install({
  "typescript",
  "tsx",
  "javascript",
  "c",
  "lua",
  "json",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = {
    "typescript",
    "typescriptreact",
    "javascript",
    "javascriptreact",
    "c",
    "lua",
    "json",
  },

  callback = function()
    vim.treesitter.start()
  end,
})
