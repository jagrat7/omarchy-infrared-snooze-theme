-- Infrared Snooze for Neovim, built on bjarneo/aether.nvim.
--
-- The palette is copied from colors.toml. aether.nvim on its own never uses
-- `accent` and draws floats, search and titles in blue, so on_colors and
-- on_highlights below move the focus colours over to the dim red accent.

local accent = "#b30000"

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
        bg = "#130b0d",
        dark_bg = "#0d0709",
        darker_bg = "#080405",
        lighter_bg = "#1f1215",

        fg = "#ead2ca",
        dark_fg = "#8c6f6d",
        light_fg = "#d6bab3",
        bright_fg = "#fcece6",
        muted = "#7d5d60",

        red = "#e8476a",
        yellow = "#f2a65a",
        orange = "#ff8650",
        green = "#a3b87c",
        cyan = "#7fb5ab",
        blue = "#8d9fd8",
        magenta = "#d27aa8",
        brown = "#6b3b2e",

        bright_red = "#ff6f8c",
        bright_yellow = "#ffc485",
        bright_green = "#bfd49a",
        bright_cyan = "#a2d2c8",
        bright_blue = "#aebdf2",
        bright_magenta = "#ef9fc6",

        accent = accent,
        cursor = accent,
        foreground = "#ead2ca",
        background = "#130b0d",
        selection = "#3b1c22",
        selection_foreground = "#fcece6",
        selection_background = "#3b1c22",
      },

      on_colors = function(c)
        local util = require("aether.utils")

        -- Float borders and search glow infrared instead of blue.
        c.border_highlight = util.blend_bg(accent, 0.7)
        c.bg_search = util.blend_bg(accent, 0.3)

        -- A quieter cursor line than the default 20% foreground wash.
        c.cursorline_bg = c.lighter_bg

        -- Git "changed" was orange, too close to the accent; use amber.
        c.git.change = c.yellow
      end,

      on_highlights = function(hl, c)
        hl.Cursor = { fg = c.bright_fg, bg = accent }
        hl.CursorLineNr = { fg = accent, bold = true }
        hl.MatchParen = { fg = accent, bold = true, underline = true }
        hl.IncSearch = { fg = c.bright_fg, bg = accent, bold = true }
        hl.CurSearch = "IncSearch"

        hl.FloatTitle = { fg = accent, bg = c.bg_float, bold = true }
        hl.TabLineSel = { fg = c.bright_fg, bg = accent, bold = true }
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
