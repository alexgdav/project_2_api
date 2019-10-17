#!/bin/bash

curl "http://localhost:4741/questions" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "question": {
      "phrase": "'"${PHRASE}"'"
    }
  }'

echo
