local lsp = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.tsserver.setup {
  capabilities = capabilities,
  root_dir = require("lspconfig").util.root_pattern("package.json", "tsconfig.json", "jsconfig.json")
}

lsp.gopls.setup {}
vim.cmd [[
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
]]

lsp.volar.setup {
  capabilities = capabilities,
  init_options = {
    typescript = {
      serverPath = "/Users/nhhao/.config/yarn/global/node_modules/typescript/lib/tsserverlibrary.js"
    }
  }
}

lsp.tailwindcss.setup {
  capabilities = capabilities
}

lsp.dartls.setup {
  capabilities = capabilities
}
