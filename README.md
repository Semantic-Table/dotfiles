# Dotfiles

Config perso pour WezTerm + LazyVim (Neovim) sur Windows.

## WezTerm

Le fichier de config se trouve dans `wezterm/.wezterm.lua`.

### Installation

Copier le fichier à la racine du home :

```bash
cp wezterm/.wezterm.lua ~/.wezterm.lua
```

### Configuration actuelle

- **Transparence** : opacité à 0.8, sans effet de flou (`Disable`)
- **Barre de titre** : masquée (`RESIZE` only)
- **Tab bar** : masquée si un seul onglet, style simplifié
- **Padding** : 5px sur chaque bord

### Options de backdrop (Windows 11)

| Valeur      | Effet                                      |
|-------------|---------------------------------------------|
| `"Disable"` | Transparence pure, pas de flou              |
| `"Acrylic"` | Flou intense type glassmorphism             |
| `"Mica"`    | Subtil, couleur basée sur le wallpaper      |
| `"Tabbed"`  | Variante de Mica pour les onglets           |

## LazyVim

Les plugins se trouvent dans `lazyvim/lua/plugins/`.

### Installation

Copier les fichiers de plugins dans la config Neovim :

```bash
# Windows
cp lazyvim/lua/plugins/* ~/AppData/Local/nvim/lua/plugins/

# Mac/Linux
cp lazyvim/lua/plugins/* ~/.config/nvim/lua/plugins/
```

### Plugins inclus

| Plugin | Fichier | Description |
|--------|---------|-------------|
| **Gruvbox** | `gruvbox.lua` | Colorscheme Gruvbox |
| **Hardtime** | `hardtime.lua` | Force les bonnes habitudes Vim (bloque le spam de touches) |
| **Transparent** | `transparent.lua` | Rend le background Neovim transparent (pour voir le terminal derriere) |
| **Claude Code** | `claude-code.lua` | Integration Claude Code dans Neovim |

### Raccourcis Claude Code

| Raccourci | Action |
|-----------|--------|
| `<leader>clc` | Toggle Claude Code |
| `<leader>cln` | Nouvelle session |
| `<leader>cls` | Envoyer la selection (mode visuel) |
| `<leader>clv` | Ouvrir en vsplit |

### Pre-requis

- [Neovim](https://neovim.io/) >= 0.9
- [LazyVim](https://www.lazyvim.org/)
- [WezTerm](https://wezfurlong.org/wezterm/)
- [Lazygit](https://github.com/jesseduffield/lazygit) (pour `<leader>gg`)
