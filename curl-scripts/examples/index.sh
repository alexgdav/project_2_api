#!/bin/bash

curl "https://young-reef-92206.herokuapp.com/examples" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
