<h1 align="center">ugit</h1>
<p align="center"><img align="center" alt="ugit logo" height="100px" src="https://user-images.githubusercontent.com/34342551/115037937-a608d800-9eec-11eb-88a9-252da7d6f507.png"></p>
<h3 align="center"><code>Undo your last oopsie 🙈️ in git without much effort</code></h3>
<p align="center">
  <a href="https://github.com/Bhupesh-V/ugit/blob/master/LICENSE">
    <img alt="License: MIT" src="https://img.shields.io/github/license/Bhupesh-V/ugit" target="_blank" />
  </a>
  <a href="https://github.com/Bhupesh-V/ugit/issues">
    <img alt="Issues" src="https://img.shields.io/github/issues/Bhupesh-V/ugit?color=blueviolet" />
  </a>
  <a href="https://twitter.com/bhupeshimself">
    <img alt="Twitter: bhupeshimself" src="https://img.shields.io/twitter/follow/bhupeshimself.svg?style=social" target="_blank" />
  </a>
  <img align="center" alt="ugit demo gid" src="https://user-images.githubusercontent.com/34342551/114261429-1ea4fb80-99f8-11eb-92b4-66315a65b854.gif"><br>
</p>

## Why `ugit`

- You did an accidental `git` command you didn't want to.
- You don't want to waste your time searching on _how to undo ..._


## What's in the box
`ugit` supports undoing following operations, some are a WIP. If you know of any operation that can be undone and is not in the list, make sure to send a quick PR 💛️

- [x] Undo `git commit`
- [x] Undo `git add`
- [x] Undo `git push`
- [x] Undo `git branch -D` (branch delete)
- [x] Undo `git pull`
- [x] Undo `git reset`
- [ ] Undo `git merge`
- [x] Undo `git tag -d` (tag delete)
- [x] Undo `git stash apply`
- [x] Undo `git stash pop/drop/clear`
- [ ] Undo `git tag` (rename a tag)
- [ ] Undo `git rebase`
- [ ] Undo `git cherry-pick`
- [x] Undo accidental file delete (Restore a deleted file after a commit)
- [ ] Undo `git worktree remove` (recover deleted work-tree)

## Installation

**ugit** dependencies:

1. `Bash>=3`
2. GNU utils like `awk`, `grep`, `tput` etc
3. [fzf](https://github.com/junegunn/fzf)

Install the script using `wget`

```bash
# Linux
wget -q https://raw.githubusercontent.com/Bhupesh-V/ugit/master/ugit && chmod +x ugit && mv ugit $HOME/.local/bin/
# Mac
wget -q https://raw.githubusercontent.com/Bhupesh-V/ugit/master/ugit && chmod +x ugit && mv ugit /usr/local/bin
```

or `curl`

```bash
# Linux
curl -fsSL https://raw.githubusercontent.com/Bhupesh-V/ugit/master/ugit -o ugit && chmod +x ugit && mv ugit $HOME/.local/bin/
# Mac
curl -fsSL https://raw.githubusercontent.com/Bhupesh-V/ugit/master/ugit -o ugit && chmod +x ugit && mv ugit /usr/local/bin
```

## Please read ⚠️

Git comes with a garbage collector ([in case you didn't know](https://git-scm.com/docs/git-gc)) therefore undoing some commands will become impossible if the entries are deleted from the reflog.
One way to prevent this is to increase default time limits before the reflog entries expire:
Add these configuration in your global `.gitconfig` file:

```gitconfig
[gc]
    # default 90 days
    reflogExpire = 200
```
Used to set how long records in a branches reflog should be preserved.

```gitconfig
[gc]
    # default 30 days
    reflogExpireUnreachable = 90

```
Used to set how long inaccessible reflog records should be preserved.

## Not satisfied? 😒️

You can read my in-process guide on [**How to undo anything in Git**](https://bhupesh.gitbook.io/notes/git/how-to-undo-anything-in-git)

## Author

:bust_in_silhouette: **Bhupesh Varshney**

- Web : [bhupesh-v.github.io](https://bhupesh-v.github.io)
- Twitter : [@bhupeshimself](https://twitter.com/bhupeshimself)
- DEV : [bhupesh](https://dev.to/bhupesh)

## ☺️ Show your support

Support me by giving a ⭐️ if this project helped you! or just [![Twitter URL](https://img.shields.io/twitter/url?style=social&url=https%3A%2F%2Fgithub.com%2FBhupesh-V%2Fugit%2F)](https://twitter.com/intent/tweet?url=https://github.com/Bhupesh-V/ugit&text=ugit%20via%20@bhupeshimself)

[![Support via PayPal](https://cdn.rawgit.com/twolfson/paypal-github-button/1.0.0/dist/button.svg)](https://www.paypal.me/BhupeshVarshney/)

## 📝 License

Copyright © 2021 [Bhupesh Varshney](https://github.com/Bhupesh-V).<br />
This project is [MIT](https://github.com/Bhupesh-V/ugit/blob/master/LICENSE) licensed.

## 👋 Contributing

Please read the [CONTRIBUTING](CONTRIBUTING.md) file for the process of submitting pull requests to us.
