return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    config = function()
      require("neo-tree").setup({
        window = {
          position = "float",
        },
        default_component_configs = {
          file_size = {
            enabled = true,
            required_width = 50,
          },
        },
        filesystem = {
          filtered_items = {
            always_show = {
              ".gitignore",
            },
          },
        },
      })
    end,
  },
}
