local map = require("user.utils").map
local normap = { noremap = true }

map("c", "<M-j>", "<Down>", normap)
map("c", "<M-k>", "<Up>", normap)

map("i", "jj", "<Esc>")

map("n", "<BS>", "<cmd>nohlsearch<CR>")
map("n", "<S-j>", "<cmd>bp<CR>")
map("n", "<S-k>", "<cmd>bn<CR>")
map("n", "<S-u>", "<C-r>")
map("n", "<leader>e", "<cmd>e $MYVIMRC<CR>")
map("n", "<leader>q", "<cmd>lua require('user.utils').close_buffer()<cr>")
map("n", "<leader>s", "<cmd>w<CR>")
map("n", "<leader>w", "<cmd>so %<CR>")
map("n", "S", ":%s//g<Left><Left>", normap)

map("v", "<", "<gv")
map("v", "<BS>", "<Esc>")
map("v", ">", ">gv")
map("v", "<leader>s", ":s//g<Left><Left>", normap)

map("v", "'", "<esc>`>a'<esc>`<i'<esc>")
map("v", "{", "<esc>`>a}<esc>`<i{<esc>")
map("v", "[", "<esc>`>a]<esc>`<i[<esc>")
map("v", "(", "<esc>`>a)<esc>`<i(<esc>")
map("v", "`", "<esc>`>a`<esc>`<i`<esc>")
