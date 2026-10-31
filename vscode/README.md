# Cosmic Nebula / Cosmic Nebula Day for Cursor

Colour themes for [Cursor](https://cursor.com) from the COSMIC
[Nebula](https://github.com/atraxsrc/cosmic-nebula-theme) rice and its light half
[Nebula Day](https://github.com/atraxsrc/cosmic-nebuladay-theme): **Cosmic Nebula** and **Cosmic Nebula Day** in one
extension. It is a plain VS Code theme extension, so VS Code and VSCodium
take it too. The same extension ships in both repos.

## Install

```bash
./vscode/install.sh                # Cursor
./vscode/install.sh code codium    # VS Code / VSCodium instead
```

It packs this folder into `vscode/cosmic-nebula-theme-<version>.vsix` and installs
that with the editor's CLI (`cursor --install-extension`), so the theme is
listed under Extensions and running the script again updates it. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> and pick **Cosmic Nebula** or **Cosmic Nebula Day**.

No CLI on the PATH (an AppImage, say): the script still builds the `.vsix`;
install it from Extensions → `...` → **Install from VSIX**.

## Follow COSMIC's Dark / Light toggle

COSMIC tells apps which mode is on through its desktop portal. With these
lines in Cursor's `settings.json` (<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> →
**Preferences: Open User Settings (JSON)**), Cursor switches between the two
themes along with the desktop:

```jsonc
"window.autoDetectColorScheme": true,
"workbench.preferredDarkColorTheme": "Cosmic Nebula",
"workbench.preferredLightColorTheme": "Cosmic Nebula Day"
```

## What it colours

Code is coloured the way Neovim is in the rice (`nvim/colors/*.lua`):

| Role | Nebula | Nebula Day |
|------|---|---|
| Keywords, tags | ![#4ECDC4](https://placehold.co/12x12/4ecdc4/4ecdc4.png) `#4ECDC4` | ![#186A61](https://placehold.co/12x12/186a61/186a61.png) `#186A61` |
| Functions, tag attributes | ![#C9AFF0](https://placehold.co/12x12/C9C2B4/C9C2B4.png) `#C9AFF0` | ![#604686](https://placehold.co/12x12/C9C2B4/C9C2B4.png) `#604686` |
| Strings | ![#82EEFF](https://placehold.co/12x12/9FA5A9/9FA5A9.png) `#82EEFF` | ![#1D6778](https://placehold.co/12x12/9FA5A9/9FA5A9.png) `#1D6778` |
| Numbers, constants | ![#FFB38A](https://placehold.co/12x12/D87C4A/D87C4A.png) `#FFB38A` | ![#914C27](https://placehold.co/12x12/D87C4A/D87C4A.png) `#914C27` |
| Types, classes, modules | ![#96AAFF](https://placehold.co/12x12/96aaff/96aaff.png) `#96AAFF` | ![#31469B](https://placehold.co/12x12/31469b/31469b.png) `#31469B` |
| Imports, macros, decorators, escapes, `this` / `self` | ![#B388EB](https://placehold.co/12x12/9D7E6F/9D7E6F.png) `#B388EB` | ![#603598](https://placehold.co/12x12/9D7E6F/9D7E6F.png) `#603598` |
| Parameters (italic) | ![#9AA3B5](https://placehold.co/12x12/A5AEB4/A5AEB4.png) `#9AA3B5` | ![#515A6C](https://placehold.co/12x12/A5AEB4/A5AEB4.png) `#515A6C` |
| Operators, punctuation | ![#848E9F](https://placehold.co/12x12/7F7F7F/7F7F7F.png) `#848E9F` | ![#555F72](https://placehold.co/12x12/7F7F7F/7F7F7F.png) `#555F72` |
| Comments (italic) | ![#5B6478](https://placehold.co/12x12/565D60/565D60.png) `#5B6478` | ![#858EA2](https://placehold.co/12x12/565D60/565D60.png) `#858EA2` |
| Accent | ![#4ECDC4](https://placehold.co/12x12/4ecdc4/4ecdc4.png) `#4ECDC4` | ![#186A61](https://placehold.co/12x12/186a61/186a61.png) `#186A61` |
| Errors, deleted, conflicts | ![#FF7B92](https://placehold.co/12x12/DE6145/DE6145.png) `#FF7B92` | ![#A8243B](https://placehold.co/12x12/DE6145/DE6145.png) `#A8243B` |

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
comments and line numbers at least 3:1, in both halves.

- **Nebula**: Teal ![#4ECDC4](https://placehold.co/12x12/4ecdc4/4ecdc4.png)
  `#4ECDC4` is 8.8:1 on the window background and 8.0:1 on the container colour
  ![#20252C](https://placehold.co/12x12/20252c/20252c.png) `#20252C`, so it
  stays the same colour everywhere, the match highlight in the suggest and hover
  widgets included. Keywords on the highlighted current line are 7.3:1; comments
  dip under 3:1 there.
- **Nebula Day**: Teal
  ![#186A61](https://placehold.co/12x12/186a61/186a61.png) `#186A61` is 5.1:1 on
  the window background and 5.8:1 on the container colour
  ![#F1F3F6](https://placehold.co/12x12/f1f3f6/f1f3f6.png) `#F1F3F6`, so it
  stays the same colour everywhere, the match highlight in the suggest and hover
  widgets included. Keywords on the highlighted current line are 4.6:1; comments
  dip under 3:1 there.
