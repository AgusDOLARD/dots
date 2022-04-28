local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
	return
end

local actions = require("telescope.actions")

telescope.setup({
	defaults = {

		prompt_prefix = "|>",
		selection_caret = "|>",
		path_display = { "smart" },

		mappings = {
			i = {
				["<M-j>"] = actions.move_selection_next,
				["<M-k>"] = actions.move_selection_previous,
				["<C-c>"] = actions.close,
				["<esc>"] = actions.close,
			},
		},
	},
	pickers = {},
	extensions = {},
})

vim.api.nvim_set_keymap("n", "<M-p>", ':lua require("telescope.builtin").find_files()<CR>', { noremap = true })
vim.api.nvim_set_keymap("n", "<C-p>", ':lua require("telescope.builtin").git_files()<CR>', { noremap = true })
