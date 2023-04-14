#install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/dev/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/dev/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
    
#install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#install alacritty
brew install --cask alacritty
mkdir -p ~/.config/alacritty/

#install nvim
brew install nvim

#install tmux
brew reinstall tmux

#install SF-Mono-Nerd-Font
brew tap epk/epk
brew install --cask font-sf-mono-nerd-font

#install starship
brew install starship
eval "$(starship init zsh)"


#alias nvim
alias vi='nvim'

#install vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'


brew install dbus
echo 'export DBUS_SESSION_BUS_ADDRESS="unix:path=$DBUS_LAUNCHD_SESSION_BUS_SOCKET"' >> ~/.zshrc 
sed -i '' 's|<auth>EXTERNAL</auth>|<auth>DBUS_COOKIE_SHA1</auth>|g' l