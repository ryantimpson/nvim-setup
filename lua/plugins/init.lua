return {
  require("plugins.treesitter"),
  require("plugins.lint"),
  require("plugins.commentary"),
  require("plugins.fzf"),
  require("plugins.comment"),
  unpack(require("plugins.mason")),
  require("plugins.lsp"),
  require("plugins.markdown-preview"),
}

