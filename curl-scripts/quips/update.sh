curl "http://localhost:4741/quips/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "quip": {
      "content": "'"${CONTENT}"'",
      "author": "'"${AUTHOR}"'",
      "mood": "'"${MOOD}"'"
    }
  }'

  echo
