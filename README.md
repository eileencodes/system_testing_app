# README

* Note: for now tests will only work on first run because
issues with Active Record aren't fixed yet. In your application
use DatabaseRewinder or DatabaseCleaner until the transaction handling
in system tsts is fixed.

To run the system tests:

```
git clone git@github.com:eileencodes/system_testing_app.git

cd system_testing_app

bundle

bin/rails db:create

bin/rails db:migrate

bin/rails test:system
```
