--
--
-- instalar primero esto # Debian/Ubuntu
-- sudo apt install imagemagick

return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    styles = {
      snacks_image = {
        snacks_image = function()
          return {
            relative = "cursor",
            border = "none",
            focusable = false,
            backdrop = false,
            row = 0,
            col = 0,
          }
        end,
      },
    },

    image = {
      formats = { "png", "jpg", "jpeg", "gif", "bmp", "webp", "tiff", "heic" },
      force = false,
      doc = { enabled = true, inline = false, float = true, max_width = 60, max_height = 30 },
      wo = {
        wrap = false,
        number = false,
        relativenumber = false,
        cursorcolumn = false,
        signcolumn = "no",
        foldcolumn = "0",
        statuscolumn = "",
      },
      convert = {
        notify = true,
        magick = {
          default = { "{src}[0]", "-scale", "1280x720>" },
        },
      },
      icons = { image = " " },
    },
  },
}
