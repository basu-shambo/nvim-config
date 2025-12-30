local M={}

function M.enable_relnum()
  vim.wo.relativenumber = true
end

function M.disable_relnum()
  vim.wo.relativenumber = false
end

function M.toggle_relnum()
  vim.wo.relativenumber = not vim.wo.relativenumber
end

return M

