local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "ocaml",
    "rust",
    "zig",
    
    "gpg",
    "jq",
    "terraform",
    
    "toml",
    "yaml",
    "dockerfile",
    "json",
    "markdown",
    "markdown_inline",
    
    "go",
    "gomod",
    "gosum",
    "gowork",
    
    "astro",
    "jsdoc",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "scss",
    "svelte",
    "vue",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    "gopls",
    "rust-analyzer",
    "python-lsp-server",

    "astro-language-server",
    "bash-language-server",
    "cspell",
    "emmet-language-server",
    "go-debug-adapter",
    "goimports-reviser",
    "gopls",
    "kotline-debug-adapter",
    "kotlin-languag-server",
    "ocaml-lsp",
    "rust-analyzer",
    "svelte-language-server",
    "tailwindcss-language-server",
    "terraform-ls"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
