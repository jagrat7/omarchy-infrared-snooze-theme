-- Infrared Snooze: Hyprland look and feel.
--
-- Loaded after Omarchy's defaults (default/hypr/looknfeel.lua and windows.lua),
-- so anything set here wins. The border colours mirror
-- hyprland_active_border / hyprland_inactive_border in colors.toml; change
-- both together.

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

    -- Unfocused windows doze off: dimmed a little, and set back by the
    -- glass opacity rule below.
    dim_inactive = true,
    dim_strength = 0.08,

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
      brightness = 0.8,
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
hl.curve("drowse", { type = "bezier", points = { { 0.22, 1 }, { 0.36, 1 } } })
hl.curve("wake", { type = "bezier", points = { { 0.16, 1 }, { 0.3, 1 } } })
hl.curve("doze", { type = "bezier", points = { { 0.55, 0 }, { 1, 0.45 } } })
hl.curve("glow", { type = "bezier", points = { { 0.4, 0 }, { 0.2, 1 } } })

hl.animation({ leaf = "windows", enabled = true, speed = 4.5, bezier = "drowse" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.5, bezier = "wake", style = "popin 90%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 2.5, bezier = "doze", style = "popin 90%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4, bezier = "drowse" })
hl.animation({ leaf = "border", enabled = true, speed = 6, bezier = "glow" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 2.5, bezier = "wake" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 2, bezier = "doze" })
hl.animation({ leaf = "fadeDim", enabled = true, speed = 4, bezier = "glow" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 5, bezier = "drowse", style = "slidefade 12%" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4, bezier = "wake", style = "slidefadevert 20%" })
