<h1 align="center">ugit</h1>
<p align="center"><img align="center" alt="ugit logo" height="100px" src="https://user-images.githubusercontent.com/34342551/115037937-a608d800-9eec-11eb-88a9-252da7d6f507.png"></p>
<h3 align="center"><code>Undo your last oopsie 🙈️ in git</code></h4>
<p align="center">
  <a href="https://github.com/Bhupesh-V/ugit/actions/workflows/build.yml">
    <img alt="build ugit" src="https://github.com/Bhupesh-V/ugit/actions/workflows/build.yml/badge.svg">
  </a>
  <a href="https://github.com/Bhupesh-V/ugit/blob/master/LICENSE">
    <img alt="License: MIT" src="https://img.shields.io/github/license/Bhupesh-V/ugit" target="_blank" />
  </a>
  <img alt="total downloads (github + brew)" src="https://img.shields.io/endpoint?url=https://gist.githubusercontent.com/Bhupesh-V/6b7b8e8576bc1ca237bffd9a344672ab/raw/ugit-downloads.json">
  <a href="">
    <img alt="platform support linux and macos" src="https://img.shields.io/badge/platform-GNU/Linux %7C MacOS-blue">
  </a>
  <a href="https://til.bhupesh.me/git/how-to-undo-anything-in-git">
    <img alt="git undo text guide" src="https://img.shields.io/badge/guide-git%20undo-orange">
  </a>
  <a href="https://twitter.com/bhupeshimself">
    <img alt="Twitter: bhupeshimself" src="https://img.shields.io/twitter/follow/bhupeshimself.svg?style=social" target="_blank" />
  </a><br><br>
  <img align="center" title="ugit demo: restore file to a previous commit" alt="ugit demo: restore file gif" src="https://user-images.githubusercontent.com/34342551/135706491-0e987e0c-3a6d-4da6-bd16-d69bb36c42a9.gif"><br>
</p>

<h2><details><summary>More Video Demos ✨️</summary>

<h4>Undo <code>git add</code></h4>

https://user-images.githubusercontent.com/34342551/121651365-29dbdc80-cab8-11eb-8c43-6d0c4b1509ad.mp4

<h4>Undo <code>git branch -D</code></h4>

https://user-images.githubusercontent.com/34342551/121650985-c487eb80-cab7-11eb-9b6a-9257fa704d1c.mp4

<h4>Undo <code>git merge</code></h4>

https://user-images.githubusercontent.com/34342551/121651071-d9fd1580-cab7-11eb-929d-d9359a64f0eb.mp4

</details></h2>

## Why use `ugit`?

- You accidentally ran a `git` command you wish to 'undo'.
- You want to save time by not searching for _how to undo ..._
- Your focus is on the problems at hand and not on Git (avoid context switching)


### [Motivations behind writing ugit 🙇‍♂️️](https://bhupesh-v.github.io/undo-your-last-git-mistake-with-ugit)

## What's in the box?

`ugit`/`git-undo` supports undoing the following operations, some are a WIP. If you know of any other operations that can be undone and are not in the list, make sure to raise an issue or make a quick PR 💛️

- [x] Undo `git commit`
- [x] Undo `git add`
- [x] Undo `git push`
- [x] Undo `git branch -D` (branch delete)
- [x] Undo `git pull`
- [x] Undo `git reset`
- [x] Undo `git tag -d` (tag delete)
- [x] Undo `git stash apply`
- [x] Undo `git stash pop/drop/clear`
- [x] Undo accidental file delete (Restore a deleted file after a commit)
- [x] Undo (Restore) a file to a previous version
- [x] Undo `git merge`
- [x] Undo `git cherry-pick`
- [x] Undo `git tag`
- [ ] Undo `git rebase`
- [ ] Undo `git worktree remove` (recover deleted work-tree)

Contribute to the project by helping me with the above-mentioned tasks.

