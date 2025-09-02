return {
  -- Tree-sitter integration
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        -- Core systems/programming languages
        "c",
        "cpp",
        "rust",
        "java",
        "python",
        "ocaml",

        -- Web / scripting
        "lua", -- important for Neovim config
        "javascript",
        "typescript",
        "html",
        "css",

        -- Markup / config
        "json",
        "yaml",
        "toml",
        "markdown",
        "markdown_inline",

        -- Shell & tools
        "bash",
        "regex",
        "gitcommit",
        "gitignore",
        "dockerfile",

        -- Optional but useful
        "vim", -- for legacy vimscript
        "vimdoc",
        "query", -- for writing Treesitter queries
      },
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
}
