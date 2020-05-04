SHELL = /bin/bash
nvim ?= nvim
XDG_CACHE_HOME ?= $(HOME)/.cache

default: install

install:
	@mkdir -vp "$(XDG_CACHE_HOME)/vim/"{backup,session,swap,tags,undo}; \
	$(nvim) -V1 -es -i NONE -N -u config/init.vim -c "try | call dein#update() | finally | echomsg '' | qall! | endtry"

update:
	@git pull --ff --ff-only; \
	$(nvim) -V1 -es -i NONE -N -u config/init.vim -c "try | call dein#clear_state() | call dein#update() | finally | qall! | endtry"

fzf:
	brew install fzf
	brew install bat
	brew install ripgrep
	brew install the_silver_searcher

coc:
	brew install node
	brew install yarn

devicon:
	curl https://sh.rustup.rs -sSf | sh
	cargo install devicon-lookup

upgrade: update

uninstall:
	rm -rf "$(XDG_CACHE_HOME)/vim"
