<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Misskey YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/misskey.svg)](https://dash.yunohost.org/appci/app/misskey) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/misskey.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/misskey.maintain.svg)

[![Instalatu Misskey YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=misskey)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Misskey YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Misskey is a decentralized microblogging platform. Since it exists within the Fediverse (a universe where various social media platforms are organized), it is mutually linked with other social media platforms.


**Paketatutako bertsioa:** 2024.5.0~ynh1

## Pantaila-argazkiak

![Misskey(r)en pantaila-argazkia](./doc/screenshots/screenshot-desktop.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://misskey-hub.net/>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/misskey-dev/misskey>
- YunoHost Denda: <https://apps.yunohost.org/app/misskey>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/misskey_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/misskey_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/misskey_ynh/tree/testing --debug
edo
sudo yunohost app upgrade misskey -u https://github.com/YunoHost-Apps/misskey_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
