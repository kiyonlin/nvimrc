
local M = {}

-- add this table only when you want to disable default keys
M.disabled = {
  n = {
    ["<leader>e"] = "",
    ["<leader>v"] = "",
    ["<leader>h"] = "",
    ["<C-a>"] = "",
    ["<C-e>"] = "",
    ["<C-n>"] = "",
    ["<C-h>"] = "",
    ["<C-l>"] = "",
    ["<C-j>"] = "",
    ["<C-k>"] = "",
    ["<C-c>"] = "",
    ["<S-b>"] = "",
    ["<TAB>"] = "",
    ["<S-Tab>"] = "",
  }
}

M.bufferline = {

   n = {
      -- cycle through buffers
      ["<leader>bk"] = { "<cmd> BufferLineCycleNext <CR>", "  cycle next buffer" },
      ["<leader>bj"] = { "<cmd> BufferLineCyclePrev <CR>", "  cycle prev buffer" },
      ["<leader>b1"] = { "<cmd> BufferLineGoToBuffer 1 <CR>", "  goto buffer 1" },
      ["<leader>b2"] = { "<cmd> BufferLineGoToBuffer 2 <CR>", "  goto buffer 2" },
      ["<leader>b3"] = { "<cmd> BufferLineGoToBuffer 3 <CR>", "  goto buffer 3" },
      ["<leader>b4"] = { "<cmd> BufferLineGoToBuffer 4 <CR>", "  goto buffer 4" },
      ["<leader>b5"] = { "<cmd> BufferLineGoToBuffer 5 <CR>", "  goto buffer 5" },
      ["<leader>b6"] = { "<cmd> BufferLineGoToBuffer 6 <CR>", "  goto buffer 6" },
      ["<leader>b7"] = { "<cmd> BufferLineGoToBuffer 7 <CR>", "  goto buffer 7" },
      ["<leader>b8"] = { "<cmd> BufferLineGoToBuffer 8 <CR>", "  goto buffer 8" },
      ["<leader>b9"] = { "<cmd> BufferLineGoToBuffer 9 <CR>", "  goto buffer 9" },

      -- close buffer + hide terminal buffer
      ["<leader>x"] = {
         function()
            require("core.utils").close_buffer()
         end,
         "   close buffer",
      },
   },
}

M.general = {
  n = {
    -- Copy all
    ["<C-a>"] = { "<cmd> %y+ <CR>", " copy whole file" },
  },
}

M.nvimtree = {
  n = {
    -- focus
    ["<leader>1"] = {"<cmd> NvimTreeFindFileToggle <CR>", "   focus nvimtree" },
  },
}

M.switch = {
  n = {
    ["<leader>sw"] = {"<cmd> Switch <CR>", "    switch t/f"},
  },
}

M.hop = {
  n = {
    ["<leader>hc"] = {"<cmd> HopChar1 <CR>", "Hop to char1"},
    ["<leader>hl"] = {"<cmd> HopLine <CR>", "Hop to line"},
    ["<leader>hw"] = {"<cmd> HopWord <CR>", "Hop to word"},
  },
}

M.telescope = {
  n = {
    ["<leader>fr"] = { "<cmd> lua require'telescope'.extensions.live_grep_raw.live_grep_raw{} <CR>", "   live grep raw" },
    ["<leader>fp"] = { "<cmd> lua require'telescope'.extensions.project.project{}<CR>", "   manage project" },
    ["<leader>fl"] = { "<cmd> lua require'telescope'.extensions.luasnip.luasnip{}<CR>", "   manage luasnip" },
    ["<leader>fs"] = { "<cmd> lua require'telescope'.extensions.aerial.aerial{}<CR>", "   view symbols" },
  },
}

return M
