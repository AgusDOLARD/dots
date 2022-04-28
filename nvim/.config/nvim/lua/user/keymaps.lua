local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

map('i', 'jj', '<Esc>', default_opts)

map('n', '<S-j>', ':bprev<CR>', default_opts)
map('n', '<S-k>', ':bnext<CR>', default_opts)
map('n', '<S-u>', '<C-r>', default_opts)
map('n', '<leader>q', ':lua require("user.utils").close_buffer()<CR>', default_opts)
map('n', '<leader>e', ':e $MYVIMRC<CR>', default_opts)
map('n', '<leader>w', ':source $MYVIMRC<CR>', { noremap = true})
map('n', '<leader>s', ':w<CR>', default_opts)
map('n', '<BS>', ':nohlsearch<CR>', default_opts)
map('n', 'S', ':%s///g<Left><Left>', { noremap = true })

map('v', 's', ':s//g<Left><Left>', { noremap = true })
map('v', '<BS>', '<Esc>', default_opts)
map('v', '>', '>gv', default_opts)
map('v', '<', '<gv', default_opts)
map('v', '"', '<esc>`>a"<esc>`<i"<esc>', default_opts)
map('v', "'", "<esc>`>a'<esc>`<i'<esc>", default_opts)
map('v', '{', '<esc>`>a}<esc>`<i{<esc>', default_opts)
map('v', '[', '<esc>`>a]<esc>`<i[<esc>', default_opts)
map('v', '(', '<esc>`>a)<esc>`<i(<esc>', default_opts)
map('v', '`', '<esc>`>a`<esc>`<i`<esc>', default_opts)
