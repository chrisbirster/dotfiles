local lsp_zero = require('lsp-zero')

lsp_zero.configure('lua_ls', {
  cmd = { 'lua-language-server' },
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = vim.split(package.path, ';'),
      },
      diagnostics = {
        globals = { 'vim' },
      },
    },
  },
})

lsp_zero.configure('tsserver', {
  on_init = function(client)
    -- disable formatting capabilities
    client.server_capabilities.documentFormattingProvider = false
    client.server_capabilities.documentFormattingRangeProvider = false
  end,
})

lsp_zero.configure('gopls', {
  cmd = { "gopls", "-remote=auto" },
  -- attach to new filetypes too.
  filetypes = { "go", "gomod", "gowork", "gotmpl", "gohtmltmpl" },
  settings = {
    gopls = {
      -- see ftdetect/go.lua.
      ["build.templateExtensions"] = { "gohtml", "html", "gotmpl", "tmpl" },
    },
  },
  -- rest of your config.
})

lsp_zero.set_preferences({
  sign_icons = {
    error = 'E',
    warn = 'W',
    hint = 'H',
    info = 'I',
  },
})

lsp_zero.setup()

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    -- frontend
    'tsserver',
    'eslint',
    'cssls',
    'html',
    'jsonls',

    -- Elixir
    'elixirls',

    -- Golang
    'gopls',

    -- Python
    'pyright',

    -- Toml
    'taplo',
  },
  handlers = {
    lsp_zero.default_setup,
  },
})

vim.diagnostic.config({
  virtual_text = true,
  underline = true,
})
