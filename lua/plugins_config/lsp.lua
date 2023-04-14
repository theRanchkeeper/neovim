
local lsp = require('lsp-zero').preset({})

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

require('lspconfig').rust_analyzer.setup{
    capabilities = capabilities,
    cmd = {
        "rustup", "run", "stable", "rust-analyzer"
    }
}

lsp.setup()
