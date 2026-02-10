return {
  {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.lsp.config("clangd", {
        cmd = {
          "clangd",
          "--background-index=false",
          "--clang-tidy=false",
        },
        filetypes = { "c", "cpp", "objc", "objcpp" },
        root_markers = {
          "compile_commands.json",
          "compile_flags.txt",
          ".git",
        },
        capabilities = capabilities,
      })

      vim.lsp.enable("clangd")

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(ev)
          local buf = ev.buf
          local map = vim.keymap.set
          local opts = { buffer = buf }

          map("n", "gd", vim.lsp.buf.definition, opts)
          map("n", "gD", vim.lsp.buf.declaration, opts)
          map("n", "gr", vim.lsp.buf.references, opts)
          map("n", "gi", vim.lsp.buf.implementation, opts)
          map("n", "K", vim.lsp.buf.hover, opts)
          map("n", "<leader>rn", vim.lsp.buf.rename, opts)
          map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
          map("n", "<leader>cf", function()
            vim.lsp.buf.format({ async = true })
          end, opts)
        end,
      })
    end,
  },
}
