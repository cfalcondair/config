init_iterm: ## Set defaults for iterm
	defaults read com.googlecode.iterm2.plist

brew: ## Install all brew packages
	bash install/brew.sh

atom: ## Install all atom packages
	bash install/atom.sh

git: ## Setup git
	bash install/git.sh

mas: ## Install all Mac App Store
	bash install/mas.sh

osx: ## Configure all osx settings
	bash install/osx.sh

go: ## Install all go packages
	bash install/go.sh

link: ## Setup the symlink
	bash install/link.sh

firefox: ## Setup the firefox settings
	bash install/firefox.sh

dirs: ## Setup the directories for development
	bash install/dirs.sh

full_install:
	make brew go atom git mas link osx firefox dirs
