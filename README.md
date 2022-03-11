# README

Standard Rails app

To reproduce the bug :

```
bundle exec rake db:seed
POST http://localhost:3000/auth/sign_in?email=test%40example.com&password=test

## Request
curl -X "POST" "http://localhost:3000/auth/sign_in?email=test%40example.com&password=test"


get auth headers and pass it to :

GET http://localhost:3000/welcome/index

## Request Duplicate
curl "http://localhost:3000/welcome/index?email=test%40example.com&password=test" \
     -H 'access-token: ACCESS_TOKEN_SIGN_IN' \
     -H 'client: CLIENT_SIGN_IN' \
     -H 'expiry: EXPIRY_SIGN_IN' \
     -H 'uid: test@example.com' \

Devise token auth are missing
```