# Infrared Snooze Design Notes

## Idea


Meant to give a comfortable warm fuzzy feeling as you dose off. Surfaces are warm red-black,
anything that glows is led by an ember red with amber and honey behind it, and
everything that isn't asking for attention is dim, soft and a little sleepy.

The theme should put you in a warm, sleepy mood: starry space, dreamy skies
and a touch of fantasy.

## Colour roles

`colors.toml` is the source of truth. Change colours there first, then update
the hand-tuned files below to match.

| Role | Colour | Used for |
|---|---|---|
| `accent` | `#cc432e` ember red | focus: cursor, active border, current line, selected text |
| `orange`, `yellow` | `#d27a3a` amber, `#c99a4a` honey | the rest of the warm spectrum: border gradient, load ramps, warnings |
| `red` | `#c2445f` crimson-pink | errors, deletions, failed states only |
| `bright_red` | `#d85c74` | errors on shell surfaces (lock, polkit) |
| `foreground` | `#c2a08e` | text; about 40% of white, warm and low in blue |
| `background` family | `#150b0b` → `#090505` | surfaces, darkest at the edges |
| `selection` | `#3d1f1c` | selection, quiet borders |
| `muted` | `#785c56` | comments, line numbers, idle chrome |
| `green`, `blue`, `magenta`, `cyan` | `#993223` deep ember (the accent, darker), `#c4865f` peach, `#ad6670` rose, `#b8603e` terracotta | the ANSI slots terminal tools hardcode (fastfetch, `ls`, git): warm, so those tools stay in the theme |

Rules:

- **Dim first.** Brightness matters more than hue, and the text is most of the
  light a mostly-text window gives out. Keep `foreground` around 40% of white
  and `bright_foreground` around 50%; don't brighten them to add contrast.
  Every text colour must still reach at least 3:1 on `background`.
- **Red leads, the spectrum supports.** The accent, border start, glow and the
  top of every load ramp are red, so the theme reads as red. Amber and honey
  appear behind it (the border's tail, warnings, the middle of ramps), never
  as the main focus colour.
- **Warm colours keep blue low.** Ember, amber and honey come mostly from the
  red subpixel.
- **The ANSI slots stay in the theme's hue.** Tools like fastfetch, `ls` and
  git ask the terminal for "green", "blue", "magenta" and "cyan" by name, so
  those slots hold warm colours (deep ember, peach, rose, terracotta), the
  same way Lumon and Invasion keep theirs blue. No cyan anywhere.
- **Lean ember and amber over bright yellow.** Yellow has a lot of green, and
  green still registers at screen-level light, so use honey sparingly and dim.
- **Highlights are warm grey, not tinted.** Hovered and selected rows lift
  toward the foreground; a coloured tint at that size turns muddy. Colour is
  for small marks: borders, badges, the cursor, selected text.
- **Text on the accent is dark.** Use `background` on top of `accent`.
- **The accent and `red` never share a job.** Focus must never look like an
  error, which is why the accent leans orange and `red` leans pink.
- **Only load glows.** In graphs and meters, rising usage moves from dim to
  the accent. Free or idle things stay dim.
- **Unfocused things doze.** Inactive windows are more see-through.
  Menus and tooltips use a dimmer version of the border glow.

## Files

Omarchy generates every app config from `colors.toml`. The theme only ships a
file where the generated one doesn't fit the palette:

| File | Why it's hand-tuned |
|---|---|
| `hyprland.lua` | gaps, rounding, blur, red glow shadow, glass opacity, shell blur, slow "drowse" animations |
| `neovim.lua` | aether.nvim never uses the accent and draws floats and search in blue |
| `gum_env.lua` | the chosen item glows in the accent; filter matches and log levels are amber instead of looking like errors |
| `shell.toml` | translucent surfaces for blur, a dimmer glow for menus, bright red for wrong-password errors |
| `helix.toml` | the generated version puts headings and bold text in the error pink and never uses the accent |
| `vencord.theme.css` | thpm's generated Vesktop theme takes Discord's accent from `blue`, so the client turns periwinkle; also adds the heat haze (messages blur into the chat bar, which smoulders while there's text in it), slowly glowing mention badges, and ember typing dots |

Terminals, VS Code, Obsidian, Chromium, the keyboard backlight and the rest
use Omarchy's generated output.
