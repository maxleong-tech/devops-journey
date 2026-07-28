#!/usr/bin/env bash

URL="http://localhost:8000/health"
STATUS_CODE=$(curl -o /dev/null -s -w "%{http_code}" "$URL")

echo "Testing: $URL"
echo "HTTP status code: $STATUS_CODE"

if [ "$STATUS_CODE" = "200" ]; then
  echo "PASS: API health check is OK"
else
  echo "FAIL: API health check is not OK"
  exit 1
fi
