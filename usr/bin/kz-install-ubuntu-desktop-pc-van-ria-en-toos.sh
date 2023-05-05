# shellcheck shell=bash
###############################################################################
# Install file for Ubuntu desktop on pc-van-ria-en-toos.
#
# Written in 2023 by Karel Zimmer <info@karelzimmer.nl>, Creative Commons
# Public Domain Dedication <https://creativecommons.org/publicdomain/zero/1.0>.
###############################################################################

#1 citrix
## Aka Citrix Workspace app, Citrix Receiver, and ICA Client.
## Dependency since Ubuntu 22.04.
wget --output-document=/tmp/libidn11.deb 'https://karelzimmer.nl/assets/citrix/libidn11_1.33-3_amd64.deb'
sudo apt-get install --yes /tmp/libidn11.deb
## This old version because a newer one doesn't work for Toos' work.
wget --output-document=/tmp/icaclient.deb 'https://karelzimmer.nl/assets/citrix/icaclient_20.04.0.21_amd64.deb'
sudo DEBIAN_FRONTEND=noninteractive apt-get install --yes /tmp/icaclient.deb
sudo ln --symbolic --force /usr/share/ca-certificates/mozilla/* /opt/Citrix/ICAClient/keystore/cacerts
sudo c_rehash /opt/Citrix/ICAClient/keystore/cacerts
rm /tmp/icaclient.deb /tmp/libidn11.deb
#2 sudo apt-get remove --yes icaclient libidn11
