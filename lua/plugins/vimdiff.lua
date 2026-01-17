return {
  'sindrets/diffview.nvim',
  dependencies= {'nvim-lua/plenary.nvim'},
  opts = {},
  config = function()
    vim.keymap.set('n', '<leader>gdo', ":DiffviewOpen<CR>", {noremap=true})
    vim.keymap.set('n', '<leader>gdc', ":DiffviewClose<CR>", {noremap=true})
  end
}
