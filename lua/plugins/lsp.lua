return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    ----------------------
    -- LuaLS (Lua)
    ----------------------
    lspconfig.lua_ls.setup({
      cmd = { "lua-language-server" },
      filetypes = { "lua" },
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
    })

    ----------------------
    -- Pyright (Python)
    ----------------------
    lspconfig.pyright.setup({
      cmd = { "pyright-langserver", "--stdio" },
      filetypes = { "python" },
    })

    ----------------------
    -- Clangd (C/C++)
    ----------------------
    lspconfig.clangd.setup({
      cmd = { "clangd" },
      filetypes = { "c", "cpp", "objc", "objcpp" },
    })

    ----------------------
    -- JSON
    ----------------------
    lspconfig.jsonls.setup({
      cmd = { "vscode-json-languageserver", "--stdio" },
      filetypes = { "json", "jsonc" },
      -- optional: integrate with schemastore if installed
      -- settings = { json = { schemas = require("schemastore").json.schemas() } }
    })

    ----------------------
    -- HTML
    ----------------------
    lspconfig.html.setup({
      cmd = { "vscode-html-languageserver", "--stdio" },
      filetypes = { "html" },
    })

    ----------------------
    -- CSS / SCSS / LESS
    ----------------------
    lspconfig.cssls.setup({
      cmd = { "vscode-css-languageserver", "--stdio" },
      filetypes = { "css", "scss", "less" },
      settings = {
        css = { validate = true },
        scss = { validate = true },
        less = { validate = true },
      },
    })

    ----------------------
    -- Go
    ----------------------
    lspconfig.gopls.setup({
      cmd = { "gopls" },
      filetypes = { "go" },
    })
  end,
}

