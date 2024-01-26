function n -d "FNM"
  if test -z "fnm"
    echo "Install fnm to use this feature"
    return
  end

  fnm $argv
end
