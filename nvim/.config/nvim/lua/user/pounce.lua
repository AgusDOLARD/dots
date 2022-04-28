require'pounce'.setup{
  accept_keys = "ASDFGHJKLCVNMB",
  accept_best_key = "<enter>",
  multi_window = true,
  debug = false,
}

vim.api.nvim_set_keymap('n', 'f', ':Pounce<CR>' , {noremap = true})
