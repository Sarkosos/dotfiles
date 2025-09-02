if status is-interactive
    # Commands to run in interactive sessions can go here
    atuin init fish | source
end

function code
  set location "$PWD/$argv"
  open -n -b "com.microsoft.VSCode" --args $location
end

eval "$(/opt/homebrew/bin/brew shellenv)"
