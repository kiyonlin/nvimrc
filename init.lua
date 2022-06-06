-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.

_G.pp = vim.pretty_print

-- auto close nvimtree
vim.cmd([[
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]])
