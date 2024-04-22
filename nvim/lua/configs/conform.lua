local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    svelte = { { "prettierd", "prettier" } },
    javascript = { { "prettierd", "prettier" } },
    typescript = { { "prettierd", "prettier" } },
    javascriptreact = { { "prettierd", "prettier" } },
    typescriptreact = { { "prettierd", "prettier" } },
    json = { { "prettierd", "prettier" } },
    graphql = { { "prettierd", "prettier" } },
    markdown = { { "prettierd", "prettier" } },
    html = { "prettierd", "prettier" },
    yaml = { "prettierd", "prettier" },
    css = { { "prettierd", "prettier" } },
    scss = { { "prettierd", "prettier" } },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },

  lsp_fallback = true,
}

require("conform").setup(options)
