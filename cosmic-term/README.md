# COSMIC Terminal schemes

Colour schemes for COSMIC Terminal. The desktop `.ron` in `cosmic/` does not
colour ANSI text, so the terminal needs its own import.

1. COSMIC Terminal → **View → Color schemes…** (not Settings → Appearance)
2. **Dark** tab → **Import** → a `.ron` from this folder
3. View → Settings → Appearance → Color scheme (dark) → the scheme name

If a profile is set as default, set the scheme on that profile too or the
dropdown will look like it did nothing. `cosmic/install.sh` selects **Nebula**,
so import that one at least.

Every scheme here keeps the 16 ANSI colours of Nebula. Only the plain text
colour and the dim text change, so bat, lsd, starship, nala and btop look the
same whichever one you pick. The cursor stays teal ![#4ECDC4](https://placehold.co/12x12/4ecdc4/4ecdc4.png) `#4ECDC4`.

The ANSI slots follow the rice: `red` is rose ![#FF7B92](https://placehold.co/12x12/ff7b92/ff7b92.png) `#FF7B92`, the one colour
kept for what is wrong; `green` is sky ![#82EEFF](https://placehold.co/12x12/82eeff/82eeff.png) `#82EEFF`; `yellow` is lilac
![#C9AFF0](https://placehold.co/12x12/c9aff0/c9aff0.png) `#C9AFF0`; `blue` is the teal accent ![#4ECDC4](https://placehold.co/12x12/4ecdc4/4ecdc4.png) `#4ECDC4`, so nala's `Updated:` and
`Downloaded:` labels sit in the rice's own colour next to the sky
`No Change:`; `magenta` is apricot ![#FFB38A](https://placehold.co/12x12/ffb38a/ffb38a.png) `#FFB38A`, the warm colour numbers and
warnings take; `cyan` is fog ![#82EEFF](https://placehold.co/12x12/82eeff/82eeff.png) `#82EEFF`; `white` is
![#D1D7E0](https://placehold.co/12x12/d1d7e0/d1d7e0.png) `#D1D7E0`. Directories are not affected: `LS_COLORS` in `zsh/nebula.zsh` colours
them in truecolor.

## Which one

Cloud ![#E0E6ED](https://placehold.co/12x12/e0e6ed/e0e6ed.png) `#E0E6ED` is the default. The others move through Nebula's own greys
and tints: calmer above it, brighter below it, for whoever finds the default
glares at night or reads too dim by day.

| Scheme | Plain text | Contrast | Also used for |
|--------|------------|----------|---------------|
| Nebula Fog | ![#848E9F](https://placehold.co/12x12/848e9f/848e9f.png) `#848E9F` | 5.2:1 | muted text, the dim text colour |
| Nebula Periwinkle | ![#96AAFF](https://placehold.co/12x12/96aaff/96aaff.png) `#96AAFF` | 7.7:1 | directories (`LS_COLORS`), types |
| Nebula Sky | ![#82EEFF](https://placehold.co/12x12/82eeff/82eeff.png) `#82EEFF` | 12.7:1 | strings, success, the `green` slot |
| Nebula Teal | ![#4ECDC4](https://placehold.co/12x12/4ecdc4/4ecdc4.png) `#4ECDC4` | 8.8:1 | the accent, the cursor and the `blue` slot |
| Nebula Pearl | ![#C3CAD6](https://placehold.co/12x12/c3cad6/c3cad6.png) `#C3CAD6` | 10.4:1 | a neutral a step from plain text |
| **Nebula** (default) | ![#E0E6ED](https://placehold.co/12x12/e0e6ed/e0e6ed.png) `#E0E6ED` | 13.6:1 | the desktop text colour |

When plain text shares a colour with an ANSI slot, output in that slot stops
standing out: directories in Nebula Periwinkle, for example, look like plain text.
Rose errors and apricot numbers stand out more against the dimmer
schemes than against cloud.

**Bold:** `bright_foreground` (![#EFEDF2](https://placehold.co/12x12/efedf2/efedf2.png) `#EFEDF2`) only colours bold text when
`use_bright_bold` is on. The baseline config in `cosmic/config/` leaves it off,
so bold text is the plain text colour at weight 800.

Previews are rendered in Fira Mono on the theme background ![#181C22](https://placehold.co/12x12/181c22/181c22.png) `#181C22`, not
taken from the terminal. In COSMIC you get Maple Mono at 77% opacity over the
wallpaper, so text looks a little softer and contrast a little lower.

## Dark

**Nebula** · `Nebula-term.ron` · cloud ![#E0E6ED](https://placehold.co/12x12/e0e6ed/e0e6ed.png) `#E0E6ED`, 13.6:1. The default.

![Nebula](../assets/cosmic-term/Nebula-term.png)

**Nebula Fog** · `Nebula-term-fog.ron` · ![#848E9F](https://placehold.co/12x12/848e9f/848e9f.png) `#848E9F`, 5.2:1. Muted text, the dim text colour.

![Nebula Fog](../assets/cosmic-term/Nebula-term-fog.png)

**Nebula Periwinkle** · `Nebula-term-periwinkle.ron` · ![#96AAFF](https://placehold.co/12x12/96aaff/96aaff.png) `#96AAFF`, 7.7:1. Directories (`LS_COLORS`), types.

![Nebula Periwinkle](../assets/cosmic-term/Nebula-term-periwinkle.png)

**Nebula Sky** · `Nebula-term-sky.ron` · ![#82EEFF](https://placehold.co/12x12/82eeff/82eeff.png) `#82EEFF`, 12.7:1. Strings, success, the `green` slot.

![Nebula Sky](../assets/cosmic-term/Nebula-term-sky.png)

**Nebula Teal** · `Nebula-term-teal.ron` · ![#4ECDC4](https://placehold.co/12x12/4ecdc4/4ecdc4.png) `#4ECDC4`, 8.8:1. The accent, the cursor and the `blue` slot.

![Nebula Teal](../assets/cosmic-term/Nebula-term-teal.png)

**Nebula Pearl** · `Nebula-term-pearl.ron` · ![#C3CAD6](https://placehold.co/12x12/c3cad6/c3cad6.png) `#C3CAD6`, 10.4:1. A neutral a step from plain text.

![Nebula Pearl](../assets/cosmic-term/Nebula-term-pearl.png)

Contrast is plain text on the theme background, WCAG 2.
