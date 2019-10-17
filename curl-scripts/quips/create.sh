curl "http://localhost:4741/quips" \
  --include \
  --request POST \
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
