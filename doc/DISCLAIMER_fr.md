### Points importants à lire avant l'installation

- *Misskey* nécessite un domaine racine dédié, par ex. `misskey.domain.tld`
- En raison de la dépendance de Cypress, *Misskey* ne fonctionne que sur les machines à processeur 64 bits.
- *Misskey* peut prendre un certain temps à installer (plus de 30 minutes). Alors prenez un peu de temps et prenez un café.
- Si l'installation à partir de la ligne de commande, l'utilisation de l'écran est réenregistrée pour éviter la déconnexion. Voir ci-dessous.
- Après l'installation, la première page peut prendre du temps à charger et peut afficher une erreur de délai d'attente. Donnez-lui le temps de se préparer pour vous. Actualiser la page après 2-3 minutes.
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
