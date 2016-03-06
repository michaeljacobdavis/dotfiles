DIR=$(HOME)/dotfiles

all: brew symlinks configure-zsh configure-prezto configure-desk npm osx

install-nvm:
	@curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.29.0/install.sh | bash
	@source ~/.nvm/nvm.sh
	@source ~/.nvm/nvm.sh && nvm install stable
	@source ~/.nvm/nvm.sh && nvm alias default stable

npm: install-nvm
	@source ~/.nvm/nvm.sh && npm install -g coffee-script eslint node-inspector node-static todo node-info

install-homebrew:
	ruby -e "$$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
	@brew update

brew: install-homebrew
	@brew install jenv
	@brew install shellcheck
	@brew install desk
	@brew install zsh
	@brew install git
	@brew install the_silver_searcher
	@brew install caskroom/cask/brew-cask
	@brew cask install atom

configure-desk:
	@rm -rf ~/.desk && ln -s ~/Dropbox/Apps/Desk ~/.desk

configure-zsh:
	@echo "/usr/local/bin/zsh" | sudo tee -a /etc/shells > /dev/null
	@chsh -s /usr/local/bin/zsh $$USER

configure-prezto:
	@ln -nsf $(DIR)/zsh/prezto ~/.zprezto
	@ln -nsf $(DIR)/zsh/prezto/runcoms/zlogin ~/.zlogin
	@ln -nsf $(DIR)/zsh/prezto/runcoms/zlogout ~/.zlogout
	@ln -nsf $(DIR)/zsh/prezto-override/zpreztorc ~/.zpreztorc
	@ln -nsf $(DIR)/zsh/prezto/runcoms/zprofile ~/.zprofile
	@ln -nsf $(DIR)/zsh/prezto/runcoms/zshenv ~/.zshenv
	@ln -nsf $(DIR)/zsh/zshrc ~/.zshrc

symlinks:
	@ln -nsf $(DIR)/git/gitconfig ~/.gitconfig
	@ln -nsf $(DIR)/git/gitignore ~/.gitignore_global
	@ln -nsf $(DIR)/bin ~/.bin
	@ln -nsf ~/Dropbox/Apps/Atom ~/.atom

osx:
	@bash scripts/osx.sh
