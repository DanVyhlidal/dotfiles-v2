return {
  "nvim-lualine/lualine.nvim",

  config = function()
    local lualine = require("lualine")

    lualine.setup({
      sections = {
        lualine_a = {
          "filename",
        },
        lualine_b = {
        },
        lualine_c = {
          "lsp_progress",
        },
        lualine_x = {
          "location",
        },
        lualine_y = {
          "branch",
        },
        lualine_z = {
          "diagnostics",
        },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {},
      },
    })
  end,
}
