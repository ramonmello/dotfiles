return {
  --Custom theme
  {
    dir = vim.fn.stdpath("config") .. "/local-plugins/custom_theme",
    name = "custom",
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.custom").setup({ transparent = true })
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = {
      options = {
        section_separators = { left = "", right = "" },
      },
    },
  },
}
