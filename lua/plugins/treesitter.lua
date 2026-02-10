return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local ok, configs = pcall(require, "nvim-treesitter.configs")
      if not ok then
        configs = require("nvim-treesitter.config")
      end

      configs.setup({
        ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
}
