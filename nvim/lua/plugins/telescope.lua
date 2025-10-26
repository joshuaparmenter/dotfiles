return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.6",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      pickers = {
        find_files = {
          find_command = { "rg", "--files", "--iglob", "!.git", "--hidden" },
        },
      },
    },
    config = function(_, opts)
      local telescope = require("telescope")
      local builtin = require("telescope.builtin")

      telescope.setup(opts)

      -- Set keymaps here (they aren't part of opts)
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fp", builtin.git_files, {})
    end,
  }
}

