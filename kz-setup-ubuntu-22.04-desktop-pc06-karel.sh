# shellcheck shell=bash
###############################################################################
# Instelbestand voor Ubuntu 22.04 LTS desktop op pc06 voor karel.
#
# Geschreven door Karel Zimmer <info@karelzimmer.nl>.
###############################################################################

#1 cockpit (browsergebaseerd beheer)
#2 https://localhost:9090
cp /usr/share/applications/kz-cockpit.desktop "$HOME"/.local/share/applications/
sed --in-place --expression='s/NoDisplay=true/NoDisplay=false/' "$HOME"/.local/share/applications/kz-cockpit.desktop
kz-gset --addfavaft=kz-cockpit
#2 rm "$HOME"/.local/share/applications/kz-cockpit.desktop
#2 kz-gset --delfav=kz-cockpit

#1 firefox (webbrowser)
kz-gset --delfav=firefox_firefox
#2 kz-gset --addfavbef=firefox_firefox

#1 gnome (bureaubladomgeving)
gsettings set org.gnome.desktop.background picture-uri "file:///$HOME/kz-data/Achtergrond"
gsettings set org.gnome.desktop.sound allow-volume-above-100-percent true
gsettings set org.gnome.nautilus.preferences show-create-link true
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 32
#2 gsettings reset org.gnome.desktop.background picture-uri1
#2 gsettings reset org.gnome.desktop.sound allow-volume-above-100-percent
#2 gsettings reset org.gnome.nautilus.preferences show-create-link
#2 gsettings reset org.gnome.shell.extensions.dash-to-dock dash-max-icon-size

#1 kvm (virtualisatie)
kz-gset --addfavaft=virt-manager
#2 kz-gset --delfav=virt-manager

#1 terminal (terminalvenster)
kz-gset --addfavbef=org.gnome.Terminal
## Vooruit zoeken in history met Ctrl-S).
sed --in-place --expression='/^stty -ixon/d' "$HOME"/.bashrc
echo 'stty -ixon  # Enable fwd search history (i-search)' >> "$HOME"/.bashrc
## Gebruiksvriendelijke viewer voor Info-documenten (en man-pagina's).
sed --in-place --expression='/^alias info=/d' "$HOME"/.bashrc
echo 'alias info=pinfo # Gebruiksvriendelijke viewer voor Info-documenten' >> "$HOME"/.bashrc
#2 kz-gset --delfav=org.gnome.Terminal
#2 sed --in-place --expression='/^stty -ixon/d' "$HOME"/.bashrc
#2 sed --in-place --expression='/^alias info=/d' "$HOME"/.bashrc

#1 thunderbird (e-mail)
kz-gset --delfav=thunderbird
#2 kz-gset --addfavbef=thunderbird

#1 vscode (editor)
kz-gset --addfavbef=code_code
xdg-mime default code_code.desktop application/json             # JSON document
xdg-mime default code_code.desktop application/x-desktop        # Bureaublad-configuratiebestand
xdg-mime default code_code.desktop application/x-shellscript    # Bash-script
xdg-mime default code_code.desktop application/xml              # PolicyKit actiedefinitiebestand
xdg-mime default code_code.desktop text/html                    # Web-pagina
xdg-mime default code_code.desktop text/markdown                # Markdown document
xdg-mime default code_code.desktop text/troff                   # Man-pagina
#2 kz-gset --delfav=code_code
