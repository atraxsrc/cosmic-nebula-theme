# Nebula

> Charcoal, cloud and teal, violet and sky, with rose kept for what is wrong. A night sky over blue-grey.

Pop!_OS 24.04 on the COSMIC desktop, one palette carried through the whole
machine: desktop, terminal, shell, editor, browser. This note is the rice
describing itself, written in Markdown and rendered by **Postilla**.

## Palette

Every text colour is checked against the window background ![#181C22](https://placehold.co/12x12/181c22/181c22.png) `#181C22`.

| Role | Hex | Contrast on background |
|------|-----|------------------------|
| Text | ![#E0E6ED](https://placehold.co/12x12/e0e6ed/e0e6ed.png) `#E0E6ED` | 13.6:1 |
| Teal, accent | ![#4ECDC4](https://placehold.co/12x12/4ecdc4/4ecdc4.png) `#4ECDC4` | 8.8:1 |
| Apricot, warning | ![#FFB38A](https://placehold.co/12x12/ffb38a/ffb38a.png) `#FFB38A` | 9.8:1 |
| Rose, error | ![#FF7B92](https://placehold.co/12x12/ff7b92/ff7b92.png) `#FF7B92` | 6.9:1 |
| Sky, success | ![#82EEFF](https://placehold.co/12x12/82eeff/82eeff.png) `#82EEFF` | 12.7:1 |
| Lilac, symlinks | ![#C9AFF0](https://placehold.co/12x12/c9aff0/c9aff0.png) `#C9AFF0` | 8.9:1 |
| Periwinkle, directories | ![#96AAFF](https://placehold.co/12x12/96aaff/96aaff.png) `#96AAFF` | 7.7:1 |
| Muted | ![#848E9F](https://placehold.co/12x12/848e9f/848e9f.png) `#848E9F` | 5.2:1 |

Containers sit one step away from the background at ![#20252C](https://placehold.co/12x12/20252c/20252c.png) `#20252C`, which is
what frosted glass blurs into.

## Where the colours go

```mermaid
flowchart LR
    P[Nebula palette] --> D[COSMIC desktop<br/>Nebula.ron, Dark slot]
    P --> T[COSMIC Terminal<br/>Nebula]
    P --> S[zsh layer<br/>LS_COLORS, highlighting, starship]
    P --> E[Postilla<br/>syntax theme from the terminal scheme]
    T --> B[btop, bat, lsd, fastfetch]
    D --> F[Firefox<br/>built-in Dark + userChrome]
```

## Setup, in order

- [x] Import `cosmic/Nebula.ron` into Appearance, **Dark** slot
- [x] Import `cosmic-term/Nebula-term.ron`, pick **Nebula** for the profile
- [x] `./icons/install.sh` for the **Cosmic-Nebula** icons, `./cosmic/install.sh` for fonts and the terminal look
- [x] `./zsh/install.sh`, `./lsd/install.sh`, `./fastfetch/install.sh`
- [x] Cursor: Oxygen-Nebula-Teal
- [x] Wallpaper: `backgrounds/nebula-anime.png`
- [ ] Screenshot for the README

## The baseline every rice shares

```ron
corner_radii: (
    radius_xs: (2.0, 2.0, 2.0, 2.0),   // squared corners
    radius_xl: (2.0, 2.0, 2.0, 2.0),
),
frosted: Low,
frosted_windows: true,
frosted_panel: true,
frosted_applets: true,
frosted_maximized_apps: false,
gaps: (0, 7),
active_hint: 1,
```

Contrast is the WCAG ratio[^1], where $L$ is relative luminance:

```typst
$ (L_1 + 0.05) / (L_2 + 0.05) >= 4.5 $
```

---

*Rendered in Postilla, a Markdown notes app for COSMIC. The window is painted
with this rice's terminal scheme, imported as a syntax theme.*

[^1]: Web Content Accessibility Guidelines, success criterion 1.4.3. Normal text wants 4.5:1, large text 3:1.
