return {
  "nvim-java/nvim-java",
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    local java_bin = vim.fn.exepath("java")
    local jdk_home = vim.fn.fnamemodify(vim.fn.resolve(java_bin), ":h:h")

    require("java").setup({
      jdk = { auto_install = false },
    })

    vim.lsp.config("jdtls", {
      settings = {
        java = {
          import = { gradle = { java = { home = jdk_home } } },
          configuration = {
            runtimes = {
              { name = "JavaSE-21", path = jdk_home, default = true },
            },
          },
        },
      },
    })

    vim.lsp.enable("jdtls")
  end,
}
