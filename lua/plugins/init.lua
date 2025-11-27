return {
  require("plugins.treesitter"),
  require("plugins.nerdtree"),
  require("plugins.lint"),
  require("plugins.commentary"),
  require("plugins.fzf"),
  require("plugins.lsp"),
  unpack(require("plugins.mason")),
}

