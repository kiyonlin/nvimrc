-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.
local M = {}

_G.pp = vim.pretty_print

-- auto close nvimtree
vim.cmd([[
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])

vim.opt.runtimepath:append(vim.fn.stdpath "config" .. "/lua/custom")

M.file_types = {
  "go", "gomod", "gowork", "css", "html", "sql", "yaml", "yml", "vue",
  "py", "lua", "json", "toml",
}

return M
