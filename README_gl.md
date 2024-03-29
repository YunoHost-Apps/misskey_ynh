<!--
NOTA: Este README foi creado automáticamente por <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
NON debe editarse manualmente.
-->

# Misskey para YunoHost

[![Nivel de integración](https://dash.yunohost.org/integration/misskey.svg)](https://dash.yunohost.org/appci/app/misskey) ![Estado de funcionamento](https://ci-apps.yunohost.org/ci/badges/misskey.status.svg) ![Estado de mantemento](https://ci-apps.yunohost.org/ci/badges/misskey.maintain.svg)

[![Instalar Misskey con YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=misskey)

*[Le este README en outros idiomas.](./ALL_README.md)*

> *Este paquete permíteche instalar Misskey de xeito rápido e doado nun servidor YunoHost.*  
> *Se non usas YunoHost, le a [documentación](https://yunohost.org/install) para saber como instalalo.*

## Vista xeral

Misskey is a decentralized microblogging platform. Since it exists within the Fediverse (a universe where various social media platforms are organized), it is mutually linked with other social media platforms.


**Versión proporcionada:** 12.119.2~ynh1

## Capturas de pantalla

![Captura de pantalla de Misskey](./doc/screenshots/screenshot-desktop.png)

## Avisos / información importante

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

## Documentación e recursos

- Web oficial da app: <https://misskey-hub.net/>
- Repositorio de orixe do código: <https://github.com/misskey-dev/misskey>
- Tenda YunoHost: <https://apps.yunohost.org/app/misskey>
- Informar dun problema: <https://github.com/YunoHost-Apps/misskey_ynh/issues>

## Info de desenvolvemento

Envía a túa colaboración á [rama `testing`](https://github.com/YunoHost-Apps/misskey_ynh/tree/testing).

Para probar a rama `testing`, procede deste xeito:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/misskey_ynh/tree/testing --debug
ou
sudo yunohost app upgrade misskey -u https://github.com/YunoHost-Apps/misskey_ynh/tree/testing --debug
```

**Máis info sobre o empaquetado da app:** <https://yunohost.org/packaging_apps>
