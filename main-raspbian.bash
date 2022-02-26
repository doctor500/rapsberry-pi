#!/bin/bash
#
# Installation menu for Raspbian (Raspberry Pi OS)

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd -P)

if [ -d "${script_dir}/raspbian" ]; then
  for lib in ./raspbian/*.bash; do
    source "${lib}"
  done
else
  echo "raspbian folder not found"
  exit 1
fi

main_menu() {
    print_main_menu
    PS3='Please enter your choice: '
    options=("Install All" "Install 5 inch LCD Touchscreen Driver" "Quit")
    select opt in "${options[@]}"
    do
        case $opt in
            "Install All")
                install
                break
                ;;
            "Install 5 inch LCD Touchscreen Driver")
                install lcd_driver
                break
                ;;
            "Quit")
                break
                ;;
            *) echo "invalid option $REPLY";;
        esac
    done
}

install() {
  if [[ $# -eq 0 ]]; then
    echo "Install all"
  else
    case $1 in
      'lcd_driver')
          install_driver_lcd_5inch
       ;;
    esac
  fi
}

print_main_menu() {
    cat <<EOF
==========================
| Raspberry Pi installer |
==========================

Choose What you want to Install
EOF
}

main_menu