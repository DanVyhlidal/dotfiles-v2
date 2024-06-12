return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    {"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          }
        }
      }
    })

    telescope.load_extension("fzf")

    local keymap = vim.keymap

    keymap.set("n", "<C-t>", "<cmd>Telescope find_files<cr>", {desc = "Fuzzy find files in cwd"})
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", {desc = "Fuzzy find recent files"})
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", {desc = "Find string in cwd"})
    keymap.set("n", "<leader>fc", "<cmd>Telescope find_files<cr>", {desc = "Fuzzy string under cursor in cwd"})

  end
}
