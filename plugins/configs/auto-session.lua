-- https://github.com/rmagatti/auto-session
local present, session = pcall(require, "auto-session")

if not present then
   return
end

vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"

vim.cmd [[
autocmd VimLeavePre * silent! :SaveSession
]]

local options = {
   auto_session_enable_last_session = false,
   -- pre_save_cmds = { "tabdo NvimTreeClose" },
}

session.setup(options)
