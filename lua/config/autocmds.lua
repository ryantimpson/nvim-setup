-- lua/config/autocmds.lua
local theme = require("colors.mytheme")

vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "*",
  callback = function()
    vim.cmd("lcd " .. vim.fn.expand("%:p:h"))
  end,
})

-- Create a custom highlight group for view mode
vim.api.nvim_set_hl(0, "ViewNormal", { fg = theme.fg, bg = theme.view_bg })

-- Autocmd for entering/leaving visual mode
vim.api.nvim_create_autocmd("ModeChanged", {
  pattern = "*",
  callback = function()
    local mode = vim.fn.mode()
    local win = vim.api.nvim_get_current_win()
    if mode:match("[vV]") then
      -- Enter visual mode: apply custom highlight to this window only
      vim.wo[win].winhighlight = "Normal:ViewNormal"
    else
      -- Leave visual mode: reset window highlight
      vim.wo[win].winhighlight = ""
    end
  end
})

