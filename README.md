# README

Standard Rails app

To reproduce the bug :

```
bundle exec rake db:seed
POST http://localhost:3000/auth/sign_in?email=test%40example.com&password=test

get auth headers and pass it to :

GET http://localhost:3000/welcome/index

Devise token auth are missing
```