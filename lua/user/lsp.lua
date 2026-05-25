-- ~/.config/nvim/lua/user/lsp.lua
local lspconfig = require "lspconfig"

lspconfig.rust_analyzer.setup {
  -- Keep any existing settings you already have
  settings = {
    ["rust-analyzer"] = {
      -- ✅ Enable *all* Cargo features for the purpose of analysis
      cargo = {
        allFeatures = true, -- <‑‑ this line does the magic
        loadOutDirsFromCheck = true, -- optional but handy
        features = {}, -- you could also list specific ones here
      },

      -- Optional: keep proc‑macro support active
      procMacro = { enable = true },

      -- Any other rust‑analyzer tweaks you like…
    },
  },
}
