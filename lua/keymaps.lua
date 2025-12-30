local toggle_relnum = require("functions").toggle_relnum
vim.g.mapleader = " "
vim.keymap.set('t','<Esc>','<C-\\><C-n>',{noremap=true})
vim.keymap.set('n','<leader><leader>',':nohlsearch<CR>',{noremap=true})
vim.keymap.set('n','<leader>r', toggle_relnum, {desc = "Toggle relative number"}) 
