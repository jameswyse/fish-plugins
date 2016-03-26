if test -z "$GUI_EDITOR"
  set -gx GUI_EDITOR $EDITOR
end

function e -d "Open Editor"

  if test -z "$GUI_EDITOR"
    echo "Set \$GUI_EDITOR or \$EDITOR to enable this feature"
    return
  end

  if test -z "$argv"
    eval "$GUI_EDITOR ."
  else
    eval "$GUI_EDITOR $argv"
  end
end
