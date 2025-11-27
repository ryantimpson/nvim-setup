
return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    -- Setup Pyright for Python
    lspconfig.pyright.setup({})

    -- Setup LuaLS for Lua
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },  -- Lua globals like `vim`
          },
          workspace = {
			library = vim.api.nvim_get_runtime_file("", true),
			checkThirdParty =  false,
		},
      	  telemetry = {enable = false},
		},
	},
})

    -- Setup Clangd for C/C++
    lspconfig.clangd.setup({})
    
    -- Add more LSP servers as needed, for example:
    -- lspconfig.tsserver.setup({})
    -- lspconfig.gopls.setup({})
  end,
}

