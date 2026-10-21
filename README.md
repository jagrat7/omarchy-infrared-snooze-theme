# Infrared Snooze

A dim, dark Omarchy theme: warm red-black surfaces, an ember red glow on
whatever has focus, and soft dusty colours for everything else. Unfocused windows turn
more see-through; animations drift in slowly.

See [DESIGN.md](DESIGN.md) for the palette roles and why each hand-tuned file
exists.

## Install

### Full theme (recommended)

Omarchy ignores `.lua` files and terminal configs from themes installed with
`omarchy theme install`, so that install loses the Hyprland look and feel, the
Neovim colours and the gum colours. To get everything, clone the repo and link
it in:

```bash
git clone https://github.com/jagrat7/omarchy-infrared-snooze-theme ~/.local/share/omarchy-infrared-snooze-theme
ln -s ~/.local/share/omarchy-infrared-snooze-theme ~/.config/omarchy/themes/infrared-snooze
omarchy theme set infrared-snooze
```

Log out and back in once so gum picks up its colours.

### Colours only

```bash
omarchy theme install https://github.com/jagrat7/omarchy-infrared-snooze-theme
```

This gives you the palette, the shell surfaces and Helix, but uses
Omarchy's default Hyprland look and default Neovim and gum colours.

## What's included

- `colors.toml`: the palette; Omarchy generates every other app config from it
- `hyprland.lua`: red-to-amber gradient borders, focused-window glow,
  glass opacity, blur behind the Omarchy shell, slow soft animations
- `neovim.lua`: [aether.nvim](https://github.com/bjarneo/aether.nvim) with the
  ember red accent on the cursor, current line number, titles, search and floats
- `gum_env.lua`: gum prompt colours for Omarchy's terminal scripts
- `shell.toml`: translucent bar, menus, popups and notifications, plus a lock
  screen whose error state can't be confused with the normal glow
- `helix.toml`: fixes where the generated colours didn't suit a red theme
- `vencord.theme.css`: Vesktop / Vencord with an ember red accent and warm
  surfaces. Installed by [thpm](https://github.com/OldJobobo/thpm) when you
  apply the theme

Wallpapers are still to come: `backgrounds/` is empty.
