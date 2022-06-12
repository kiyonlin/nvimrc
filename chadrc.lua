-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,

-- M.ui = {
-- }

M.plugins = {
  override = require('custom.plugins.configs'),
  user = require("custom.plugins"),
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.configs.lspconfig",
    },
  },
}

M.mappings = require("custom.mappings")

return M
