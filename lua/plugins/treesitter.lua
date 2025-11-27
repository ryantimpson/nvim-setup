-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
		ensure_installed = {"cpp", "c", "lua", "python", "bash", "json" },
	  highlight = {
        enable = true,  -- Enable syntax highlighting
      },
    })
  end,
}

