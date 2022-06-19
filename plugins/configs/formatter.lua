-- https://github.com/mhartington/formatter.nvim

local present, formatter = pcall(require, "formatter")

if not present then
  warn("formatter not found")
  return
end

local options = {
  filetype = {
    lua = { require('formatter.filetypes.lua').stylua },
    go = { require("formatter.filetypes.go").goimports},
  }
}

formatter.setup(options)
