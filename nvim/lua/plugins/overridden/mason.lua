return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "svelte-language-server",
        "astro-language-server",
        "vue-language-server",
      })
    end,
  },
}
