local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

return require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use("jiangmiao/auto-pairs")
	use("tpope/vim-commentary")
	use("tpope/vim-surround")
	use("rlane/pounce.nvim")
	use("williamboman/nvim-lsp-installer")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("jose-elias-alvarez/null-ls.nvim")
	use("L3MON4D3/LuaSnip") --snippet engine
	use("rafamadriz/friendly-snippets") -- a bunch of snippets to use   use('hrsh7th/vim-vsnip')
	use("nvim-treesitter/nvim-treesitter")
	use({
		"hrsh7th/cmp-copilot",
		requires = { { "github/copilot.vim" } },
	})
	use({
		"chriskempson/base16-vim",
		config = function()
			vim.cmd([[colorscheme base16-classic-dark]])
		end,
	})
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)