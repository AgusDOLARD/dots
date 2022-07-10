------------- General ----------
local g = vim.g
local opt = vim.opt

g.mapleader = " "
g["AutoPairsShortcutToggle"] = ""
opt.background = "dark"
opt.clipboard = "unnamedplus"
opt.expandtab = true
opt.ignorecase = true
opt.laststatus = 0
opt.linebreak = true
opt.path = { "**", ".", "," }
opt.ruler = false
opt.scrolloff = 5
opt.shiftwidth = 4
opt.showcmd = false
opt.showmode = false
opt.smartcase = true
opt.smartindent = true
opt.swapfile = false
opt.tabstop = 4
opt.termguicolors = true
opt.undodir = os.getenv("XDG_CACHE_HOME") .. "/nvim/undo"
opt.undofile = true
opt.undolevels = 1000
opt.wildignore = { "*/.git/*" }
opt.wildmenu = true

------------- Utils ----------
local fn = vim.fn
local function Count_bufs_by_type(loaded_only)
	loaded_only = (loaded_only == nil and true or loaded_only)
	local count = { normal = 0, acwrite = 0, help = 0, nofile = 0, nowrite = 0, quickfix = 0, terminal = 0, prompt = 0 }
	local buftypes = vim.api.nvim_list_bufs()
	for _, bufname in pairs(buftypes) do
		if not loaded_only or vim.api.nvim_buf_is_loaded(bufname) then
			local buftype = vim.api.nvim_buf_get_option(bufname, "buftype")
			buftype = buftype ~= "" and buftype or "normal"
			count[buftype] = count[buftype] + 1
		end
	end
	return count
end

function close_buffer()
	local bufTable = Count_bufs_by_type()
	if bufTable.normal <= 1 then
		local result = vim.api.nvim_exec([[:q]], true)
	else
		local result = vim.api.nvim_exec([[:bd]], true)
	end
end

------------- Keybindings -------------
local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

map("c", "<M-j>", "<Down>", { noremap = true })
map("c", "<M-k>", "<Up>", { noremap = true })

map("i", "jj", "<Esc>", default_opts)

map("n", "<BS>", ":nohlsearch<CR>", default_opts)
map("n", "<M-p>", ":find ", { noremap = true })
map("n", "<S-j>", ":bp<CR>", default_opts)
map("n", "<S-k>", ":bn<CR>", default_opts)
map("n", "<S-u>", "<C-r>", default_opts)
map("n", "<leader>e", ":e $MYVIMRC<CR>", default_opts)
map("n", "<leader>q", ":lua close_buffer()<CR>", default_opts)
map("n", "<leader>s", ":w<CR>", default_opts)
map("n", "<leader>w", ":so %<CR>", { noremap = true })
map("n", "S", ":%s///g<Left><Left>", { noremap = true })

map("v", "'", "<esc>`>a'<esc>`<i'<esc>", default_opts)
map("v", "(", "<esc>`>a)<esc>`<i(<esc>", default_opts)
map("v", "<", "<gv", default_opts)
map("v", "<BS>", "<Esc>", default_opts)
map("v", ">", ">gv", default_opts)
map("v", "[", "<esc>`>a]<esc>`<i[<esc>", default_opts)
map("v", "`", "<esc>`>a`<esc>`<i`<esc>", default_opts)
map("v", "s", ":s//g<Left><Left>", { noremap = true })
map("v", "{", "<esc>`>a}<esc>`<i{<esc>", default_opts)
map("v", '"', '<esc>`>a"<esc>`<i"<esc>', default_opts)

------------- Autocommands -------------
local group = vim.api.nvim_create_augroup("Custom", { clear = true })
vim.api.nvim_create_autocmd("InsertEnter", { command = "norm zz", group = group })
vim.api.nvim_create_autocmd("TextYankPost", { command = "lua vim.highlight.on_yank()", group = group })

------------- Plugins -------------
require("packer").startup(function(use)
	use({ "wbthomason/packer.nvim" })
	use({ "tpope/vim-surround" })
	use({ "tpope/vim-commentary" })
	use({ "github/copilot.vim" })
	use({ "jiangmiao/auto-pairs" })
	use({ "mhartington/formatter.nvim"})
	use({ "chriskempson/base16-vim"})
	use({"rlane/pounce.nvim"})
	use({
		"hrsh7th/nvim-cmp",
		requires = { { "hrsh7th/cmp-buffer" }, { "hrsh7th/cmp-path" } }
	})
end)

require("user.cmp")
require("user.formatter") 
vim.api.nvim_set_keymap("n", "f", ":Pounce<CR>", { noremap = true })
vim.cmd("colorscheme base16-classic-dark") 
