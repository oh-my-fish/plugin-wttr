function wttr -d "shows the weather to a given city eg. Rio de Janeiro"
  if not type -q curl
    echo "Please install curl"
    return 5
  end
  set url (echo $argv | sed -e 's/\ /%20/g')
  curl -4 "https://wttr.in/$url"
end
