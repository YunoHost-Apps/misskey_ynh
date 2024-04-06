<!--
N.B.: Questo README è stato automaticamente generato da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON DEVE essere modificato manualmente.
-->

# Misskey per YunoHost

[![Livello di integrazione](https://dash.yunohost.org/integration/misskey.svg)](https://dash.yunohost.org/appci/app/misskey) ![Stato di funzionamento](https://ci-apps.yunohost.org/ci/badges/misskey.status.svg) ![Stato di manutenzione](https://ci-apps.yunohost.org/ci/badges/misskey.maintain.svg)

[![Installa Misskey con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=misskey)

*[Leggi questo README in altre lingue.](./ALL_README.md)*

> *Questo pacchetto ti permette di installare Misskey su un server YunoHost in modo semplice e veloce.*  
> *Se non hai YunoHost, consulta [la guida](https://yunohost.org/install) per imparare a installarlo.*

## Panoramica

Misskey is a decentralized microblogging platform. Since it exists within the Fediverse (a universe where various social media platforms are organized), it is mutually linked with other social media platforms.


**Versione pubblicata:** 12.119.2~ynh1

## Screenshot

![Screenshot di Misskey](./doc/screenshots/screenshot-desktop.png)

## Attenzione/informazioni importanti

### Important points to read before installing

- *Misskey* requires a dedicated root domain, e.g. `misskey.domain.tld`
- Due to Cypress dependency, *Misskey* only works on 64-bit CPU machines.
- *Misskey* can take quite some time to install (more then 30 minutes). So take out some time and grab yourself a coffee.
- If installing from command line, using `screen` is recommended to avoid disconnection. See below.
- After installation, first page can take time to load and may show timeout error. Give it time to make itself ready for you. Refresh the page after 2 or 3 minutes.
- The first account created will be an admin user and will have all the admin rights.

Using screen in case of disconnects

``` 
sudo apt-get install screen
screen
sudo yunohost app install https://github.com/YunoHost-Apps/misskey_ynh.git
```
Recover after disconnect:
```
screen -d
screen -r
```

## Documentazione e risorse

- Sito web ufficiale dell’app: <https://misskey-hub.net/>
- Repository upstream del codice dell’app: <https://github.com/misskey-dev/misskey>
- Store di YunoHost: <https://apps.yunohost.org/app/misskey>
- Segnala un problema: <https://github.com/YunoHost-Apps/misskey_ynh/issues>

## Informazioni per sviluppatori

Si prega di inviare la tua pull request alla [branch di `testing`](https://github.com/YunoHost-Apps/misskey_ynh/tree/testing).

Per provare la branch di `testing`, si prega di procedere in questo modo:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/misskey_ynh/tree/testing --debug
o
sudo yunohost app upgrade misskey -u https://github.com/YunoHost-Apps/misskey_ynh/tree/testing --debug
```

**Maggiori informazioni riguardo il pacchetto di quest’app:** <https://yunohost.org/packaging_apps>
