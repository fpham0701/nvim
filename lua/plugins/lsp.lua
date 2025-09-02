return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    opts = {
      -- List of servers to ensure are installed by mason-lspconfig
      inlay_hints = { enabled = true },
      ---@type lspconfig.options
      servers = {
        -- Python
        pyright = {},
        ruff_lsp = {},

        -- Rust
        rust_analyzer = {
          settings = {
            ["rust-analyzer"] = {
              cargo = { allFeatures = true },
              checkOnSave = {
                command = "clippy",
              },
              diagnostics = {
                enable = true,
              },
            },
          },
        },

        -- C / C++
        clangd = {},

        -- Java
        jdtls = {},

        -- OCaml
        ocamllsp = {},

        -- Web
        tsserver = {}, -- JavaScript / TypeScript
        html = {},
        cssls = {},

        -- Config / data formats
        jsonls = {},
        yamlls = {},
        taplo = {}, -- TOML

        -- Bash
        bashls = {},

        -- Lua (Neovim config)
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = { globals = { "vim" } },
              workspace = {
                library = vim.api.nvim_get_runtime_file("", true),
                checkThirdParty = false,
              },
              telemetry = { enable = false },
            },
          },
        },
      },
    },
  },
}
