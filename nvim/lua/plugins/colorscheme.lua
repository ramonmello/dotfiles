return {
  {
    dir = vim.fn.expand("~/dotfiles/custom-plugins/minimal.nvim"),
    name = "minimal.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      transparent = false,
      variant = "auto",
    },
    config = function(_, opts)
      require("minimal").setup(opts)
      vim.cmd.colorscheme("minimal")
    end,
  },
}
