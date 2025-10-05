return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
          library = {
            -- See the configuration section for more details
            -- Load luvit types when the `vim.uv` word is found
            { path = "${3rd}/luv/library", words = { "vim%.uv" } },
          },
        },
      },
    },
    config = function()
      vim.lsp.enable('lua_ls')        -- Lua
      vim.lsp.enable('bashls')        -- Bash
      vim.lsp.enable('clangd')        -- C/C++
      vim.lsp.enable('pylsp')         -- Python
      vim.lsp.enable('rust_analyzer') -- Rust
      vim.lsp.enable('gopls')         -- Go
      vim.lsp.enable('hls')           -- Haskell
      --vim.lsp.enable('eslint')        -- JavaScript
      --vim.lsp.enable('typescript-language-server')        -- JavaScript
    end,
  }
}
