local mason = require("mason-lspconfig")
local utils = require("utils")

mason.setup({
  ensure_installed = { "vimls", "lua_ls", "clangd", "docker_language_server", "emmet_language_server", "gopls", "postgres_lsp", "ts_ls", "svelte", "pyright" },
  automatic_enable = {
    "svelte",
    "ts_ls",
    "vimls",
    "lua_ls",
    "pyright",
  }
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function ()
    utils.nnoremap("gd", vim.lsp.buf.definition)
  end
})
