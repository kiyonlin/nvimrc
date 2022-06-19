-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.
local M = {}

_G.pp = vim.pretty_print

-- auto close nvimtree
vim.cmd [[
autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif
]]

vim.opt.runtimepath:append(vim.fn.stdpath "config" .. "/lua/custom")
vim.opt.guifont = "Cousine Nerd Font Mono:h15"

M.file_types = {
   "go",
   "gomod",
   "gowork",
   "css",
   "html",
   "sql",
   "yaml",
   "yml",
   "vue",
   "py",
   "lua",
   "json",
   "toml",
}

-- load plugin after entering vim ui
M.packer_lazy_load = function(plugin)
   vim.defer_fn(function()
      require("packer").loader(plugin)
   end, 0)
end

return M
