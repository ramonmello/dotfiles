return {
  {
    dir = vim.fn.expand("~/Codes/minimal.nvim"),
    name = "minimal.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      transparent = true,
      variant = "auto",
    },
    config = function(_, opts)
      require("minimal").setup(opts)
      vim.cmd.colorscheme("minimal")
    end,
  },
}
