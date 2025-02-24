use "std/fmt"

# @description Main function
# Listing directories and packages per Manager
main() {

  clear
  h1 " $(package "name")"
  hr "=+=" "-"
  p " $(package "description")"
  br

  # Function to check if a command exists
  command_exists() {
    command -v "$1" >/dev/null 2>&1
  }

  # Function to list global packages for npm
  list_npm_packages() {
    br
    h2 "NPM Global Packages:"
    npm list -g --depth=0
  }

  # Function to list global packages for pnpm
  list_pnpm_packages() {
    h2 "PNPM Global Packages:"
    pnpm list -g --depth=0
  }

  # Function to list global packages for deno
  list_deno_packages() {
    h2 "Deno Global Packages:"
    deno info
  }

  # Function to list global packages for bun
  list_bun_packages() {
    h2 "Bun Global Packages:"
    bun pm ls
  }

  # Check and list packages for each package manager
  if command_exists npm; then
    list_npm_packages
    echo
  fi

  if command_exists pnpm; then
    list_pnpm_packages
    echo
  fi

  if command_exists deno; then
    list_deno_packages
    echo
  fi

  if command_exists bun; then
    list_bun_packages
    echo
  fi

  br

}

# Calling the main() function
if [[ "$#" == 0 ]]; then
  main
  exit 0
fi

# List Installed Managers
if [[ "$1" == "managers" ]]; then

  clear
  h1 " $(package "name")"
  hr "=+=" "-"
  p " Installed Package Managers and their Versions"
  br

  package_managers=("npm" "pnpm" "deno" "bun")

  for pm in "${package_managers[@]}"; do
    if command -v "$pm" &>/dev/null; then
      version=$("$pm" --version)
      p "${txtGreen}$pm${x} is installed. ${em}Version: $version${x}"
      br
    else
      echo "${txtRed}$pm${x} is not installed."
      br
    fi
  done

fi
