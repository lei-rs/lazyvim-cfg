return {
  {
    "mrcjkb/haskell-tools.nvim",
    version = "^3",
    ft = { "haskell", "lhaskell", "cabal", "cabalproject" },
    keys = {
      {
        "<learder>chr",
        function()
          local ht = require("haskell-tools")
          ht.repl.toggle(vim.api.nvim_buf_get_name(0))
        end,
        desc = "Toggle Haskell REPL",
        ft = { "haskell", "lhaskell" },
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "fourmolu")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "haskell" })
      end
    end,
  },
}
