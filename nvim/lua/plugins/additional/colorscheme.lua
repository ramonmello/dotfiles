return {
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    opts = {
      transparent = true,
    },
    -- With this settings the transparent background is not working
    -- lazy = false, -- make sure we load this during startup if it is your main colorscheme
    -- priority = 1000, -- make sure to load this before all the other start plugins
    -- config = function()
    --   vim.cmd([[colorscheme kanagawa-dragon]])
    -- end,
  },
}
