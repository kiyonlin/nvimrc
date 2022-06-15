-- custom/plugins/configs/init.lua file

local M = {}

local actions = require "telescope.actions"

M["nvim-telescope/telescope.nvim"] = {
   defaults = {
      prompt_prefix = " ",
      selection_caret = "§ ",
      mappings = {
         i = {
            ["<C-j>"] = actions.move_selection_next,
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
            ["<ESC>"] = require("telescope.actions").close,
            ["<CR>"] = actions.select_default + actions.center,
         },
         n = {
            ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
         },
      },
   },
   extensions = {
      live_grep_args = {
         theme = "ivy",
         auto_quoting = false, -- enable/disable auto-quoting
      },
      aerial = {
         -- Display symbols as <root>.<parent>.<symbol>
         show_nesting = true,
      },
   },
   extensions_list = {
      "themes",
      "terms",
      "live_grep_args",
      "notify",
      "project",
      "luasnip",
      "aerial",
      "dap",
   },
}

M["nvim-treesitter/nvim-treesitter"] = {
   ensure_installed = {
      "go",
      "gomod",
      "gowork",
      "lua",
      "json",
      "css",
      "html",
      "vue",
      "python",
      "toml",
      "yaml",
   },
   incremental_selection = {
      enable = true,
      keymaps = {
         init_selection = "<CR>",
         node_incremental = "<CR>",
         node_decremental = "<BS>",
         scope_incremental = "<TAB>",
      },
   },
   -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
   textobjects = {
      select = {
         enable = true,

         -- Automatically jump forward to textobj, similar to targets.vim
         lookahead = true,

         keymaps = {
            -- You can use the capture groups defined in textobjects.scm
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
         },
      },
   },
}

M["akinsho/bufferline.nvim"] = {
   options = {
      numbers = "ordinal",
      diagnostics_indicator = function(count)
         return "(" .. count .. ")"
      end,
      offsets = {
         {
            filetype = "NvimTree",
            text = function()
               return vim.fn.getcwd()
            end,
            highlight = "Directory",
            text_align = "left",
         },
      },
   },
}

M["kyazdani42/nvim-tree.lua"] = {
   open_on_setup = true,
   open_on_tab = true,
   view = {
      width = 30,
      height = 30,
      hide_root_folder = true,
      auto_resize = true,
   },
   diagnostics = {
      -- 是否启用文件诊断信息
      enable = true,
      icons = {
         hint = "",
         info = "",
         warning = "",
         error = "",
      },
   },
   git = {
      -- 是否启用 git 信息
      enable = true,
      ignore = true,
      timeout = 500,
   },
}

M["NvChad/nvterm"] = {
   terminals = {
      type_opts = {
         float = {
            relative = "editor",
            row = 0.15,
            col = 0.1,
            width = 0.8,
            height = 0.7,
            border = "single",
          },
        },
   },
}

return M
