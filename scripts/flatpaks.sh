# Install flatpak first
sudo xbps-install -Sy flatpak

# Add repo
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install Apps
# LocalSend
sudo flatpak install flathub org.localsend.localsend_app
