-- ~/.config/nvim/lua/plugins/nerdtree.lua
return {
  "preservim/nerdtree",
  config = function()
    vim.keymap.set('n', '<leader>n', ':NERDTreeToggle<CR>', { noremap = true, silent = true, desc = "Toggle NerdTree" })
  end,
}

