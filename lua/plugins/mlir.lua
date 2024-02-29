local util = require("lspconfig.util")

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tblgen_lsp_server = {
          cmd = {
            "tblgen-lsp-server",
            "--tablegen-compilation-database",
            "./build/tablegen_compile_commands.yml",
          },
          filetypes = { "tablegen" },
          root_dir = function(fname)
            return util.root_pattern("build/tablegen_compile_commands.yml")(fname) or util.find_git_ancestor(fname)
          end,
        },
      },
    },
    ft = { "tablegen" },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "tablegen", "mlir" })
      end
    end,
  },
}
