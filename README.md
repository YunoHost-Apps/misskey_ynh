![Misskey](https://raw.githubusercontent.com/syuilo/misskey/develop/assets/title.png)
================================================================
# Misskey for Yunohost

[![Integration level](https://dash.yunohost.org/integration/misskey.svg)](https://dash.yunohost.org/appci/app/misskey) ![](https://ci-apps.yunohost.org/ci/badges/misskey.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/misskey.maintain.svg)

[![Install Misskey with YunoHost](https://install-app.yunohost.org/install-with-yunohost.png)](https://install-app.yunohost.org/?app=misskey)



> *This package allows you to install Misskey quickly and simply on a YunoHost server.
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

![](https://藍.moe/aiart/31.png)


## Overview

[Misskey](https://join.misskey.page/en/) is a forever evolving, sophisticated microblogging platform that support Fediverse. It provide another flavour to decentralised network. Why don't you take a short break from the hustle and bustle of the city, and dive into a new Internet?

**Shipped version:** 12.69.0

## Screenshots

![](https://raw.githubusercontent.com/syuilo/misskey/develop/assets/ss/user.jpg)



## Other instances to join

* [Instances](https://join.misskey.page/en/wiki/instances/)

## Important points to read before installing

1. **Misskey**  require a dedicated **root domain**, eg. misskey.domain.tldYunoHost
2. **Misskey** can take quite some time to install( **more then 30 minutes** ). So take out some time and grab yourself a coffee.
3. If installing from command line use of **screen is rerecorded** to avoid disconnection.See below.
4. After installation first page can take time to load and may show timeout error. Give it time to make itself ready for you. **Refresh page after 2-3 minutes**.
5. The **first account created will be an admin user** and will have all the admin rights.

####  Support

LDAP supported : **No**
Can the app be used by multiple users ? : **Yes**

#### Using *screen* in case of disconnects

```
$ sudo apt-get install screen
$ screen
$ sudo yunohost app install https://github.com/YunoHost-Apps/misskey_ynh.git
```

Recover after disconnect:

```
$ screen -d
$ screen -r
```

## Links

 * Report a bug: https://github.com/YunoHost-Apps/misskey_ynh/issues
 * App website: https://join.misskey.page
 * Upstream app repository: https://github.com/syuilo/misskey
 * YunoHost website: https://yunohost.org/

---

Developer info
----------------

**Only if you want to use a testing branch for coding, instead of merging directly into master.**
Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/misskey_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/misskey_ynh/tree/testing --debug
or
sudo yunohost app upgrade REPLACEBYYOURAPP -u https://github.com/YunoHost-Apps/misskey_ynh/tree/testing --debug
```
