# Automation Repo for Raspberry Pi 4
Repo for automating common command need to execute when first time after installing OS

![Lines of code](https://img.shields.io/tokei/lines/github/doctor500/raspberry-pi?style=for-the-badge)
![GitHub last commit](https://img.shields.io/github/last-commit/doctor500/raspberry-pi?style=for-the-badge)

# Folder Content
```
📦raspberry-pi
┣📂raspbian 
┃ ┗ ⚙️driver-lcd-5inch.bash
┣⚙️main-raspbian.bash
┗🧾README.md
```

# Notes
- tested on RPi4, maybe run on antoher version but still not untestable
- need `sudo` priviledge

# Usage
```
git clone git@github.com:doctor500/raspberry-pi.git
```
```
cd raspberry-pi
```

for Raspbian/Raspberry Pi OS
```
chmod +x ./main-raspbian.bash
```
```
./main-raspbian.bash
```