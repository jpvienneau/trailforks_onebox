Trailforks Onebox - !WARNING NOT READY FOR USE!.
=============

Trailforks Onebox for rendering Trailforks URI into a discourse onebox.

Install in Discourse 1.0

```sh
cd /var/discourse
./launcher ssh app
cd /var/www/discourse
rake plugin:install repo='https://github.com/jpvienneau/trailforks_onebox.git'
exit
./launcher restart app
./launcher ssh app
cd /var/www/discourse
rake posts:refresh_oneboxes
```

You need to use a url from the 'Embed on Blog' code e.g. _example goes here_

Example at _ecmtb.net example goes here_
