-- https://github.com/Pocco81/AutoSave.nvim
local present, autosave = pcall(require, "autosave")

if not present then
   return
end

local options = {
   enabled = true,
   events = { "InsertLeave", "TextChanged" },
   execution_message = "",
   conditions = {
      exists = true,
      filename_is_not = {},
      filetype_is_not = {},
      modifiable = true,
   },
   write_all_buffers = false,
   on_off_commands = true,
   clean_command_line_interval = 0,
   debounce_delay = 135,
}

autosave.setup(options)
