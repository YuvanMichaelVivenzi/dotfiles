#!/usr/bin/env bash
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
sleep 3
gum spin --spinner dot --title "Starting nescessary processes..." -- sleep 3
hyprpm update && hyprpm reload
sleep 3
sudo pacman -Syu && yay -Syu && yay -Syu --devel
sleep 3
echo -e "${GREEN}"
figlet "Reboot"
echo -e "${NONE}"
echo "A reboot of your system is recommended. If any big updates were performed."
echo
if gum confirm "Do you want to reboot your system now?" ;then
    gum spin --spinner dot --title "Rebooting now..." -- sleep 3
    systemctl reboot
elif [ $? -eq 130 ]; then
    exit 130
else
    echo ":: Reboot skipped"
fi
echo ""

echo "Script finished successfully. :D"

sleep 3

