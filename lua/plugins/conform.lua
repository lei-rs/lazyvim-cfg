return {
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters = {
        zigfmt = {
          command = "zig fmt",
        },
      },
      formatters_by_ft = {
        ["haskell"] = { "fourmolu" },
        ["lhaskell"] = { "fourmolu" },
        ["zig"] = { "zigfmt" },
      },
    },
  },
}
