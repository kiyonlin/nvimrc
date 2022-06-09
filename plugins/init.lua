return {
  ["wbthomason/packer.nvim"] = {
    git = { default_url_format = "https://hub.fastgit.org/%s" },
  },

  ['kyazdani42/nvim-tree.lua'] = {
    cmd = {"NvimTreeFindFileToggle"},
  },

  ["nvim-telescope/telescope.nvim"] = {
    requires = {
    }
  },

  ["benfowler/telescope-luasnip.nvim"] = {
    module = "telescope._extensions.luasnip",
  },

  ["nvim-telescope/telescope-live-grep-args.nvim"] = {
    module = "telescope._extensions.live_grep_args",
  },

  ["nvim-telescope/telescope-project.nvim"] = {
    module = "telescope._extensions.project",
  },

  ['AndrewRadev/switch.vim'] = {
    cmd = {"Switch"},
    setup = function()
      require('custom.plugins.configs.switch')
    end,
  },

  ['Pocco81/AutoSave.nvim'] = {
    event = { "BufRead", "BufNewFile" },
    config = function ()
      require("custom.plugins.configs.autosave")
    end
  },

  ['folke/todo-comments.nvim'] = {
    opt = true,
    setup = function()
      require("core.utils").packer_lazy_load "todo-comments.nvim"
    end,
    config = function()
      require("todo-comments").setup()
    end,
  },

  ["phaazon/hop.nvim"] = {
    cmd = {"HopChar1", "HopLine", "HopWord"},
    config = function()
      require("hop").setup()
    end
  },

  ["ur4ltz/surround.nvim"] = {
    opt = true,
    setup = function()
      require("core.utils").packer_lazy_load "surround.nvim"
    end,
    config = function()
      require("surround").setup({mappings_style = "surround"})
    end
  },

  ["ethanholz/nvim-lastplace"] = {
    event = "BufRead",
    config = function()
      require("nvim-lastplace").setup({
        lastplace_ignore_buftype = {"quickfix", "nofile", "help"},
        lastplace_ignore_filetype = {"gitcommit", "gitrebase", "svn", "hgcommit"},
        lastplace_open_folds = true
      })
    end,
  },


  ['rmagatti/auto-session'] = {
    -- opt = true,
    -- setup = function()
    --   require("core.utils").packer_lazy_load "auto-session"
    -- end,
    config = function()
      require("custom.plugins.configs.auto-session")
    end
  },

  ['rcarriga/nvim-notify'] = {
    opt = true,
    setup = function()
      require("core.utils").packer_lazy_load "nvim-notify"
    end,
    config = function()
      require("custom.plugins.configs.other").notify()
    end
  },

  ["stevearc/aerial.nvim"] = {
    disable = false,
    -- after = {"nvim-treesitter"},
    config = function()
      require("custom.plugins.configs.aerial")
    end
  },

  ["mfussenegger/nvim-dap"] = {
    requires = {
      {"rcarriga/nvim-dap-ui", opt = true,},
      {"theHamsta/nvim-dap-virtual-text", opt = true,},
    },
    -- keys = {"<leader>dc"},
    opt = true,
    setup = function()
      require("core.utils").packer_lazy_load "nvim-dap"
    end,
    config = function()
      require("custom.plugins.configs.dap")
    end
  }
}
