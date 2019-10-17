curl "http://localhost:4741/quips/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}" \

echo
