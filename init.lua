require("config.options")
require("config.lazy")
require("config.keymaps")
require("config.highlight")
require("config.lsp")
require("obsidian").setup({
  workspaces = {
    {
      name = "personal",
      path = "/home/vaz/.config/obsidian/",
    },
  },
})

