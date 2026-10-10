return {
  {
    "obsidian-nvim/obsidian.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    opts = {
      -- 1. Aquí limpiamos los workspaces para que apunten SOLO a tus notas reales
      workspaces = {
        {
          name = "personal",
          path = "/home/vaz/.config/obsidian/",
          overrides = {
            notes_subdir = "Zettelkasten",
            frontmatter = { enabled = true },
            footer = { enabled = true },
          },
        },
      },
      legacy_commands = false,
      -- 2. Mantienes intacto el formato de tus plantillas
      templates = {
        folder = "Templates",
        date_format = "%Y-%m-%d-%a",
        time_format = "%H:%M",
      },
      notes_subdir = "Zettelkasten",
      new_notes_location = "notes_subdir",
      ui = { enable = false },
      -- 3. Mantienes tus configuraciones de checkboxes
      checkbox = {
        enabled = true,
        create_new = true,
        order = { " ", "/", "x", "-" },
      },
      -- 4. Mantienes la lógica para pegar imágenes automáticamente
      attachments = {
        folder = "",
        img_name_func = function()
          return string.format("Pasted image %s", os.date "%Y%m%d%H%M%S")
        end,
        confirm_img_paste = false,
      },
      -- 5. Tus notas seguirán usando el ID basado en la fecha actual
      note_id_func = function()
        return os.date("%Y%m%d%H%M%S")
      end
    },
    -- 6. Tus atajos de teclado personalizados se quedan exactamente igual
    keys = function()
      return {
        { "<leader>v",  "<cmd>Obsidian paste_img<cr>" },
        { "<leader>of", "<cmd>Obsidian search<cr>" },
        { "<leader>ol", "<cmd>Obsidian follow_link<cr>" },
        { "<leader>on", "<cmd>Obsidian new_from_template<CR>" }, -- Simplificado sin la condición de afriguez
      }
    end,
  }
}

