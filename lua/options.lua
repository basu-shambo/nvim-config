local enable_relnum  = require("functions").enable_relnum
local disable_relnum = require("functions").disable_relnum

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set textwidth=0")
vim.opt.clipboard = "unnamedplus"

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.opt.formatoptions:remove({ "c", "r", "o" })
    end,
})

vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter", "TermOpen" }, {
    pattern = "*",
    callback = function()
        local buftype = vim.bo.buftype
        if buftype == "" then
            vim.wo.number = true
            vim.wo.relativenumber = true
        else
            vim.wo.number = false
            vim.wo.relativenumber = false
        end
    end,
})
print(disable_relnum)
vim.api.nvim_create_autocmd({ "BufLeave", "WinLeave" }, {
  pattern = "*",
  callback = disable_relnum,
})

-- Define a custom yank highlight group using a color from your theme
vim.api.nvim_set_hl(0, "YankHighlight", {
  bg = vim.api.nvim_get_hl_by_name("Visual", true).background,
  fg = vim.api.nvim_get_hl_by_name("Visual", true).foreground,
})

-- Highlight on yank using that group
vim.api.nvim_create_autocmd("TextYankPost", {
  callback = function()
    vim.highlight.on_yank({ higroup = "YankHighlight", timeout = 300 })
  end,
})

