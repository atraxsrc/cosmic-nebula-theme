# Cosmic Nebula for Cursor

Colour theme for [Cursor](https://cursor.com) from the COSMIC
[Nebula](https://github.com/atraxsrc/cosmic-nebula-theme) rice: **Cosmic Nebula**, dark
only. It is a plain VS Code theme extension, so VS Code and VSCodium take it
too.

## Install

```bash
./vscode/install.sh                # Cursor
./vscode/install.sh code codium    # VS Code / VSCodium instead
```

It packs this folder into `vscode/cosmic-nebula-theme-<version>.vsix` and installs
that with the editor's CLI (`cursor --install-extension`), so the theme is
listed under Extensions and running the script again updates it. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> and pick **Cosmic Nebula**.

No CLI on the PATH (an AppImage, say): the script still builds the `.vsix`;
install it from Extensions → `...` → **Install from VSIX**.

Nebula has no light half, so there is nothing for COSMIC's Dark / Light toggle to
switch to; leave `window.autoDetectColorScheme` off, or pair it with another
rice's light theme in `workbench.preferredLightColorTheme`.

## What it colours

Code is coloured the way Neovim is in the rice (`nvim/colors/nebula.lua`):

| Role | Nebula |
|------|----|
| Keywords, tags | ![#4ECDC4](https://placehold.co/12x12/4ecdc4/4ecdc4.png) `#4ECDC4` |
| Functions, tag attributes | ![#C9AFF0](https://placehold.co/12x12/C9C2B4/C9C2B4.png) `#C9AFF0` |
| Strings | ![#82EEFF](https://placehold.co/12x12/9FA5A9/9FA5A9.png) `#82EEFF` |
| Numbers, constants | ![#FFB38A](https://placehold.co/12x12/D87C4A/D87C4A.png) `#FFB38A` |
| Types, classes, modules | ![#96AAFF](https://placehold.co/12x12/96aaff/96aaff.png) `#96AAFF` |
| Imports, macros, decorators, escapes, `this` / `self` | ![#B388EB](https://placehold.co/12x12/9D7E6F/9D7E6F.png) `#B388EB` |
| Parameters (italic) | ![#9AA3B5](https://placehold.co/12x12/A5AEB4/A5AEB4.png) `#9AA3B5` |
| Operators, punctuation | ![#848E9F](https://placehold.co/12x12/7F7F7F/7F7F7F.png) `#848E9F` |
| Comments (italic) | ![#5B6478](https://placehold.co/12x12/565D60/565D60.png) `#5B6478` |
| Accent | ![#4ECDC4](https://placehold.co/12x12/4ecdc4/4ecdc4.png) `#4ECDC4` |
| Errors, deleted, conflicts | ![#FF7B92](https://placehold.co/12x12/DE6145/DE6145.png) `#FF7B92` |

The workbench takes the window colour of the rice's `cosmic/Nebula.ron` for the
editor, side bars, panel, title and status bar, the container colours for
menus, hovers, inputs and the command palette, and the teal accent for the
active tab line, buttons, badges and the menu highlight. Button hover is the
lighter teal ![#66D4CC](https://placehold.co/12x12/66d4cc/66d4cc.png) `#66D4CC`. The integrated terminal uses the rice's COSMIC
Terminal scheme (`cosmic-term/`), so command output looks the same as in
COSMIC Terminal.

Cursor's own panels (Agent, chat, inline diffs) have no colour keys of their
own. Cursor builds them from standard ones, and the theme sets those: the
button colour is the agent's accent, the side bar and panel colours are its
surfaces, the diff colours are its accept / reject highlights, and the
terminal's `blue` slot colours its links.

## Contrast

Text is at least 4.5:1 on the window background and on menus and hovers,
comments and line numbers at least 3:1. Teal ![#4ECDC4](https://placehold.co/12x12/4ecdc4/4ecdc4.png) `#4ECDC4` is 8.8:1 on the window background and 8.0:1 on the
container colour ![#20252C](https://placehold.co/12x12/20252c/20252c.png) `#20252C`, so it stays the same colour everywhere, the
match highlight in the suggest and hover widgets included. Keywords on the
highlighted current line are 7.3:1; comments dip under 3:1 there.
