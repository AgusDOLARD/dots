local cmd = vim.cmd
local exec = vim.api.nvim_exec

-- highlight on yank
exec(
	[[
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * silent! lua vim.highlight.on_yank{higroup="IncSearch", timeout=700}
  augroup end
]],
	false
)

cmd([[autocmd InsertEnter * norm zz]])
cmd([[autocmd InsertLeave * set nopaste]])
