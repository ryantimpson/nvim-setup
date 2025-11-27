vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    vim.cmd("lcd " .. vim.fn.expand("%:p:h"))
  end,
})

