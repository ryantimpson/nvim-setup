
-- lua/plugins/lint.lua
return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    lint.linters_by_ft = {
      python = { "flake8" },
      sh     = { "shellcheck" },
      lua    = { "luacheck" },
      cpp    = { "clangtidy" },
      c      = { "clangtidy" },
      json   = { "jq" },
    }

    vim.api.nvim_create_autocmd("BufWritePost", {
      callback = function()
        lint.try_lint()
      end,
    })
  end,
}
