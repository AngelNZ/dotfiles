#!/bin/bash
set -e

DOTFILES="$HOME/.dotfiles"
REPO="https://github.com/AngelNZ/dotfiles.git"
PACKAGES=(zsh vim git opencode)

if ! command -v stow &>/dev/null; then
  echo "Instalando stow..."
  if [[ "$OSTYPE" == "darwin"* ]]; then
    brew install stow
  elif [[ -f /etc/debian_version ]]; then
    sudo apt update && sudo apt install -y stow
  elif [[ -f /etc/arch-release ]]; then
    sudo pacman -S --noconfirm stow
  else
    echo "Error: instala stow manualmente y vuelve a ejecutar"
    exit 1
  fi
fi

if [[ ! -d "$DOTFILES" ]]; then
  echo "Clonando dotfiles..."
  git clone "$REPO" "$DOTFILES"
fi

cd "$DOTFILES"

echo "Stoweando packages..."
for pkg in "${PACKAGES[@]}"; do
  if stow -d stow -t "$HOME" "$pkg" 2>/dev/null; then
    echo "  ✅ $pkg"
  else
    echo "  ⚠️  $pkg ya existe (stow --override o backup manual)"
  fi
done

echo "✅ Dotfiles instalados"
