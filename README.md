# Luk3Yao's Neo/vim Config

Lean mean Neo/vim machine, 30-45ms startup time.

Best with Neovim or Vim 8 with +python3 extensions enabled.

![screen.png](https://i.loli.net/2019/10/05/mtnvAb78zT62khs.png)

## Features

- Fast startup time
- Robust, yet light-weight
- Lazy-load 95% of plugins with [Shougo/dein.vim]
- Custom side-menu (try it out! <kbd>Leader</kbd>+<kbd>l</kbd>)
- Modular configuration
- Denite (Unite's successor) centric work-flow
- Extensive Deoplete setup (auto-completion)
- Lightweight simple status/tabline
- Easy customizable theme
- Premium color-schemes
- Central location for tags

## Pre-requisites

- Python 3 (`brew install python`)

- Python 2 (`brew install python@2`)

- Neovim (Optional, `brew install neovim`)

- virtualenv for both python3 and python2:

  ```shell
  pip2 install virtualenv
  pip3 install virtualenv
  ```

- Manually config the python3 path but not using detecting automatically to accelerate the startup

- Rust & Cargo (to accelerate the icon render)

  ```shell
  curl https://sh.rustup.rs -sSf | sh # install the Rust and cargo at the same time
  cargo install bat | brew install bat # preview
  cargo install devicon-lookup # faster render the file notation
  ```

- For coc modules:
  ```sh
  npm install -g yarn
  yarn config set https-proxy http://localhost:3128
  ```
  and then exe follow in ex-mode:
  ```sh
  :call coc#util#build()
  ```

## Install

**1.** replace the `python3_host_prog` in `config/vimrc` with your py3

**2.** then clone the repo to `~/.config/nvim` , open vim and it’ll install the dein but alse the other plugins automatically.

**3.** After last step, code the command `:UpdataRemotePlugin` to update the deoplete with vim.

### Recommended Linters

- Node.js based linters:

```sh
npm -g install jshint jsxhint jsonlint stylelint sass-lint
npm -g install raml-cop markdownlint-cli write-good
```

- Python based linters:

```sh
pip install --user pycodestyle pyflakes flake8 vim-vint proselint yamllint
```

- Shell lint: [shellcheck.net](https://www.shellcheck.net/)
- HTML Tidy: [html-tidy.org](http://www.html-tidy.org/)

### Recommended Tools

- ag (The Silver Searcher): [ggreer/the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
- z (jump around): [rupa/z](https://github.com/rupa/z)
- Universal ctags: [ctags.io](https://ctags.io/)
- Fuzzy file finders: [fzf](https://github.com/junegunn/fzf), [fzy](https://github.com/jhawthorn/fzy), or [peco](https://github.com/peco/peco)
- Tern: `npm -g install tern`
- bat
- rg

## User Custom Config

If you want to add your own configuration, create the `config/local.vim` file
and add your personal settings there. This file is ignored by `.gitignore`.

If you'd like to install plugins by yourself, create a
`config/local.plugins.yaml` file and manage your own plugin collection.

## Structure

- [config/](./config) - Configuration
  - [plugins/](./config/plugins) - Plugin configurations
  - [plugins.yaml](./config/plugins.yaml) - _**Plugins!**_
  - local.plugins.yaml - Custom user plugins
  - [vimrc](./config/vimrc) - Initialization
  - [init.vim](./config/init.vim) - `runtimepath` initialization
  - [general.vim](./config/general.vim) - General configuration
  - local.vim - Custom user settings
  - [neovim.vim](./config/neovim.vim) - Neovim specific setup
  - [mappings.vim](./config/mappings.vim) - Key-mappings
  - [theme.vim](./config/theme.vim) - Color-scheme and theme setup
  - [filetype.vim](./config/filetype.vim) - Language behavior
  - [terminal.vim](./config/terminal.vim) - Terminal configuration
- [ftplugin/](./ftplugin) - Language specific custom settings
- [plugin/](./plugin) - Customized small plugins
- [snippets/](./snippets) - Personal code snippets
- [themes/](./themes) - Themes! Combination of styles and color-scheme
- [filetype.vim](./filetype.vim) - Custom filetype detection

## Plugin Highlights

- Package management with caching enabled and lazy loading
- Project-aware tabs and label
- NERDTree as file-manager + Git status icons
- Go completion via vim-go and gocode
- Python Jedi completion, PEP8 convention
  hex editor, sessions, and much more.

_Note_ that 95% of the plugins are **[lazy-loaded]**.

## ToDo

- [ ] Sort out mappings of plugins by vim-which-keys
- [ ] Read the flow source to simplify and speed up
- [ ] Skilled more in Vim Script
- [ ] Read the vim-buffet source

