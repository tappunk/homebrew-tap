<div align="center">

# homebrew-tap

Homebrew tap for all tappunk tools.

[![License: Apache 2.0](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE)
[![X Follow](https://img.shields.io/twitter/follow/tappunk?style=social)](https://x.com/tappunk)

</div>

---

## Install

```bash
brew tap tappunk/tap
brew install gre gsty tnk utmd
```

## Tools

| Formula | Description | Docs |
|---|---|---|
| `gre` | Super fast git recap for multiple repositories | [tappunk/gre](https://github.com/tappunk/gre) |
| `gsty` | Ghostty live preview theme browser and installer TUI | [tappunk/gsty](https://github.com/tappunk/gsty) |
| `tnk` | Zero-trust sandbox for local inference and secure AI coding agent runtimes | [tappunk/tnk](https://tappunk.com/tnk/) |
| `utmd` | Minimalist developer sandbox and disposable VM manager for UTM on macOS | [tappunk/utmd](https://github.com/tappunk/utmd) |

## Quick start

```bash
# gre — parallel git status across repos
gre                          # Show status across all repos
gre --json                   # Output JSON for agents and scripts

# gsty — Ghostty theme browser and installer
gsty --list                  # List available themes
gsty --apply <theme>         # Apply a theme

# tnk — zero-trust sandbox
tnk init                     # Initialize configuration
tnk                          # Show runtime status
tnk run                      # Boot engine + services
tnk sandbox shell            # Enter project sandbox

# utmd — disposable VM manager
utmd list                    # List VMs
utmd run <name>              # Boot a VM
```

## Verify

```bash
brew test gre gsty tnk utmd
```
