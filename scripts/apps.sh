#!/bin/sh

set -e

appdir="/Applications"

apps=(
    dropbox
    alfred
    google-chrome
    slack
    transmission
    sublime-text3
    virtualbox
    vagrant
    firefox
    google-chrome
    iterm2
    arq
    postgres
    spotify
    vlc
    bartender
    handbrake
    rubymine
    phpstorm
    mumble
    openoffice
    plex-home-theater
    plex-media-server
    screens-connect
    sequel-pro
    steam
    skype
    sopcast
    vmware-fusion
    sidekick
    carbon-copy-cloner
    dash
    eyetv
    smoothmouse
    logitech-control-center
    xquartz
)

fonts=(
    font-source-code-pro
    font-source-code-pro-for-powerline
    font-inconsolata
    font-inconsolata-for-powerline
    font-roboto
    font-blokk
)

main () {
    brew tap caskroom/versions
    brew tap caskroom/fonts

    # echo "installing apps..."
    # brew cask install --appdir=$appdir ${apps[@]}

    echo "installing fonts..."
    brew cask install ${fonts[@]}

    brew cask alfred link
    brew cleanup
}

main "$@"
exit 0
