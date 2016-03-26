function n -d "Nodebrew"
  if test -z "nodebrew"
    echo "Install nodebrew to use this feature"
    return
  end

  nodebrew $argv
end
