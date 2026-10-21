-- The palette is copied from colors.toml. aether.nvim on its own never uses
-- `accent` and draws floats, search and titles in blue, so on_colors and
-- on_highlights below move the focus colours over to the ember red accent.

local accent = "#cc432e"

return {
  {
    "bjarneo/aether.nvim",
    branch = "v3",
    name = "aether",
    priority = 1000,
    opts = {
      styles = {
        comments = { italic = true },
        keywords = { italic = false },
      },

      colors = {
        bg = "#150b0b",
        dark_bg = "#0f0808",
        darker_bg = "#090505",
        lighter_bg = "#211312",

        fg = "#c2a08e",
        dark_fg = "#896d65",
        light_fg = "#b69684",
        bright_fg = "#d8b8a2",
        muted = "#785c56",

        red = "#c2445f",
        yellow = "#c99a4a",
        orange = "#d27a3a",
        green = "#993223",
        cyan = "#b8603e",
        blue = "#c4865f",
        magenta = "#ad6670",
        brown = "#6b3f30",

        bright_red = "#d85c74",
        bright_yellow = "#dcb060",
        bright_green = "#cc432e",
        bright_cyan = "#c68065",
        bright_blue = "#d89c74",
        bright_magenta = "#c27b85",

        accent = accent,
        cursor = accent,
        foreground = "#c2a08e",
        background = "#150b0b",
        selection = "#3d1f1c",
        selection_foreground = "#d8b8a2",
        selection_background = "#3d1f1c",
      },

      on_colors = function(c)
        local util = require("aether.utils")

        -- Float borders and search glow red instead of blue.
        c.border_highlight = util.blend_bg(accent, 0.7)
        c.bg_search = util.blend_bg(accent, 0.3)

        -- A quieter cursor line than the default 20% foreground wash.
        c.cursorline_bg = c.lighter_bg

        -- Git "changed" was orange, too close to the accent; use amber.
        c.git.change = c.yellow
      end,

      on_highlights = function(hl, c)
        hl.Cursor = { fg = c.bg, bg = accent }
        hl.CursorLineNr = { fg = accent, bold = true }
        hl.MatchParen = { fg = accent, bold = true, underline = true }
        hl.IncSearch = { fg = c.bg, bg = accent, bold = true }
        hl.CurSearch = "IncSearch"

        hl.FloatTitle = { fg = accent, bg = c.bg_float, bold = true }
        hl.TabLineSel = { fg = c.bg, bg = accent, bold = true }
        hl.Title = { fg = accent, bold = true }
        hl.PmenuSel = { bg = c.selection, fg = c.bright_fg, bold = true }
        hl.WinSeparator = { fg = c.selection, bold = true }

        -- Functions stay blue so code doesn't turn into a wall of red;
        -- keywords take the dusty rose.
        hl.Keyword = { fg = c.magenta, bold = true }
        hl.Statement = { fg = c.magenta, bold = true }
      end,
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "aether",
    },
  },
}
