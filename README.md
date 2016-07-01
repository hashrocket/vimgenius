## Vim Genius

Vim Genius is a flashcard program that helps people learn Vim.

## Setup

```
rake db:setup
```

Add a `.env` file to the root directory with the following:

```
ADMIN_PASSWORD='vimmaster'
```

That is not the actual password in production, it's just what the tests count on.

## Prebuilt lessons

There are prebuilt lessons in `db/seeds/`.

## Run Tests

Run `rake`.

## Deploy

For deploying to production run:

```shell
heroku git:remote -a vim-genius
git push heroku master
```

---

## About

[![Hashrocket logo](https://hashrocket.com/hashrocket_logo.svg)](https://hashrocket.com)

Vim Genius is supported by the team at [Hashrocket, a
multidisciplinary design and development consultancy](https://hashrocket.com). If you'd like to [work with us](https://hashrocket.com/contact-us/hire-us) or [join our team](https://hashrocket.com/contact-us/jobs), don't hesitate to get in touch.
