vim.pack.add({
  {
    src = "https://github.com/neovim/nvim-lspconfig";
  }
})

-- TypeScript / JavaScript
vim.lsp.enable("ts_ls")

-- ESLint
vim.lsp.enable("eslint")

-- IntelliSense/autocomplete
vim.opt.completeopt = {
  "menuone",
  "noselect",
  "popup",
}

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    if client == nil then
      return
    end

    if client:supports_method("textDocument/completion") then
      vim.lsp.completion.enable(true, client.id, args.buf, {
        autotrigger = false,
      })
    end 

    local map = vim.keymap.set
    local opts = { buffer = args.buf }    

    map("n", "gd", vim.lsp.buf.definition, opts)
    map("n", "gr", vim.lsp.buf.references, opts)
    map("n", "K", vim.lsp.buf.hover, opts)
    map("n", "<leader>rn", vim.lsp.buf.rename, opts)
    map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    
    map("n", "<leader>e", function()
      vim.diagnostic.open_float(nil, {
        scope = "cursor",
      })
    end, opts)

  
    map("n", "]d", function()
      vim.diagnostic.jump({
        count = 1,
        float = true,
      })
    end, opts)

    map("n", "[d", function()
      vim.diagnostic.jump({
        count = -1,
        float = true,
      })
    end, opts)


    map("i", "<C-Space>", function()
      vim.lsp.completion.get()
    end, opts)
  end,
})
