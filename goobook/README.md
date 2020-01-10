# GooBook Container

## Source
* https://github.com/frioux/goobook commit 1f8c70dbbe0f05f6e3aa3db4f61ae73d047beeab

## Usage

```
touch ~/.goobook_auth.json

docker run -it --rm                                 \
  --volume ~/.goobook_auth.json:/.goobook_auth.json \
  --volume ~/.goobook_cache:/.goobook_cache         \
  --user $(id -u)                                   \
  frew/goobook                                      \
  authenticate --noauth_local_webserver

docker run -it --rm                                 \
  --volume ~/.goobook_auth.json:/.goobook_auth.json \
  --volume ~/.goobook_cache:/.goobook_cache         \
  --user $(id -u)                                   \
  frew/goobook                                      \
  query mom
```

## Description

If you use mutt or maybe just like using the commandline in general and use
Google Contacts, you may like [goobook](https://pypi.python.org/pypi/goobook).

## Volumes

There is one absolutely required volume and one recommended volumes you should
set up to use this:

 1. `/.goobook_auth.json` - this is the file containing your username and password. **required**

Generate this file with the first two commands in the *Usage* section.

 2. `/.goobook_cache` - this is where the cache for the command is stored.

If you don't use this volume all of your commands will take forever.

## Shortcut Usage

I recommend putting the following script in your path to make usage of this
container easier:

```
#!/bin/dash

exec docker run -it --rm                            \
  --volume ~/.goobook_auth.json:/.goobook_auth.json \
  --volume ~/.goobook_cache:/.goobook_cache         \
  --user $(id -u)                                   \
  frew/goobook                                      \
  "$@"
```

