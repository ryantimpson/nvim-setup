for _, group in ipairs({ "Error", "Warn", "Info", "Hint" }) do
  vim.api.nvim_set_hl(0, "DiagnosticUnderline" .. group, { underline = false })
end

vim.diagnostic.config({
  underline = false,
  virtual_text = true,
  signs = true,
})
