# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln-s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names

brew install wget --with-iri

brew install vim --override-system-vi

brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

 # Other non
binaries=(
    git
    docker
    python
    python3
    ruby-build
    rbenv
    ssh-copy-id
    imagemagick
    php56
    php56-imagick
    php56-mcrypt
)
