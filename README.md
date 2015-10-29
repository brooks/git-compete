### dependencies
- rbenv or rvm ruby version: "2.2.0"
- postgres
- bundler `gem install bundler`

### setup

-bundle gems
```console
$ bundle install
```

-create and seed database
```console
$ rake db:setup
```

-run test suite
```console
$ bundle exec rspec
```

-run server (puma)
```console
$ bundle exec puma
```
