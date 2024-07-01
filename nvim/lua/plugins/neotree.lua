return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    popup_border_style = "rounded",
    window = {
      position = "float",
      mappings = {
        ["Y"] = "none",
      },
    },
    filesystem = {
      window = {
        popup = {
          position = { col = "100%", row = "2" },
          size = function(state)
            local root_name = vim.fn.fnamemodify(state.path, ":~")
            local root_len = string.len(root_name) + 4
            return {
              width = math.max(root_len, 50),
              height = vim.o.lines - 6,
            }
          end,
        },
      },
      filtered_items = {
        hide_dotfiles = false,
        hide_by_name = {
          ".git",
          ".DS_Store",
        },
        always_show = {
          ".env",
        },
      },
    },
  },
}
