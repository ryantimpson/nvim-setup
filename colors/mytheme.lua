-- ~/.config/nvim/colors/mytheme.lua

-- Basics

	vim.cmd("highlight clear")
	vim.cmd("syntax reset")
	vim.o.background = "dark"
	vim.g.colors_name = "mytheme"


-- winsseparator

	vim.api.nvim_set_hl(0, "WinSeparator", {fg = "#0F0F0F", bg = "NONE", bold = true})

-- statusline

	vim.api.nvim_set_hl(0, "StatusLine", { fg = "#FFFFFF", bg = "#0F0F0F", bold = true})
	vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#BABABA", bg = "#000000"})

-- winbar

	vim.api.nvim_set_hl(0, "Winbar", { fg = "#FFFFFF", bg = "#0F0F0F", bold = true})
	vim.api.nvim_set_hl(0, "WinbarNC", { fg = "#BABABA", bg = "#000000"})

-- basic highlight groups

	vim.api.nvim_set_hl(0, "Normal", { fg = "#ffffff", bg = "#000000" })
	vim.api.nvim_set_hl(0, "Comment", { fg = "#4B4B4B", italic = true})
	vim.api.nvim_set_hl(0, "Constant", { fg = "#E8AF89" })
	vim.api.nvim_set_hl(0, "String", { fg = "#61d1ac" })
	vim.api.nvim_set_hl(0, "Function", { fg = "#D6D6B9" })
	vim.api.nvim_set_hl(0, "Keyword", { fg = "#C5D5B0", bold = true })

	vim.api.nvim_set_hl(0, "Type", { fg = "#ADACFE" })
	vim.api.nvim_set_hl(0, "TypeQualifier", { fg = "#ADFFFF" })
	vim.api.nvim_set_hl(0, "TypeIdentifier", { fg = "#61D1AC" })
	vim.api.nvim_set_hl(0, "StorageClass", { fg = "#ADFFCA" })

	vim.api.nvim_set_hl(0, "Identifier", { fg = "#7EE5E4" })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#E6DF86", italic = true })
	vim.api.nvim_set_hl(0, "CursorLine", { bg = "#1E1E1E" })
	vim.api.nvim_set_hl(0, "Visual", { bg =  "#081818" })
	vim.api.nvim_set_hl(0, "Namespace", { fg = "#700000"})
