return {
  {
    "williamboman/mason.nvim",
    optional = true,
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "zls" })
      end
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "zig" })
      end
    end,
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "lawrence-laz/neotest-zig",
      "antoinemadec/FixCursorHold.nvim",
    },
    opts = function(_, opts)
      if type(opts.adapters) == "table" then
        vim.list_extend(opts.adapters, { "neotest-zig" })
      end
    end,
  },
}
