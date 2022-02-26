#!/bin/bash
#
# Perform installation for 5" LCD Touchscreen Driver in Raspbian (Raspberry Pi OS)
# Reference: https://littlebirdelectronics.com.au/guides/42/5-inch-touch-screen-display-with-raspberry-pi

install_driver_lcd_5inch() {
    echo -e "\n\n\n\nPerform installation for 5-inch LCD Touchscreen Driver... "
    sleep 2
    echo -e "[1] Append /boot/config.txt file"
    cat << EOF >> /boot/config.txt

#Settings for 5-inch LCD screen:
max_usb_current=1
hdmi_group=2
hdmi_mode=87
hdmi_cvt 800 480 60 6 0 0 0
hdmi_drive=1

EOF
    echo -e "[2] Install LCD Driver (Will restart device after installation complete)..."
    sleep 2
    cp "${script_dir}/assets/LCD-show-180817.tar.gz" "${script_dir}/workspace/"
    cd "${script_dir}/workspace/"
    tar xzvf LCD-show-180817.tar.gz
    cd LCD-show/
    chmod +x LCD5-show
    ./LCD5-show
}