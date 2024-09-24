set -o xtrace

sudo dnf update
sudo dnf install git nodejs22 java-21-openjdk clang clang-tools-extra neovim

git clone https://github.com/soupertonic/dotfiles

sudo dnf copr enable solopasha/hyprland
sudo dnf install hyprland --repo copr:copr.fedorainfracloud.org:solopasha:hyprland

gsettings set org.gnome.desktop.interface font-name "Inter Display Medium, 9.5"
