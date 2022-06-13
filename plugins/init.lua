local file_types = require("custom").file_types

return {
  ["wbthomason/packer.nvim"] = {
    git = { default_url_format = "https://hub.fastgit.org/%s" },
  },

  ['kyazdani42/nvim-tree.lua'] = {
    cmd = {"NvimTreeFindFileToggle"},
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    -- after = "nvim-treesitter/nvim-treesitter",
    ft = file_types,
    config = function ()
      require("custom.plugins.configs.null-ls")
    end
  },

  ["nvim-treesitter/nvim-treesitter-textobjects"] = {
    ft = file_types,
  },

  ["nvim-telescope/telescope.nvim"] = {
  },

  ["benfowler/telescope-luasnip.nvim"] = {
    module = "telescope._extensions.luasnip",
  },

  ["nvim-telescope/telescope-dap.nvim"] = {
    module = "telescope._extensions.dap",
  },

  ["nvim-telescope/telescope-live-grep-args.nvim"] = {
    module = "telescope._extensions.live_grep_args",
  },

  ["nvim-telescope/telescope-project.nvim"] = {
    module = "telescope._extensions.project",
  },

  ['AndrewRadev/switch.vim'] = {
    cmd = {"Switch"},
    config = function()
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
        require("custom.plugins.configs.others").notify()
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
      ft = {'go'},
      config = function()
        require("custom.plugins.configs.dap")
      end
    },

    ["rcarriga/vim-ultest"] = {
      ft = file_types,
      requires = {
        {"vim-test/vim-test", ft = file_types,},
      },
      run = ":UpdateRemotePlugins"
    },

    ["sindrets/diffview.nvim"] = {
      requires = {"nvim-lua/plenary.nvim"},
      cmd = {"DiffviewFileHistory"},
      -- opt = true,
      -- setup = function()
      --   require("core.utils").packer_lazy_load "diffview.vim"
      -- end,
      config = function()
        require("custom.plugins.configs.diffview")
      end
    },

    ["max397574/better-escape.nvim"] = {
      event = "InsertCharPre",
      config = function()
        require("custom.plugins.configs.others").better_escape()
      end,
    },

    [ "folke/trouble.nvim" ] = {
      opt = true,
      setup = function()
        require("core.utils").packer_lazy_load "trouble.nvim"
      end,
      requires = "kyazdani42/nvim-web-devicons",
      config = function()
        require("custom.plugins.configs.trouble")
      end
    }
  }
