-- ~/.config/nvim/lua/plugins/fzf.lua
return {
  { 
    "junegunn/fzf",
    build = function()
      vim.fn["fzf#install"]()
    end
  },
  { "junegunn/fzf.vim" }
}

