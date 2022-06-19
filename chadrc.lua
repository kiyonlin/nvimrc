-- Just an example, supposed to be placed in /lua/custom/

local M = {}

M.plugins = {
   override = require "custom.plugins.configs",
   user = require "custom.plugins",
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.configs.lspconfig",
      },
   },
}

M.mappings = require "custom.mappings"

return M
