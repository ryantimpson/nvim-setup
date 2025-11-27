
--~/.config/nvim/init.lua

--Leader key
vim.g.mapleader = " "

--  General binds
	vim.keymap.set("n", "<leader>e", vim.cmd.Ex)
	vim.keymap.set("n", "<leader>w", ":w<CR>", { noremap = true, silent = true, desc = "Save file" })
	vim.keymap.set("n", "<leader>q", ":wq<CR>", { noremap = true, silent = true, desc = "Save & Quit nvim" })
-- Increase Scale
	vim.keymap.set("n", "<C-=>", function()
		vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1 end, {desc = "Zoom In"})
	-- Decrease Scale
	vim.keymap.set("n", "<C-->", function()
		vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1 end, {desc = "Zoom Out"})
	-- Reset Scale
	vim.keymap.set("n", "<C-0>", function()
		vim.g.neovide_scale_factor = 10.0 end, {desc = "Reset Zoom"})

 	-- split keybinds
		vim.keymap.set("n", "<leader>s", ":vsplit<CR>", { noremap = true, silent = true, desc = "vertical split" })
		vim.keymap.set("n", "<leader>z", ":split<CR>", { noremap = true, silent = true, desc = "horizontal split" })
		-- split movement
			vim.keymap.set("n", "<Left>", ":wincmd h<CR>", { noremap = true, silent = true, desc = "Move to Left Split"})
			vim.keymap.set("n", "<Right>", ":wincmd l<CR>", { noremap = true, silent = true, desc = "Move to Right Split"})
			vim.keymap.set("n", "<Down>", ":wincmd j<CR>", { noremap = true, silent = true, desc = "Move Down Split"})
			vim.keymap.set("n", "<Up>", ":wincmd k<CR>", { noremap = true, silent = true, desc = "Move Up Split" })

	-- Navigation
		vim.keymap.set("n", "<leader>k", 'H', { noremap = true, desc = "Jump to top of screen"})
		vim.keymap.set("n", "<leader>j", 'L', { noremap = true, desc = "Jump to bottom of screen"})
		vim.keymap.set("n", "K", '{', { noremap = true, desc = "Jump up paragraph"})
		vim.keymap.set("n", "J", '}', { noremap = true, desc = "Jump down paragraph"})
		vim.keymap.set("n", "L", 'E', { noremap = true, desc = "jump to end of word"})
		vim.keymap.set("n", "H", 'B', { noremap = true, desc = "jump to start of word"})
		vim.keymap.set("n", "<leader>u", "<C-r>", { noremap = true, desc = "redo"})
		vim.keymap.set("n", "<leader>l", "$", { noremap = true, silent = true, desc = "jump to end of line"})
		vim.keymap.set("n", "<leader>h", "^", { noremap = true, silent = true, desc = "jump to start of line"})

	-- line/character alter
		vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true, desc = "Move line down 1"})
		vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true, desc = "Move line up 1"})
		vim.keymap.set("n", "<A-J>", "mzgJ`z", { noremap = true, silent = true, desc = "bring next line to cursor"})
		vim.keymap.set("n", "<A-h>", [[:s/\%#\s\+//<CR>]], { noremap = true, silent = true, desc = "Remove whitespace between cursor and next character"})
	--App binds
		--NERDTree
			vim.keymap.set('n', '<leader>n', ':NERDTreeToggle<CR>', { noremap = true, silent = true, desc = "nerdtreetoggle" })

-- General settings
	vim.opt.number = true
	vim.opt.relativenumber = true
	vim.opt.tabstop = 4
	vim.opt.shiftwidth = 4
	vim.opt.clipboard = "unnamedplus"


	--Appearance
		--Layout
			vim.o.statusline = "%l/%L"
			vim.o.winbar = " %y %f"
		-- Colorscheme
			vim.cmd("colorscheme mytheme")

		-- Highlight Yank
		vim.api.nvim_create_autocmd("TextYankPost", {
		  desc = "Highlight yanked text",
		  group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
		  callback = function()
			vim.highlight.on_yank({
			  higroup = "IncSearch",
			  timeout = 200,
			})
		  end,
		})

-- Plugin Management with lazy.nvim
-- ===================================
-- Auto-install lazy.nvim if not installed


	-- Auto-install lazy.nvim
	local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
	if not vim.loop.fs_stat(lazypath) then
	  vim.fn.system({
		"git", "clone", "--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git", lazypath
	  }) end vim.opt.rtp:prepend(lazypath) -- Load plugins
	require("lazy").setup("plugins")

	-- Load configs
	require("config.autocmds")

	-- Load diagnostics
	require("config.diagnostics")
