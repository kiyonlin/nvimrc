-- https://github.com/jose-elias-alvarez/null-ls.nvim

local present, nullls = pcall(require, "null-ls")
if not present then
   return
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local options = {
   -- you can reuse a shared lspconfig on_attach callback here
   on_attach = function(client, bufnr)
      if client.supports_method "textDocument/formatting" then
         vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
         vim.api.nvim_create_autocmd("BufWritePre", {
            group = augroup,
            buffer = bufnr,
            callback = function()
               -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
               vim.lsp.buf.formatting {
                  bufnr = bufnr,
                  filter = function(cclient)
                     return cclient.name == "null-ls"
                  end,
               }
            end,
         })
      end
   end,
}

nullls.setup(options)
