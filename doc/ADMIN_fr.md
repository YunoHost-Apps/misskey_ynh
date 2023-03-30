### Points importants à lire avant l'installation

- Le premier compte créé sera un utilisateur administrateur et disposera de tous les droits d'administrateur.

Utiliser *screen* en cas de déconnexion

``` 
sudo apt-get install screen
screen
sudo yunohost app install https://github.com/YunoHost-Apps/misskey_ynh.git
```
Récupérer après déconnexion :
```
screen -d
screen -r
```
