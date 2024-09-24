set -o xtrace

sudo dnf update
sudo dnf install git nodejs22 java-21-openjdk clang clang-tools-extra neovim

git clone https://github.com/soupertonic/dotfiles

sudo dnf copr enable solopasha/hyprland
sudo dnf install hyprland --repo copr:copr.fedorainfracloud.org:solopasha:hyprland

gsettings set org.gnome.desktop.interface font-name "Inter Display Medium, 9.5"
Hyprland &
firefox &

FIREFOX_PID=$!

wait 2

mkdir -p .mozilla/firefox/setup.default
touch .mozilla/firefox/setup.default/user.js

echo "user_pref(\"browser.download.dir\", \"/home/soup\");" >> .mozilla/firefox/setup.default/user.js
echo "user_pref(\"browser.aboutConfig.showWarning\", false);" >> .mozilla/firefox/setup.default/user.js
echo "user_pref(\"browser.translations.automaticallyPopup\", false);" >> .mozilla/firefox/setup.default/user.js
echo "user_pref(\"browser.preferences.experimental\", false);" >> .mozilla/firefox/setup.default/user.js
echo "user_pref(\"browser.preferences.experimental.hidden\", true);" >> .mozilla/firefox/setup.default/user.js
echo "user_pref(\"browser.preferences.moreFromMozilla\", false);" >> .mozilla/firefox/setup.default/user.js
echo "user_pref(\"browser.search.region\", \"EN\");" >> .mozilla/firefox/setup.default/user.js
echo "user_pref(\"browser.urlbar.shortcuts.bookmarks\", false);" >> .mozilla/firefox/setup.default/user.js
echo "user_pref(\"browser.urlbar.shortcuts.tabs\", false);" >> .mozilla/firefox/setup.default/user.js
echo "user_pref(\"browser.urlbar.suggest.bookmark\", false);" >> .mozilla/firefox/setup.default/user.js
echo "user_pref(\"browser.urlbar.suggest.engines\", false);" >> .mozilla/firefox/setup.default/user.js
echo "user_pref(\"browser.urlbar.suggest.openpage\", false);" >> .mozilla/firefox/setup.default/user.js
echo "user_pref(\"browser.urlbar.suggest.topsites\", false);" >> .mozilla/firefox/setup.default/user.js
echo "user_pref(\"browser.urlbar.suggest.trending\", false);" >> .mozilla/firefox/setup.default/user.js
echo "user_pref(\"browser.warnOnQuitShortcut\", false);" >> .mozilla/firefox/setup.default/user.js
echo "user_pref(\"identity.fxaccounts.enabled\", false);" >> .mozilla/firefox/setup.default/user.js
