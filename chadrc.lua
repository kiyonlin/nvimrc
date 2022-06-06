-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,

-- M.ui = {
-- }

local configs = require('custom.plugins.configs')

M.plugins = {
  override = {
    ["nvim-treesitter/nvim-treesitter"] = configs.treesitter,
    ['kyazdani42/nvim-tree.lua'] = configs.nvimtree,
    ["NvChad/nvterm"] = configs.nvterm,
    ["akinsho/bufferline.nvim"] = configs.bufferline,
  },
  user = require("custom.plugins")
}

M.mappings = require("custom.mappings")

return M
