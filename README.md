# Luk3Yao's Neo/vim Config

Lean mean Neo/vim machine, 30-45ms startup time.

Best with Neovim or Vim 8 with +python3 extensions enabled.

![screen.png]()

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

It's comfortable with markdown-preview.nvim and cVim while cjk mode is used.

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

- [dein](https://github.com/Shougo/dein.vim) - ✨ Dark powered Vim/Neovim plugin manager
- [spaceline.vim](https://github.com/hardcoreplayers/spaceline.vim) - vim statusline like spacemacs
- [vim-buffet](https://github.com/bagrat/vim-buffet) - IDE-like Vim tabline

### Markdown

- [vim-markdown](https://github.com/plasticboy/vim-markdown) - Markdown Vim Mode http://plasticboy.com/markdown-vim-mode/
- [markdown-preview.nvim](https://github.com/iamcco/markdown-preview.nvim) - markdown preview plugin for (neo)vim
- [tagbar-markdown](https://github.com/lvht/tagbar-markdown) - vim-tagbar extension for markdown
- [vim-emoji](https://github.com/junegunn/vim-emoji) - 😄 Emoji in Vim

## Keybindings

## KeyMap

- Default leader `SPACE` localleader`;` ,The vim keymap in `mappings.vim`,Plugins keymap in `core/plugins/allkey.vim`
- Insertkey like emacs
- if you find the keymap doesn't work , Or the keymap doesn't show in this keylist but in `allkey.vim` ,you can create
  a issue. Welcome PR.

<details><summary><code>Operation</code>👈 Click</summary>
<p>

| Keys                                       | Mode    | Description                             |
| ------------------------------------------ | ------- | --------------------------------------- |
| <kbd>Ctrl</kbd> + <kbd>w</kbd>             | Insert  | delete the whole word                   |
| <kbd>Ctrl</kbd> + <kbd>h</kbd>             | Insert  | delete `BackSpace`                      |
| <kbd>Ctrl</kbd> + <kbd>d</kbd>             | Insert  | delete a single char                    |
| <kbd>Ctrl</kbd> + <kbd>u</kbd>             | Insert  | delete to the beginning of the line     |
| <kbd>Ctrl</kbd> + <kbd>b</kbd>             | Insert  | move left                               |
| <kbd>Ctrl</kbd> + <kbd>f</kbd>             | Insert  | move right                              |
| <kbd>Ctrl</kbd> + <kbd>a</kbd>             | Insert  | move the head of line                   |
| <kbd>Ctrl</kbd> + <kbd>e</kbd>             | Insert  | move the end of line                    |
| <kbd>Ctrl</kbd> + <kbd>p</kbd>             | Command | move up                                 |
| <kbd>Ctrl</kbd> + <kbd>b</kbd>             | Command | move left                               |
| <kbd>Ctrl</kbd> + <kbd>f</kbd>             | Command | move right                              |
| <kbd>Ctrl</kbd> + <kbd>a</kbd>             | Command | move the head of line                   |
| <kbd>Ctrl</kbd> + <kbd>e</kbd>             | Command | move the end of line                    |
| <kbd>Ctrl</kbd> + <kbd>d</kbd>             | Command | move the cursors char                   |
| <kbd>Ctrl</kbd> + <kbd>h</kbd>             | Command | delete `BackSpace`                      |
| <kbd>Ctrl</kbd> + <kbd>S</kbd>             | Insert  | save                                    |
| <kbd>Ctrl</kbd> + <kbd>Q</kbd>             | Insert  | save and exit                           |
| <kbd>Ctrl</kbd> + <kbd>o</kbd>             | Insert  | create a new line                       |
| <kbd>]</kbd> + <kbd>b</kbd>                | Normal  | pre buffer                              |
| <kbd>[</kbd> + <kbd>b</kbd>                | Normal  | next buffer                             |
| <kbd>Ctrl</kbd> + <kbd>x</kbd>             | Normal  | delete buffer                           |
| <kbd>Y</kbd>                               | Normal  | copy utils the end                      |
| <kbd>j</kbd>                               | Normal  | gj                                      |
| <kbd>k</kbd>                               | Normal  | gk                                      |
| <kbd>j</kbd>                               | Visual  | gj                                      |
| <kbd>k</kbd>                               | Visual  | gj                                      |
| <kbd>-</kbd>                               | Normal  | ChooseWin                               |
| <kbd>,</kbd> + <kbd>Space</kbd>            | Normal  | Delete trailing spaces                  |
| <kbd>[</kbd> + <kbd>a </kbd>               | Normal  | Ale next                                |
| <kbd>]</kbd> + <kbd>a </kbd>               | Normal  | Ale pre                                 |
| <kbd>[</kbd> + <kbd>c </kbd>               | Normal  | coc next                                |
| <kbd>]</kbd> + <kbd>c </kbd>               | Normal  | coc prev                                |
| <kbd>]</kbd> + <kbd>] </kbd>               | Normal  | jump to prev go func                    |
| <kbd>[</kbd> + <kbd>[ </kbd>               | Normal  | jump to next go func                    |
| <kbd>g</kbd> + <kbd>c</kbd>                | Normal  | caw.vim comment                         |
| <kbd>g</kbd> + <kbd>c</kbd> + <kbd>c</kbd> | Normal  | caw.vim uncomment                       |
| <kbd>g</kbd> + <kbd>a</kbd>                | Normal  | EasyAlign                               |
| <kbd>g</kbd> + <kbd>a</kbd>                | Visual  | EasyAlign                               |
| <kbd>s</kbd> + <kbd>a</kbd>                | Normal  | vim-sandwich prefix +{iw/is/ip}+{i/f/t} |
| <kbd>s</kbd> + <kbd>d</kbd>                | Normal  | vim-sandwich prefix +{iw/is/ip}+{i/f/t} |
| <kbd>s</kbd> + <kbd>r</kbd>                | Normal  | vim-sandwich prefix +{iw/is/ip}+{i/f/t} |
| <kbd>s</kbd> + <kbd>d</kbd> + <kbd>b</kbd> | Normal  | vim-sandwich prefix +{iw/is/ip}+{i/f/t} |
| <kbd>s</kbd> + <kbd>r</kbd> + <kbd>b</kbd> | Normal  | vim-sandwich prefix +{iw/is/ip}+{i/f/t} |
| <kbd>v</kbd>                               | Visual  | vim-expand-region                       |
| <kbd>V</kbd>                               | Visual  | vim-expand-region                       |
| <kbd>z</kbd> + <kbd>l</kbd>                | Normal  | Denite Outline for golang               |
| <kbd>z</kbd> + <kbd>T</kbd>                | Normal  | Denite Goroot for golang                |

</p>
</details>

<details><summary><code>Window</code>👈 Click</summary>
<p>

| Keys                                          | Mode   | Description                       |
| --------------------------------------------- | ------ | --------------------------------- |
| <kbd>Ctrl</kbd> + <kbd>h</kbd>                | Normal | move to left window               |
| <kbd>Ctrl</kbd> + <kbd>l</kbd>                | Normal | move to right window              |
| <kbd>Ctrl</kbd> + <kbd>j</kbd>                | Normal | move to down window               |
| <kbd>Ctrl</kbd> + <kbd>k</kbd>                | Normal | move to up window                 |
| <kbd>Ctrl</kbd> + <kbd>w</kbd> + <kbd>[</kbd> | Normal | the width of window reduce 3      |
| <kbd>Ctrl</kbd> + <kbd>w</kbd> + <kbd>]</kbd> | Normal | the width of window increase 3    |
| <kbd>Ctrl</kbd> + <kbd>f</kbd>                | Normal | Window scrolling down             |
| <kbd>Ctrl</kbd> + <kbd>b</kbd>                | Normal | Window scrolling up               |
| <kbd>Ctrl</kbd> + <kbd>d</kbd>                | Normal | Window scrolls down half a screen |
| <kbd>Ctrl</kbd> + <kbd>u</kbd>                | Normal | Window scrolls up half a screen   |

</p>
</details>

<details><summary><code>Tab</code>👈 Click</summary>
<p>

| Keys                                            | Mode   | Description |
| ----------------------------------------------- | ------ | ----------- |
| <kbd>Leader</kbd> + <kbd>t</kbd> + <kbd>n</kbd> | Normal | create tab  |
| <kbd>Leader</kbd> + <kbd>t</kbd> + <kbd>e</kbd> | Normal | edit tab    |
| <kbd>Leader</kbd> + <kbd>t</kbd> + <kbd>m</kbd> | Normal | move tab    |

</p>
</details>

<details><summary><code>LeaderKey</code>👈 Click</summary>
<p>

| Keys                                                           | Mode   | Description                           |
| -------------------------------------------------------------- | ------ | ------------------------------------- |
| <kbd>Leader</kbd> + <kbd>number</kbd>                          | Normal | number[0-9] choose buffer             |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>a</kbd>                | Normal | CocDiagnostics                        |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>c</kbd>                | Normal | CocCommands                           |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>e</kbd>                | Normal | CocExtensions                         |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>j</kbd>                | Normal | Cocnext                               |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>k</kbd>                | Normal | CocPrev                               |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>o</kbd>                | Normal | CocOutline                            |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>r</kbd>                | Normal | CocResume                             |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>s</kbd>                | Normal | CocIsymbols                           |
| <kbd>Leader</kbd> + <kbd>G</kbd>                               | Normal | open Goyo                             |
| <kbd>Leader</kbd> + <kbd>m</kbd>                               | Normal | open mundo                            |
| <kbd>Leader</kbd> + <kbd>w</kbd>                               | Normal | save file                             |
| <kbd>Leader</kbd> + <kbd>-</kbd>                               | Normal | ChooseWin                             |
| <kbd>Leader</kbd> + <kbd>s</kbd>                               | Normal | open Startify                         |
| <kbd>Leader</kbd> + <kbd>d</kbd>                               | Normal | open Dash                             |
| <kbd>Leader</kbd> + <kbd>p</kbd>                               | Normal | Edit the file which in plugins folder |
| <kbd>Leader</kbd> + <kbd>c</kbd> + <kbd>f</kbd>                | Normal | coc Format                            |
| <kbd>Leader</kbd> + <kbd>f</kbd> + <kbd>c</kbd>                | Normal | fzf chage vim colorscheme             |
| <kbd>Leader</kbd> + <kbd>f</kbd> + <kbd>f</kbd>                | Normal | fzf find files                        |
| <kbd>Leader</kbd> + <kbd>f</kbd> + <kbd>r</kbd>                | Normal | fzf rg search                         |
| <kbd>Leader</kbd> + <kbd>f</kbd> + <kbd>v</kbd>                | Normal | fzf Vista Finder                      |
| <kbd>Leader</kbd> + <kbd>f</kbd> + <kbd>b</kbd>                | Normal | fzf find buffer                       |
| <kbd>Leader</kbd> + <kbd>f</kbd> + <kbd>w</kbd>                | Normal | fzf rg search the cursor word         |
| <kbd>Leader</kbd> + <kbd>f</kbd> + <kbd>g</kbd> + <kbd>c</kbd> | Normal | fzf gitcommits                        |
| <kbd>Leader</kbd> + <kbd>f</kbd> + <kbd>b</kbd> + <kbd>c</kbd> | Normal | fzf gitbcommits                       |
| <kbd>Leader</kbd> + <kbd>Leader</kbd> + <kbd>w</kbd>           | Normal | Easymotion jump to donw               |
| <kbd>Leader</kbd> + <kbd>Leader</kbd> + <kbd>b</kbd>           | Normal | Easymotion jump to up                 |
| <kbd>Leader</kbd> + <kbd>Leader</kbd> + <kbd>f</kbd>           | Normal | Easymotion search for jump            |
| <kbd>Leader</kbd> + <kbd>g</kbd> + <kbd>d</kbd>                | Normal | Gdiff                                 |
| <kbd>Leader</kbd> + <kbd>g</kbd> + <kbd>c</kbd>                | Normal | Gcommit                               |
| <kbd>Leader</kbd> + <kbd>g</kbd> + <kbd>b</kbd>                | Normal | Gblame                                |
| <kbd>Leader</kbd> + <kbd>g</kbd> + <kbd>B</kbd>                | Normal | GBrowse                               |
| <kbd>Leader</kbd> + <kbd>g</kbd> + <kbd>S</kbd>                | Normal | GStatus                               |
| <kbd>Leader</kbd> + <kbd>g</kbd> + <kbd>p</kbd>                | Normal | Git push                              |
| <kbd>Leader</kbd> + <kbd>g</kbd> + <kbd>l</kbd>                | Normal | Denite show all git log               |
| <kbd>Leader</kbd> + <kbd>g</kbd> + <kbd>h</kbd>                | Normal | Denite show git branch                |

</p>
</details>

<details><summary><code>LocalLeaderKey</code>👈 Click</summary>
<p>

| Keys                                              | Mode   | Description        |
| ------------------------------------------------- | ------ | ------------------ |
| <kbd>LocalLeader</kbd> + <kbd>t</kbd>             | Normal | Open Tagbar        |
| <kbd>LocalLeader</kbd> + <kbd>r</kbd>             | Normal | QuickRun           |
| <kbd>LocalLeader</kbd> + <kbd>v</kbd>             | Normal | Open Vista         |
| <kbd>LocalLeader</kbd> + <kbd>g</kbd><kbd>i</kbd> | Normal | vim-go GoImpl      |
| <kbd>LocalLeader</kbd> + <kbd>g</kbd><kbd>d</kbd> | Normal | vim-go GoDescribe  |
| <kbd>LocalLeader</kbd> + <kbd>g</kbd><kbd>c</kbd> | Normal | vim-go GoCallees   |
| <kbd>LocalLeader</kbd> + <kbd>g</kbd><kbd>C</kbd> | Normal | vim-go GoCallers   |
| <kbd>LocalLeader</kbd> + <kbd>g</kbd><kbd>s</kbd> | Normal | vim-go GoCallstack |

</p>
</details>

<details><summary><code>Denite</code>👈 Click</summary>
<p>

| Keys                                  | Mode                 | Description        |
| ------------------------------------- | -------------------- | ------------------ |
| <kbd>LocalLeader</kbd> + <kbd>m</kbd> | Normal               | Denite Menu        |
| `<CR>`                                | Denite               | Doaction           |
| <kbd>i</kbd>                          | Denite               | Open filter buffer |
| <kbd>d</kbd>                          | Denite               | Delete             |
| <kbd>p</kbd>                          | Denite               | Preview            |
| <kbd>s</kbd> + <kbd>t</kbd>           | Denite               | tabopen            |
| <kbd>s</kbd> + <kbd>v</kbd>           | Denite               | Vsplit             |
| <kbd>s</kbd> + <kbd>i</kbd>           | Denite               | Split              |
| <kbd>'</kbd>                          | Denite               | QuickMove          |
| <kbd>q</kbd>                          | Denite               | Quit               |
| <kbd>r</kbd>                          | Denite               | RedRaw             |
| <kbd>y</kbd> + <kbd>y</kbd>           | Denite               | Yank               |
| <kbd>Esc</kbd>                        | Denite               | Quit               |
| <kbd>Ctrl</kbd> + <kbd>u</kbd>        | Denite               | Restore Source     |
| <kbd>Ctrl</kbd> + <kbd>f</kbd>        | Denite               | call Defx          |
| <kbd>Ctrl</kbd> + <kbd>x</kbd>        | Denite               | Choose Action      |
| <kbd>Space</kbd>                      | Denite               | Toggle Select      |
| <kbd>Esc</kbd>                        | Denite Filter        | Quit               |
| <kbd>q</kbd>                          | Denite Filter        | Quit               |
| <kbd>Ctrl</kbd> + <kbd>c</kbd>        | Denite Filter        | Quit filter        |
| <kbd>k</kbd> + <kbd>k</kbd>           | Denite Filter insert | move window        |
| <kbd>k</kbd> + <kbd>k</kbd>           | Denite Filter normal | move window        |
| <kbd>j</kbd> + <kbd>j</kbd>           | Denite Filter insert | move window        |
| <kbd>j</kbd> + <kbd>j</kbd>           | Denite Filter normal | move window        |

</p>
</details>

<details><summary><code>Fzf</code>👈 Click</summary>
<p>

| Keys           | Mode   | Description |
| -------------- | ------ | ----------- |
| <kbd>C-X</kbd> | Normal | tab split   |
| <kbd>C-v</kbd> | Normal | split       |
| <kbd>C-t</kbd> | Normal | vsplit      |
| <kbd>C-d</kbd> | Normal | pagedown    |
| <kbd>C-u</kbd> | Normal | pageup      |

</p>
</details>

<details><summary><code>Defx</code>👈 Click</summary>
<p>

| Keys                             | Mode   | Description                                                                                |
| -------------------------------- | ------ | ------------------------------------------------------------------------------------------ |
| <kbd>Leader</kbd> + <kbd>e</kbd> | Normal | open defx                                                                                  |
| <kbd>N</kbd>                     | Defx   | touch new file                                                                             |
| <kbd>K</kbd>                     | Defx   | touch new folder                                                                           |
| `<CR>`                           | Defx   | open file or folder                                                                        |
| `l`                              | Defx   | open file or folder                                                                        |
| <kbd>d</kbd> + <kbd>d</kbd>      | Defx   | delete ([Send2Trash](https://github.com/neoclide/coc.nvim/wiki/Language-servers) required) |
| <kbd>r</kbd>                     | Defx   | rename                                                                                     |
| <kbd>.</kbd>                     | Defx   | show ignore files                                                                          |
| <kbd>h</kbd>                     | Defx   | Return to the parent directory                                                             |
| <kbd>q</kbd>                     | Defx   | exit defx                                                                                  |
| <kbd>s</kbd>                     | Defx   | Open in rightwindow vs                                                                     |
| <kbd>i</kbd>                     | Defx   | Open file sp                                                                               |
| <kbd>y</kbd> + <kbd>y</kbd>      | Defx   | copy the path of file                                                                      |
| <kbd>\</kbd>                     | Defx   | show the path of file                                                                      |
| <kbd>c</kbd>                     | Defx   | copy                                                                                       |
| <kbd>m</kbd>                     | Defx   | move                                                                                       |
| <kbd>p</kbd>                     | Defx   | paste                                                                                      |
| <kbd>Space</kbd>                 | Defx   | multi                                                                                      |
| <kbd>g</kbd> + <kbd>f</kbd>      | Defx   | open in denite                                                                             |
| <kbd>g</kbd> + <kbd>r</kbd>      | Defx   | search in denite                                                                           |
| <kbd>w</kbd>                     | Defx   | increase the width                                                                         |

</p>
</details>

<details><summary><code>CoC</code>👈 Click</summary>
<p>

| Keys                               | Mode          | Description               |
| ---------------------------------- | ------------- | ------------------------- |
| <kbd>Tab</kbd>                     | Select        | Jump                      |
| <kbd>Tab</kbd>                     | Insert        | completion donw           |
| <kbd>Shit</kbd> + <kbd>Tab</kbd>   | Insert        | completion up             |
| <kbd>Ctrl</kbd> + <kbd>n</kbd>     | Insert        | completion down           |
| <kbd>Ctrl</kbd> + <kbd>p</kbd>     | Insert        | completion up             |
| <kbd>Ctrl</kbd> + <kbd>Space</kbd> | Normal        | Forced trigger completion |
| `<CR>`                             | Insert/Select | Confirm                   |
| <kbd>K</kbd>                       | Normal        | Show the function doc     |
| <kbd>g</kbd> + <kbd>d</kbd>        | Normal        | jump to defined           |
| <kbd>g</kbd> + <kbd>y</kbd>        | Normal        | coc-type-definition       |
| <kbd>g</kbd> + <kbd>i</kbd>        | Normal        | coc-implementation        |
| <kbd>g</kbd> + <kbd>r</kbd>        | Normal        | coc-references            |
| <kbd>[</kbd> + <kbd>g</kbd>        | Normal        | coc-git-prechunk          |
| <kbd>]</kbd> + <kbd>g</kbd>        | Normal        | coc-git-nextchunk         |

</p>
</details>

## ToDo

- [ ] Read the flow source to simplify and speed up
- [ ] Skilled more in Vim Script

## Credits

Big thanks to the big guys!

- [rafi](https://github.com/rafi)
- [taigacute](https://github.com/taigacute)

<style>
html, body {
  width: 100%;
  height: 100%;
  font-size: 18px;
}

.scifiUI {
  list-style: none;
  position: relative;
  width: 600px;
  margin: 50px auto;
  padding: 0;
  font-size: 1em;
  color: #00bebe;
}

li {
  display: inline-block;
}
li input[type="radio"] {
  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
  opacity: 0;
  position: absolute;
  outline: none;
}
li input[type="radio"]:checked ~ label {
  background: #00bebe;
  color: #212121;
  height: 50px;
  font-size: 1.2em;
  cursor: default;
  box-shadow: 0 0 10px #00dcdc;
}
li input[type="radio"]:checked ~ .section {
  opacity: 1;
  width: 500px;
  padding: 50px;
  border: 1px solid #00bebe;
  color: #00dcdc;
  letter-spacing: .1em;
  text-indent: 1em;
  z-index: 1;
}
li label {
  display: block;
  width: 120px;
  height: 40px;
  border: 1px solid rgba(0, 190, 190, 0.7);
  border-bottom: 0;
  border-radius: 5px 5px 0 0;
  color: rgba(0, 190, 190, 0.7);
  line-height: 50px;
  text-align: center;
  cursor: pointer;
  transition: all 200ms ease-in-out;
}
li label:hover {
  height: 50px;
  border-color: #00bebe;
  color: #00bebe;
}
li .section {
  filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=0);
  opacity: 0;
  position: absolute;
  top: 51px;
  left: 0;
  width: 100%;
  padding: 50px;
  border: 1px solid #00bebe;
  background: rgba(0, 190, 190, 0.1);
  color: white;
  letter-spacing: -1em;
  text-indent: 1em;
}

</style>

<ul class="scifiUI">
  <li>
    <input type="radio" name="tab" id="tab1" checked>
    <label for="tab1">Tab1</label>
    <div class="section">
     The user interface, in the industrial design field of human–machine interaction, is the space where interactions between humans and machines occur. The goal of this interaction is effective operation and control of the machine on the user's end, and feedback from the machine, which aids the operator in making operational decisions. Examples of this broad concept of user interfaces include the interactive aspects of computer operating systems, hand tools, heavy machinery operator controls, and process controls. The design considerations applicable when creating user interfaces are related to or involve such disciplines as ergonomics and psychology.
    </div>
  </li>
  <li>
    <input type="radio" name="tab" id="tab2" />
    <label for="tab2">Tab2</label>
    <div class="section">
    User Experience (UX) involves a person's behaviors, attitudes, and emotions about using a particular product, system or service. User Experience includes the practical, experiential, affective, meaningful and valuable aspects of human-computer interaction and product ownership. Additionally, it includes a person’s perceptions of system aspects such as utility, ease of use and efficiency. User Experience may be considered subjective in nature to the degree that it is about individual perception and thought with respect to the system. User Experience is dynamic as it is constantly modified over time due to changing usage circumstances and changes to individual systems as well as the wider usage context in which they can be found.
    </div>
  </li>
  <li>
    <input type="radio" name="tab" id="tab3" />
    <label for="tab3">Tab3</label>
    <div class="section">
      Interactive Design is defined as a user-oriented field of study that focuses on meaningful communication of media through cyclical and collaborative processes between people and technology. Successful interactive designs have simple, clearly defined goals, a strong purpose and intuitive screen interface.
    </div>
  </li>
  <li>
    <input type="radio" name="tab" id="tab4" />
    <label for="tab4">Tab4</label>
    <div class="section">
      In computer science, functional programming is a programming paradigm, a style of building the structure and elements of computer programs, that treats computation as the evaluation of mathematical functions and avoids changing state and mutable data. It is a declarative programming paradigm, which means programming is done with expressions. In functional code, the output value of a function depends only on the arguments that are input to the function, so calling a function f twice with the same value for an argument x will produce the same result f(x) both times. Eliminating side effects, i.e. changes in state that do not depend on the function inputs, can make it much easier to understand and predict the behavior of a program, which is one of the key motivations for the development of functional programming.
    </div>
  </li>
</ul>
