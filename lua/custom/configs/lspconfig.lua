local config = require("plugins.configs.lspconfig")

local on_attach = config.on_attach
local capabilites = config.capabilities

local lspconfig = require("lspconfig")
local util = require("lspconfig/util")

lspconfig.pyright.setup({
  on_attach = on_attach,
  capabilites = capabilites,
  filetypes = {"python"},
})
lspconfig.puppet.setup({
  on_attach = on_attach,
  capabilites = capabilites,
  filetypes = {"puppet"},
  cmd = {"puppet-languageserver", "--stdio", "--local-workspace=/home/ocp2fe/projects/puppet-control-repo/"},
})
lspconfig.rust_analyzer.setup({
  on_attach = on_attach,
  capabilites = capabilites,
  filetypes = {"rust"},
})
lspconfig.gopls.setup({
  on_attach = on_attach,
  capabilites = capabilites,
  filetypes = {"go", "gomod", "gowork", "gotmpl" }, 
  cmd = {"gopls"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
})
