
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
          "cssls",
		  "html",
		  "lua_ls",
          "pyright",
          "clangd",
		  "jsonls",
		  "gopls",
        },
        automatic_installation = true,
      })
    end,
  },
}

