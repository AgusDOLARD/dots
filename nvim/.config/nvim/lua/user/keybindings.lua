local map = vim.api.nvim_set_keymap
local opts = { noremap = true }
local silent = { noremap = true, silent = true }

map("c", "<M-j>", "<Down>", opts)
map("c", "<M-k>", "<Up>", opts)

map("i", "jj", "<Esc>", silent)
-- map("i", "<M-n>", "<C-o><Right>", silent)
-- map("i", "<M-b>", "<C-o><Left>", silent)

map("n", "<BS>", "<cmd>nohlsearch<CR>", silent)
map("n", "<S-u>", "<C-r>", silent)
map("n", "J", "<cmd>bp<cr>", silent)
map("n", "K", "<cmd>bn<cr>", silent)
map("n", "<leader>e", "<cmd>e $MYVIMRC<CR>", silent)
map("n", "<leader>q", "<cmd>lua require('user.utils').close_buffer()<cr>", silent)
map("n", "<leader>s", "<cmd>w<CR>", silent)
map("n", "<leader>w", "<cmd>so %<CR>", silent)
map("n", "S", ":%s//g<Left><Left>", opts)
map("n", "<M-p>", ":find ", opts) -- open the find prompt
-- map("n", "<M-o>", "<cmd>Lexplore<cr>", silent)

map("v", "<", "<gv", silent)
map("v", "<BS>", "<Esc>", silent)
map("v", ">", ">gv", silent)
map("v", "<leader>s", ":s//g<Left><Left>", opts)

map("v", "'", "<esc>`>a'<esc>`<i'<esc>", silent)
map("v", "{", "<esc>`>a}<esc>`<i{<esc>", silent)
map("v", "[", "<esc>`>a]<esc>`<i[<esc>", silent)
map("v", "(", "<esc>`>a)<esc>`<i(<esc>", silent)
map("v", "`", "<esc>`>a`<esc>`<i`<esc>", silent)
