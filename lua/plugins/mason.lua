
return {
  {
    "williamboman/mason.nvim",
    build = "MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "pyright",
          "clangd",
        },
        automatic_installation = true,
      })
    end,
  },
}