If you have any other ideas/suggestions, do send them across. [**Hop in to ugit discussions 💬️**](https://github.com/Bhupesh-V/ugit/discussions/7)

## News

|      When      |                                                                                  What                                                                                 |
|:--------------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|  29 Oct, 2022 |  ugit crossed 1k stars                                               |
|  02 June, 2022 | [console.dev](https://console.dev/tools/) featured [ugit](https://twitter.com/bhupeshimself/status/1532714651842396161)                                               |
|  18 May, 2022  | I gave a talk about the git tooling ecosystem & `git undo` in [Undo git, say whaat! - **GitHub India Constellation**, May 2022](https://youtu.be/jpR9BMFmh4Y?t=15240) |
|  12 May, 2021  | The [guide was **tweeted by GitHub**](https://twitter.com/github/status/1392207961355862018?s=20) (I was logging my research process there while building ugit)       |
| 30 April, 2021 | Featured on [**Changelog News**](https://changelog.com/news/ugit-helps-you-undo-your-last-git-command-with-grace-8X6L)                                                |

## Community

- Alexander Alemayhu made a YouTube tutorial on [Undoing Your Last Git Commit with Ugit](https://www.youtube.com/watch?v=nUnCgKb4tSc)


## Installation

[Try `ugit` via Docker](https://hub.docker.com/r/bhupeshimself/ugit):

```bash
docker pull bhupeshimself/ugit
docker run --rm -it -v $(pwd):/app bhupeshimself/ugit
```

### Prerequisites

**ugit** dependencies:

- **Bash** >= `4.x.x`
- **Git** >= `2.23.0`
- [**fzf**](https://github.com/junegunn/fzf) >= `0.21.0` - [Installation guide](https://github.com/junegunn/fzf#installation)
- GNU utils like `awk`, `grep`, `tput` etc

<br>

[![Packaging status](https://repology.org/badge/vertical-allrepos/ugit.svg)](https://repology.org/project/ugit/versions)


### Linux

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Bhupesh-V/ugit/master/install)"
```

Arch Linux users can install [**ugit via AUR**](https://aur.archlinux.org/packages/ugit).

### Mac

```bash
brew install ugit
```

### Windows

To use ugit on Windows you need to install:

1. Git Bash<br>
   Git bash comes with git (if you have installed it on your machine then no need). To install git (preferably with scoop):
    ```
    scoop install git
    ```
2. FZF 
   ```
   scoop install fzf
   ```
   Alternatively, with Chocolatey:
   
   ```
   choco install fzf
   ```
3. To use bash in terminal change your directory to `**git\2.35.3.windows.1\bin\bash**` accordingly.
4. Then either clone the repo,
   ```bash
   git clone https://github.com/Bhupesh-V/ugit.git
   ```
   or get it using curl:
   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/Bhupesh-V/ugit/master/install)"
   ```

### Fig

[Fig](https://fig.io) adds apps, shortcuts, and autocomplete to your existing terminal.

Install `ugit` in just one click.

<a href="https://fig.io/plugins/other/ugit_Bhupesh-V" target="_blank"><img src="https://fig.io/badges/install-with-fig.svg" /></a>


### ZSH Frameworks

#### Zgenom

If you're using [Zgenom](https://github.com/jandamm/zgenom):

1. Add `zgenom load Bhupesh-V/ugit` to your `.zshrc` along with your other `zgenom load` commands.
2. `zgenom reset && zgenom save`

#### Antigen

If you're using [Antigen](https://github.com/zsh-users/antigen):

1. Add `antigen bundle Bhupesh-V/ugit` to your `.zshrc` where you've listed your other plugins.
2. Close and reopen your Terminal/iTerm window to **refresh context** and use the plugin. Alternatively, you can run `antigen bundle Bhupesh-V/ugit` in a running shell to have `antigen` load the new plugin.

#### Oh-My-ZSH

If you're using [oh-my-zsh](github.com/robbyrussell/oh-my-zsh):

1. Clone the repository into a new `ugit` directory in oh-my-zsh's plugin folder:

    `git clone https://github.com/Bhupesh-V/ugit.git $ZSH_CUSTOM/plugins/ugit`

2. Edit your `~/.zshrc` and add `ugit` – same as clone directory – to the list of plugins to enable:

    `plugins=( ... ugit )`

3. Then, restart your terminal application to **refresh context** and use the plugin. Alternatively, you can source your current shell configuration:

    `source ~/.zshrc`



## Please read ⚠️

Git comes with a garbage collector ([in case you didn't know](https://git-scm.com/docs/git-gc)) therefore undoing some commands will become impossible if the entries are deleted from the reflog.
One way to prevent this is to increase default time limits before the reflog entries expire.

Add these configurations in your global `.gitconfig` file:

```gitconfig
[gc]
    # default 90 days
    reflogExpire = 200
```
Used to set how long records in a branch reflog should be preserved.

```gitconfig
[gc]
    # default 30 days
    reflogExpireUnreachable = 90

```
Used to set how long inaccessible reflog records should be preserved.

## Not satisfied? 😒️

You can read my in-process guide on [**How to undo anything in Git**](https://bhupesh.gitbook.io/notes/git/how-to-undo-anything-in-git)

## Credit & Thanks
To all the SO threads that I will probably never visit again ;)

## ☺️ Show your support

Support me by giving a ⭐️ if this project helped you! or just [![Twitter URL](https://img.shields.io/twitter/url?style=social&url=https%3A%2F%2Fgithub.com%2FBhupesh-V%2Fugit%2F)](https://twitter.com/intent/tweet?url=https://github.com/Bhupesh-V/ugit&text=ugit%20via%20@bhupeshimself)

[![Support via PayPal](https://cdn.rawgit.com/twolfson/paypal-github-button/1.0.0/dist/button.svg)](https://www.paypal.me/BhupeshVarshney/)

## 📝 License

Copyright © 2021 [Bhupesh Varshney](https://github.com/Bhupesh-V).<br />
This project is [MIT](https://github.com/Bhupesh-V/ugit/blob/master/LICENSE) licensed.

## 👋 Contributing

Please read the [CONTRIBUTING](CONTRIBUTING.md) file for the process of submitting pull requests to us.

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/sharan-aithal"><img src="https://avatars.githubusercontent.com/u/32029982?v=4?s=100" width="100px;" alt="Sharan Aithal"/><br /><sub><b>Sharan Aithal</b></sub></a><br /><a href="https://github.com/Bhupesh-V/ugit/commits?author=sharan-aithal" title="Code">💻</a> <a href="https://github.com/Bhupesh-V/ugit/commits?author=sharan-aithal" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://tabulate.tech"><img src="https://avatars.githubusercontent.com/u/58576759?v=4?s=100" width="100px;" alt="Tabulate"/><br /><sub><b>Tabulate</b></sub></a><br /><a href="https://github.com/Bhupesh-V/ugit/commits?author=TabulateJarl8" title="Code">💻</a> <a href="#platform-TabulateJarl8" title="Packaging/porting to new platform">📦</a></td>
      <td align="center" valign="top" width="14.28%"><a href="http://unixorn.github.io"><img src="https://avatars.githubusercontent.com/u/23920?v=4?s=100" width="100px;" alt="Joe Block"/><br /><sub><b>Joe Block</b></sub></a><br /><a href="https://github.com/Bhupesh-V/ugit/commits?author=unixorn" title="Code">💻</a> <a href="https://github.com/Bhupesh-V/ugit/commits?author=unixorn" title="Documentation">📖</a> <a href="#plugin-unixorn" title="Plugin/utility libraries">🔌</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://thecesrom.dev/"><img src="https://avatars.githubusercontent.com/u/19418023?v=4?s=100" width="100px;" alt="César Román"/><br /><sub><b>César Román</b></sub></a><br /><a href="https://github.com/Bhupesh-V/ugit/commits?author=thecesrom" title="Code">💻</a> <a href="https://github.com/Bhupesh-V/ugit/issues?q=author%3Athecesrom" title="Bug reports">🐛</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/ibayramli2001"><img src="https://avatars.githubusercontent.com/u/43158991?v=4?s=100" width="100px;" alt="Ilkin Bayramli"/><br /><sub><b>Ilkin Bayramli</b></sub></a><br /><a href="#platform-ibayramli2001" title="Packaging/porting to new platform">📦</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/kopalchakravarty"><img src="https://avatars.githubusercontent.com/u/31576619?v=4?s=100" width="100px;" alt="Kopal Chakravarty"/><br /><sub><b>Kopal Chakravarty</b></sub></a><br /><a href="https://github.com/Bhupesh-V/ugit/commits?author=kopalchakravarty" title="Code">💻</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://www.zorawarpurohit.com"><img src="https://avatars.githubusercontent.com/u/42845567?v=4?s=100" width="100px;" alt="Zorawar Purohit"/><br /><sub><b>Zorawar Purohit</b></sub></a><br /><a href="https://github.com/Bhupesh-V/ugit/commits?author=zora89" title="Documentation">📖</a></td>
    </tr>
    <tr>
      <td align="center" valign="top" width="14.28%"><a href="https://craftic.webflow.io"><img src="https://avatars.githubusercontent.com/u/38408670?v=4?s=100" width="100px;" alt="Nalin Singh"/><br /><sub><b>Nalin Singh</b></sub></a><br /><a href="https://github.com/Bhupesh-V/ugit/commits?author=nalin-singh" title="Code">💻</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/vinayaknayar"><img src="https://avatars.githubusercontent.com/u/98237998?v=4?s=100" width="100px;" alt="vinayaknayar"/><br /><sub><b>vinayaknayar</b></sub></a><br /><a href="https://github.com/Bhupesh-V/ugit/commits?author=vinayaknayar" title="Documentation">📖</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/RohitSingh107"><img src="https://avatars.githubusercontent.com/u/64142943?v=4?s=100" width="100px;" alt="RohitSingh107"/><br /><sub><b>RohitSingh107</b></sub></a><br /><a href="#platform-RohitSingh107" title="Packaging/porting to new platform">📦</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/Theotime812"><img src="https://avatars.githubusercontent.com/u/45947878?v=4?s=100" width="100px;" alt="Théotime Maillarbaux"/><br /><sub><b>Théotime Maillarbaux</b></sub></a><br /><a href="https://github.com/Bhupesh-V/ugit/commits?author=Theotime812" title="Code">💻</a> <a href="https://github.com/Bhupesh-V/ugit/issues?q=author%3ATheotime812" title="Bug reports">🐛</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/dr41d45"><img src="https://avatars.githubusercontent.com/u/47773787?v=4?s=100" width="100px;" alt="dr41d45"/><br /><sub><b>dr41d45</b></sub></a><br /><a href="https://github.com/Bhupesh-V/ugit/commits?author=dr41d45" title="Code">💻</a></td>
      <td align="center" valign="top" width="14.28%"><a href="https://github.com/T-Joseph-Kim"><img src="https://avatars.githubusercontent.com/u/116681578?v=4?s=100" width="100px;" alt="Taebok Joseph Kim"/><br /><sub><b>Taebok Joseph Kim</b></sub></a><br /><a href="https://github.com/Bhupesh-V/ugit/commits?author=T-Joseph-Kim" title="Code">💻</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
