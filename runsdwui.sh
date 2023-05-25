# Cleanup files
echo "Cleanup old files. Comment the line out if you wish"
apt -y autoremove && apt autoclean

# Run this shell script so you can launch sdwui
su sdwui "sdwui.sh"