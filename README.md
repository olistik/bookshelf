## Hanami Workshop

```shell
git clone git@github.com:jodosha/bookshelf.git
cd bookshelf
gem install bundler
bundle install
bundle exec hanami generate action web home#index --url=/
hanami db create # createdb bookshelf_development
bundle exec hanami server
# .env.development
# DATABASE_URL="postgres://myusername:mypassword@localhost/bookshelf_development"
# apps/web/templates/home/index.html.erb -> <h1>Hello</h1>

bundle exec hanami generate model Book
bundle exec hanami generate migration create_books
bundle exec hanami db migrate
bundle exec hanami console
```

## Notes

Project is the main structure.

You can mount Rack apps (expect Rails).

There's an app created by default, named "web",  that resides within the `apps/` directory.
