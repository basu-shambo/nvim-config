return{
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        vim.keymap.set('n','<C-f>', ":FzfLua files<CR>")
        vim.keymap.set('n','<C-b>', ":FzfLua buffers<CR>")
    end
}
