#!/bin/sh

set -e

curl -X 'POST' \
  'http://localhost:60000/charge' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
  "amount": {
    "currency_code": "USD",
    "units": 245,
    "nanos": 9900000
  },
  "credit_card": {
    "credit_card_number": "4432-8015-6152-0454",
    "credit_card_cvv": 672,
    "credit_card_expiration_year": 2024,
    "credit_card_expiration_month": 1
  }
}' ; echo

