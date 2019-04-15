init_iterm: ## Set defaults for iterm
	defaults read com.googlecode.iterm2.plist

brew: ## Install all brew packages
	bash install/brew.sh

git: ## Setup git
	bash install/git.sh

mas: ## Install all Mac App Store
	bash install/mas.sh

osx: ## Configure all osx settings
	bash install/osx.sh

install:
	make brew git mas osx 
					
