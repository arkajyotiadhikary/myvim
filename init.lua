-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lspconfig").tsserver.setup({})
require("lazy").setup({
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local null_ls = require("null-ls")

      -- Configure null-ls
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier, -- Example: Prettier for JavaScript/TypeScript
          null_ls.builtins.formatting.stylua, -- Example: Stylua for Lua
        },
      })
    end,
  },
})

require("lazy").setup({
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      local null_ls = require("null-ls")
      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.prettier, -- JavaScript/TypeScript
          null_ls.builtins.formatting.stylua, -- Lua
        },
      })
    end,
  },
})
