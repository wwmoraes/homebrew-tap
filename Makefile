.PHONY: Casks/%
Casks/%:
	@brew install --force --cask $@.rb
