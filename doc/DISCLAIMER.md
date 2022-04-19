### Important points to read before installing

- *Misskey* require a dedicated root domain, eg. `misskey.domain.tld`
- Due to Cypress dependency, *Misskey* only works on 64-bit CPU machines.
- *Misskey* can take quite some time to install (more then 30 minutes). So take out some time and grab yourself a coffee.
- If installing from command line use of screen is rerecorded to avoid disconnection. See below.
- After installation, first page can take time to load and may show timeout error. Give it time to make itself ready for you. Refresh page after 2-3 minutes.
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
