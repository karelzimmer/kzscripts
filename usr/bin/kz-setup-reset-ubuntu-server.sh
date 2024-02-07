# shellcheck shell=bash
###############################################################################
# Reset file for Ubuntu server.
#
# Written by Karel Zimmer <info@karelzimmer.nl>, CC0 1.0 Universal
# <https://creativecommons.org/publicdomain/zero/1.0>, 2023-2024.
###############################################################################


# APP lynis USER
rm --force --verbose --recursive --verbose /home/"$USER"/lynis


# APP terminal USER *
sed --in-place --expression='/^stty -ixon/d' "$HOME"/.bashrc
