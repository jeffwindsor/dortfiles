return {
  {
    "stevearc/oil.nvim",
    -- cmd = "Oil",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({
        default_file_explorer = true,
        columns = { "icon" },
        keymaps = {
          ["~"] = "actions.show_help",
          ["p"] = "actions.preview",
          ["<Esc>"] = "actions.close",
        },
        view_options = {
          show_hidden = true,
        },
      })

      -- Open parent directory in current window
      vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

      -- Open parent directory in floating window
      vim.keymap.set("n", "_", require("oil").toggle_float, { desc = "Open in Floating Window" })
    end,
  },
}