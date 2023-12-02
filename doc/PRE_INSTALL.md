### Important points to read before installing

1. **Misskey** require a dedicated **root domain**, eg. misskey.domain.tld
2. You can't change the domain once installed.
3. The user choosen during the installation is automatically created in Misskey with admin rights

## Using *screen* in case of disconnect

Misskey's install can be long, depending on the server performance. To prevent the process from being stopped because of disconnect, you can use a `screen` session
```
$ sudo apt-get install screen
$ screen
$ sudo yunohost app install misskey
```

Recover after disconnect:
```
$ screen -d
$ screen -r
```
