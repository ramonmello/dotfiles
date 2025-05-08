-- lua/plugins/ui.lua
return {
  -- 1. Tema
  {
    dir = vim.fn.stdpath("config") .. "/local-plugins/custom_theme",
    name = "custom",
    lazy = false,
    priority = 1000,
    config = function()
      require("themes.custom").setup({ transparent = true })
    end,
  },
  -- 2. Ícones de arquivos
  {
    "nvim-tree/nvim-web-devicons",
    lazy = true,
    opts = { default = true },
  },

  -- 3. Statusline com lualine.nvim
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        theme = "custom",
        section_separators = { left = "", right = "" },
        component_separators = "|",
        globalstatus = true,
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { "branch", "diff" },
        lualine_c = { "filename" },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    },
  },

  -- 4. Bufferline (abas)
  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        diagnostics = "nvim_lsp",
        -- separator_style = "slant",
        always_show_bufferline = false,
      },
    },
  },

  -- 5. Guias de indentação
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl", -- novo entry point
    event = "BufReadPre",
    opts = {
      indent = {
        char = "│",
        tab_char = "│",
      },
      scope = {
        enabled = true,
        show_start = true,
        show_end = false,
      },
      exclude = {
        filetypes = {
          "Trouble",
          "alpha",
          "dashboard",
          "help",
          "lazy",
          "mason",
          "neo-tree",
          "notify",
          "toggleterm",
          "trouble",
        },
      },
    },
  },
}
