# dotfiles

Mis archivos de configuración gestionados con [GNU Stow](https://www.gnu.org/software/stow/).

## Instalación

```bash
curl -fsSL https://raw.githubusercontent.com/AngelNZ/dotfiles/main/bootstrap.sh | bash
```

O manualmente:

```bash
git clone https://github.com/AngelNZ/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
brew install stow          # macOS
# sudo apt install stow    # Debian/Ubuntu
# sudo pacman -S stow      # Arch
stow -d stow -t ~ zsh vim git opencode
```

## Packages

| Package | Directorio destino |
|---------|-------------------|
| `zsh`   | `~/.zshrc` |
| `vim`   | `~/.vimrc` |
| `git`   | `~/.gitconfig` |
| `opencode` | `~/.config/opencode/` |
| `omo` | `~/.config/opencode/oh-my-openagent.json` |

## oh-my-openagent

Plugin de agentes para OpenCode. Instalado con:

- **Plataforma:** OpenCode (Ultimate)
- **Modelo principal:** Kimi K2.6 (OpenCode Go)
- **Gemini:** Google Gemini 3.1 Pro / 3 Flash

Para autenticar Gemini:

```bash
opencode auth login
# Provider → Google → OAuth con Google
```
