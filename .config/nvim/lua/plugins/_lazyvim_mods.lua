return {
  -- COLOR SCHEMES
  { "rebelot/kanagawa.nvim" },
  { "HoNamDuong/hybrid.nvim" },
  { "marko-cerovac/material.nvim" },
  { "folke/tokyonight.nvim" },
  -- LAZYVIM
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "hybrid" },
  },
  {
    "folke/which-key.nvim",
    -- add or override by setting new value
    -- remove keyumap by setting equal to `nil`
    -- explained here : https://github.com/LazyVim/LazyVim/discussions/2588
    opts = function(_, opts)
      -- Name NEORG top level menu
      if require("lazyvim.util").has("neorg") then
        opts.defaults["<leader>e"] = { name = "+editor" }
        opts.defaults["<leader>ea"] = { name = "+align" }
        opts.defaults["<leader>e2"] = { name = "+2nd brain" }
      end

      -- Formatting
      opts.defaults["<leader>cf"] = { name = "+format" }
      opts.defaults["<leader>cfx"] = { "<cmd>%!xmllint --format - <cr>", "Format XML" }
      opts.defaults["<leader>cfs"] = { "<cmd>%!shfmt - <cr>", "Format Shell" }

      -- Open in external program
      opts.defaults["<leader>o"] = { "<cmd>!open %<cr>", "Open with default application" }
    end,
  },
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, opts)
      opts.config.header = {
        "",
        "",
        "           ░░░░░░░░           ",
        "       ░░░░░░░░░░░░░░░░       ",
        "     ░░░░░░░░░░░░░░░░░░░░     ",
        "   ░░░░░░    ░░░░░░░░    ░░   ",
        "   ░░░░        ░░░░           ",
        "   ░░░░    ▒▒▒▒░░░░    ▒▒▒▒   ",
        " ░░░░░░    ▒▒▒▒░░░░    ▒▒▒▒░░ ",
        " ░░░░░░░░    ░░░░░░░░    ░░░░ ",
        " ░░░░░░░░░░░░░░░░░░░░░░░░░░░░ ",
        " ░░░░░░░░░░░░░░░░░░░░░░░░░░░░ ",
        " ░░░░░░░░░░░░░░░░░░░░░░░░░░░░ ",
        " ░░░░  ░░░░░░    ░░░░░░  ░░░░ ",
        " ░░      ░░░░    ░░░░      ░░ ",
        "",
        "",
      }
    end,
  },
  -- ---------------------------------------------------
  -- TURN OFF LAZYVIM PLUGINS
  { "echasnovski/mini.pairs", enabled = false },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
}

-- '"=^)',
-- "",
-- "MOTTAINI ❀ waste nothing",
-- "ZAZEN ☸ sitting meditation",
-- "OUBAITORY ❀ do not compare yourself to others",
-- "IKIGAI ☸ a reason for being, a sense of purpose",
-- "SHIKATA GA NAI ❀ let go of what you cannot change",
-- "SHU-HA-RI ☸ three stage to aquiring true knowledge",
-- "KAIZEN ❀ always seek to improve all areas of your life",
-- "WABI SABI ☸ acceptance and appreciation for imperfection",
-- "GAMAN ❀ enduring the seemingly unbearable, with patience and dignity",
-- "MONO NO AWARE ☸ awareness of the impermanent/transient nature of things",
