local active_border_color = { colors = { "rgba(9e2418dd)", "rgba(cc432edd)", "rgba(d27a3abb)" }, angle = 45 }
local inactive_border_color = "rgba(3d1f1c99)"

hl.config({
  general = {
    gaps_in = 5,
    gaps_out = 12,
    border_size = 2,

    col = {
      active_border = active_border_color,
      inactive_border = inactive_border_color,
    },
  },

  group = {
    col = {
      border_active = active_border_color,
      border_inactive = inactive_border_color,
    },

    groupbar = {
      text_color = "rgb(d8b8a2)",
      text_color_inactive = "rgba(c2a08e90)",
      col = {
        active = "rgba(cc432e40)",
        inactive = "rgba(150b0b80)",
      },
    },
  },

  decoration = {
    rounding = 12,

    -- The focused window gets a faint ember red glow; the rest only cast a dark
    -- shadow. Kept faint (28) so it reads as a soft halo.
    shadow = {
      enabled = true,
      range = 22,
      render_power = 3,
      color = "rgba(cc432e28)",
      color_inactive = "rgba(09050599)",
    },

    blur = {
      enabled = true,
      size = 8,
      passes = 3,
      new_optimizations = true,
      ignore_opacity = true,
      xray = false,
      noise = 0.02,
      contrast = 1.0,
      brightness = 0.7,
      vibrancy = 0.15,
      vibrancy_darkness = 0.2,
      popups = true,
      popups_ignorealpha = 0.6,
    },
  },

  animations = {
    enabled = true,
  },
})

-- Glass ---------------------------------------------------------------------
-- Every window still carrying Omarchy's default-opacity tag gets a little more
-- glass than Omarchy's 0.985/0.96. Browsers, video, games and anything else
-- Omarchy opts out of default-opacity stay solid.
o.window({ tag = "default-opacity" }, { opacity = "0.96 0.88" })

-- Blur the Omarchy shell surfaces behind their translucent backgrounds (see the
-- *-alpha keys in shell.toml). A surface only shows blur where its own
-- background is see-through.
hl.layer_rule({
  match = { namespace = "^(omarchy-bar|omarchy-notifications|omarchy-osd|omarchy-menu|omarchy-polkit)$" },
  blur = true,
  blur_popups = true,
  ignore_alpha = 0.3,
})
hl.layer_rule({
  match = { namespace = "^(omarchy-clipboard|omarchy-emojis|omarchy-image-selector|omarchy-keyboard-panel|omarchy-reminders|omarchy-network-qr)$" },
  blur = true,
  ignore_alpha = 0.3,
})

-- Motion --------------------------------------------------------------------
-- Slow, soft easing: things drift in like waking up and settle without
-- overshoot. Curves must be defined before an animation names them.
-- speed is in tenths of a second. Live preview of the styles:
-- docs/animations.html.

-- drowse: fast start, long soft settle.
hl.curve("drowse", { type = "bezier", points = { { 0.22, 1 }, { 0.36, 1 } } })
-- doze: starts slow and speeds up, so closing windows linger then drop away.
hl.curve("doze", { type = "bezier", points = { { 0.55, 0 }, { 1, 0.45 } } })
-- glow: even ease in and out.
hl.curve("glow", { type = "bezier", points = { { 0.4, 0 }, { 0.2, 1 } } })

-- Windows. Only a fallback: windowsIn, windowsOut and windowsMove all
-- set their own values.
hl.animation({ leaf = "windows", enabled = true, speed = 4.5, bezier = "glow" })
-- Opening a window: grows in from slightly smaller.
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.5, bezier = "glow", style = "popin 90%" })
-- Closing a window: shrinks slightly while fadeOut fades it.
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.5, bezier = "doze", style = "popin 90%" })
-- Moving, resizing and retiling windows.
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, bezier = "drowse" })
-- Border colour change when focus moves.
hl.animation({ leaf = "border", enabled = true, speed = 6, bezier = "glow" })
-- Fade when a window opens.
hl.animation({ leaf = "fadeIn", enabled = true, speed = 2.5, bezier = "glow" })
-- Fade when a window closes. Keep it close to windowsOut, or the
-- window turns invisible before it finishes shrinking.
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2, bezier = "doze" })
-- Dimming of unfocused windows. No visible effect while
-- decoration.dim_inactive is off.
hl.animation({ leaf = "fadeDim", enabled = true, speed = 4, bezier = "glow" })
-- Switching workspaces: crossfades in place, slow at first then quick.
hl.animation({ leaf = "workspaces", enabled = true, speed = 3, bezier = "doze", style = "fade" })
-- Scratchpad: slides in vertically while fading.
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4, bezier = "glow", style = "slidefadevert 20%" })
