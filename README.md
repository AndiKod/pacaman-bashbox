# PacaMan

This BashBox will list all JS PackageManagers installed on the system, their directories and respective globally packages they installed.

As of now, it checks for NPM, PNPM, Deno or Bun

_Note: A BashBox is package like a Cargo Crate, but for Bash. It can be installed, updated or uninstalled from the command-line, and bring new functionalities or tools right into the terminal ...on Linux, MacOS or WSL2._

## Prerequisites

[Sh:erpa](https://github.com/SherpaCLI/sherpa) need to be installed, in the same way you need Cargo to install & use crates.

Be sure you have curl, git & gawk installed, then run:

```bash
bash -c "$(curl -sLo- https://sherpa-cli.netlify.app/install.sh)"
```

Check [the QuickInstall](https://sherpa-cli.netlify.app/install/install/) page in the documantation.

## Install PacaMan

1. Run the Install command

```bash
sh install -n "pacaman" -u "https://github.com/AndiKod/pacaman-bashbox.git"
```

The repo will be cloned, the executable built from the src/ files and be available as `pacaman`.

2. Example usage

List all installed PackageManagers, their directories and respective global packages they were used for with things like `pnpm add -g cowsay`

```bash
pacaman
```

List the list of Installed PackageManagers and their actual Version

```bash
pacaman managers
```

...that all. Keep doing your stuff as usual, check PacaMan when you need to verifiy things or remember what and where things are installed. Happy hacking!

