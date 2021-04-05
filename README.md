# dotfiles

## Ubuntu / POP OS AWESOME instalation

Config Files Repo : https://github.com/Bearbobs/glorious-awesome-debian

Setps to setup on debain based system as the original author is on arch and It's quite diffrent procedure as compared.

## Awesome and Rofi are quite old in debain repo, Building from Git is required.

    Steps to do the same.
       ## Rofi->
             git clone --recursive https://github.com/DaveDavenport/rofi
             cd rofi
             sudo apt install flex bison librsvg2-dev libjpeg-dev libxcb-ewmh-dev libxcb-randr0-dev libxcb-xtest0-dev libxcb-xinerama0-dev libxcb-shape0-dev libxcb-xkb-dev
             meson setup build
             ninja -C build
             sudo ninja -C build install
       ## Awesome->
             sudo apt build-dep awesome
             git clone https://github.com/awesomewm/awesome
             cd awesome
             make package
             sudo apt install build/*.deb
             
## Building Compositor for Debain
        ##Picom->
              git clone https://github.com/tryone144/compton.git
              cd compton
              git fetch
              git checkout feature/dual_kawase
              sudo apt install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libxdg-basedir-dev libgl1-mesa-dev libpcre2-dev libevdev-dev uthash-dev libev-dev cmake libx11-xcb-dev libxcb-glx0-dev
              git submodule update --init --recursive
              meson --buildtype=release . build
              ninja -C build
              ninja -C build install

## log in into awesome and fixing configs
        *Please backup any previous configs*
              git clone https://github.com/Bearbobs/glorious-awesome-debian.git
              cd glorious-awesome-debian
              -> Copy awesome folder to .config
## login to awesome desktop environment and enjoy!
Please Drop comment for any Help and Amendment.
Main Developer and Maintainer : https://github.com/manilarome/the-glorious-dotfiles
