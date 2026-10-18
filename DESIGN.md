# Infrared Snooze Design Notes

## Idea

A dark room at night lit only by a heat lamp. Surfaces are warm red-black,
focus glows infrared, and everything that isn't asking for attention is soft
and a little sleepy.

## Colour roles

`colors.toml` is the source of truth. Change colours there first, then update
the hand-tuned files below to match.

| Role | Colour | Used for |
|---|---|---|
| `accent` | `#ff5c3a` infrared | focus: cursor, active border, selected rows, current line |
| `red` | `#e8476a` crimson-pink | errors, deletions, failed states only |
| `bright_red` | `#ff6f8c` | errors on shell surfaces (lock, polkit) |
| `background` family | `#130b0d` → `#080405` | surfaces, darkest at the edges |
| `selection` | `#3b1c22` | selection, quiet borders |
| `muted` | `#7d5d60` | comments, line numbers, idle chrome |
| cool colours (`blue`, `cyan`, `green`) | dusty | anything at rest, so the warm colours mean something |

Rules:

- **The accent and `red` never share a job.** Focus must never look like an
  error, which is why the accent leans orange and `red` leans pink.
- **Only load glows.** In graphs and meters, rising usage moves from dim to
  the accent. Free or idle things stay cool.
- **Unfocused things doze.** Inactive windows are dimmed and more see-through.
  Menus and tooltips use a dimmer version of the border glow.

## Files

Omarchy generates every app config from `colors.toml`. The theme only ships a
file where the generated one doesn't fit the palette:

| File | Why it's hand-tuned |
|---|---|
| `hyprland.lua` | gaps, rounding, blur, infrared glow shadow, inactive dimming, glass opacity, shell blur, slow "drowse" animations |
| `neovim.lua` | aether.nvim never uses the accent and draws floats and search in blue |
| `gum_env.lua` | the chosen item glows in the accent; filter matches and log levels are amber instead of looking like errors |
| `shell.toml` | translucent surfaces for blur, a dimmer glow for menus, bright red for wrong-password errors |
| `btop.theme` | the generated net box and download graphs are red, which reads as an alarm |
| `helix.toml` | the generated version puts headings and bold text in the error pink and never uses the accent |
| `vencord.theme.css` | thpm's generated Vesktop theme takes Discord's accent from `blue`, so the client turns periwinkle |

Terminals, VS Code, Obsidian, Chromium, the keyboard backlight and the rest
use Omarchy's generated output.
