# MaxV16 Homebrew Tap

## Usage

```sh
brew tap maxv16/tap
```

Recent Homebrew versions refuse to load a cask from a third-party tap until you
explicitly trust it. Before installing, run:

```sh
brew trust --cask maxv16/tap/simpledesktoprenamer
```

Then install:

```sh
brew install --cask simpledesktoprenamer
```

SimpleDesktopRenamer is unsigned and not notarized, so on first launch macOS
blocks it. Remove the quarantine attribute:

```sh
xattr -dr com.apple.quarantine "/Applications/SimpleDesktopRenamer.app"
```

Then grant Accessibility permission under System Settings > Privacy & Security >
Accessibility (only needed for the optional Control+Number space switching).

## Casks

- `simpledesktoprenamer` — minimal, read-only macOS menu-bar app that names
desktop spaces. It never moves windows, never reorders Spaces, and never
synthesises input.
