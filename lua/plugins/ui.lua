return {
  { "HiPhish/rainbow-delimiters.nvim" },
  {
    "marko-cerovac/material.nvim",
    init = function(_)
      vim.g.material_style = "deep ocean"
    end,
    opts = {
      contrast = {
        terminal = true,
        sidebars = true,
      },
      plugins = {
        "dap",
        "dashboard",
        -- "eyeliner",
        -- "fidget",
        -- "flash",
        "gitsigns",
        -- "harpoon",
        -- "hop",
        -- "illuminate",
        -- "indent-blankline",
        -- "lspsaga",
        "mini",
        "neogit",
        "neotest",
        "neo-tree",
        -- "neorg",
        "noice",
        "nvim-cmp",
        -- "nvim-navic",
        "nvim-tree",
        "nvim-web-devicons",
        "rainbow-delimiters",
        -- "sneak",
        "telescope",
        "trouble",
        "which-key",
        -- "nvim-notify",
      },
      high_visibility = {
        darker = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material",
    },
  },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      direction = "horizontal",
    },
    config = true,
  },
}
