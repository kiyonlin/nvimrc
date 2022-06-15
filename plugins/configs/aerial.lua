-- https://github.com/stevearc/aerial.nvim
local present, aerial = pcall(require, "aerial")

if not present then
   return
end

aerial.setup {
   min_width = 30,
   backends = { "lsp", "treesitter", "markdown" },
   filter_kind = false,
   nerd_font = "auto",
   update_events = "TextChanged,InsertLeave",
   on_attach = function(bufnr)
      vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>2", "<cmd>AerialToggle<CR>", {})
   end,
}
