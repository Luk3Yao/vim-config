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

- For coc modules(if you are using yarn to install):
  ```sh
  npm install -g yarn
  yarn config set https-proxy http://localhost:3128
  ```
  and then exe follow in ex-mode:
  ```sh
  :call coc#util#build()
  ```

### Recommended Tools

- ag (The Silver Searcher): [ggreer/the_silver_searcher](https://github.com/ggreer/the_silver_searcher)
- z (jump around): [rupa/z](https://github.com/rupa/z)
- Universal ctags: [ctags.io](https://ctags.io/)
- Fuzzy file finders: [fzf](https://github.com/junegunn/fzf), [fzy](https://github.com/jhawthorn/fzy), or [peco](https://github.com/peco/peco)
- Tern: `npm -g install tern`
- bat
- rg
- issw: [auto switch input sources on mac os](https://github.com/vovkasm/input-source-switcher.git)

## Structure

- [config/](./config) - Configuration
  - [basic](./basic) - Basic config about Behaviour, UI etc.
  - [dein](./dein) - dein config yaml
  - [plugins/](./config/plugins) - Plugin configurations
  - [vimrc](./config/vimrc) - Initialization
- [ftplugin/](./ftplugin) - Language specific custom settings
- [plugin/](./plugin) - Customized small plugins
- [snippets/](./snippets) - Personal code snippets

## Plugin Highlights

- Package management with caching enabled and lazy loading
- Project-aware tabs and label
- Completion for Go, Python, Naive Java, C etc. supported by coc.nvim

_Note_ that 95% of the plugins are **[lazy-loaded]**.

## Behaviour

- issw: [auto switch input sources on mac os](https://github.com/vovkasm/input-source-switcher.git)

switch to ABC input in normal mode automatically by following

It's comfortable with markdown-preview.nvim and cVim

```vim
" auto switch im in macos
" com.apple.keylayout.ABC
" com.baidu.inputmethod.BaiduIM.pinyin
" com.baidu.inputmethod.BaiduIM.wubi
au InsertEnter * call system('issw com.baidu.inputmethod.BaiduIM.wubi')
au InsertLeave * call system('issw com.apple.keylayout.ABC')
```

## Plugins

### StartUp

- [dein](https://github.com/Shougo/dein.vim) - ⚡️ Dark powered Vim/Neovim plugin manager
- [spaceline.vim](https://github.com/hardcoreplayers/spaceline.vim) - vim statusline like spacemacs
- [vim-buffet](https://github.com/bagrat/vim-buffet) - IDE-like Vim tabline

### Markdown

- [vim-markdown](https://github.com/plasticboy/vim-markdown) - Markdown Vim Mode http://plasticboy.com/markdown-vim-mode/
- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) - markdown preview plugin for (neo)vim
- [tagbar-markdown](https://github.com/lvht/tagbar-markdown) - vim-tagbar extension for markdown
- [vim-emoji](https://github.com/junegunn/vim-emoji) - 😃 Emoji in Vim

## Keybindings

### Markdown Preview

- `Space+pp` Open browser to preview

### TagbarToggle

- `Space+o` Open TagBar

## ToDo

- [ ] Read the flow source to simplify and speed up
- [ ] Skilled more in Vim Script

## Credits

Big thanks to the big guys!

- [rafi](https://github.com/rafi)
- [taigacute](https://github.com/taigacute)
