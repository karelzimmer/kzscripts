# shellcheck shell=bash
###############################################################################
# Standard set up file for Debian desktop.
#
# Written by Karel Zimmer <info@karelzimmer.nl>, CC0 1.0 Universal
# <https://creativecommons.org/publicdomain/zero/1.0>, 2013-2023.
###############################################################################

# APP dashtodock *
gnome-extensions enable dash-to-dock@micxgx.gmail.com
gsettings set org.gnome.shell.extensions.dash-to-dock apply-custom-theme true
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize-or-previews'
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'LEFT'
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height true
gsettings set org.gnome.shell.extensions.dash-to-dock icon-size-fixed true
gsettings set org.gnome.shell disable-user-extensions false

# APP firefox karel@pc07 user@debian
kz-gset --delfav=firefox-esr

# APP gnome *
kz-gset --addappfolder=KZ
gsettings set org.gnome.desktop.calendar show-weekdate true
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface clock-show-weekday true
gsettings set org.gnome.desktop.interface show-battery-percentage true
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true
gsettings set org.gnome.desktop.screensaver lock-enabled false
gsettings set org.gnome.desktop.session idle-delay 900
gsettings set org.gnome.mutter center-new-windows true
gsettings set org.gnome.nautilus.icon-view default-zoom-level 'large'
gsettings set org.gnome.nautilus.preferences click-policy 'single'
gsettings set org.gnome.nautilus.preferences open-folder-on-dnd-hover true
gsettings set org.gnome.settings-daemon.peripherals.touchscreen orientation-lock true
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.settings-daemon.plugins.power idle-dim false
gsettings set org.gnome.settings-daemon.plugins.power power-button-action 'interactive'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type 'nothing'
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-battery-type 'nothing'
gsettings set org.gnome.Terminal.Legacy.Settings theme-variant 'light'
gsettings set org.gnome.shell disable-user-extensions false

# APP gnome karel@pc07 user@debian
gsettings set org.gnome.desktop.sound allow-volume-above-100-percent true
gsettings set org.gnome.nautilus.preferences show-create-link true
gsettings set org.gnome.settings-daemon.plugins.power sleep-inactive-ac-type nothing

# APP google-chrome *
kz-gset --addfavbef=google-chrome

# APP kvm karel@pc07
kz-gset --addfavaft=virt-manager

# APP nautilus-hide *
echo 'snap' > "$HOME"/.hidden

# APP skype *
kz-gset --addfavaft=kz-skype

# APP spotify *
kz-gset --addfavaft=kz-spotify

# APP start-install *
kz-gset --delfav=install-debian

# APP terminal karel@pc07 user@debian
kz-gset --addfavbef=org.gnome.Terminal
# Turn on aliases.
sed --in-place --expression='s/#alias/alias/g' "$HOME"/.bashrc
# Search forward in history (with Ctrl-S).
sed --in-place --expression='/^stty -ixon/d' "$HOME"/.bashrc
echo 'stty -ixon  # Enable fwd search history (i-search)' >> "$HOME"/.bashrc

# APP vscode karel@pc07 user@debian
kz-gset --addfavbef=code_code
xdg-mime default code_code.desktop application/json             # JSON document
xdg-mime default code_code.desktop application/x-desktop        # Desktop configuration file
xdg-mime default code_code.desktop application/x-shellscript    # Bash script
xdg-mime default code_code.desktop application/xml              # PolicyKit action definition file
xdg-mime default code_code.desktop text/html                    # Web page
xdg-mime default code_code.desktop text/markdown                # Markdown document
xdg-mime default code_code.desktop text/troff                   # Man page
xdg-mime default code_code.desktop text/x-python                # Python-script

# APP webmin karel@pc07
# Web app: https://localhost:10000
kz-gset --addfavaft=kz-webmin
