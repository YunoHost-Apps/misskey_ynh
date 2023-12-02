## Points importants à lire avant l'installation

1. **Misskey** nécessite un **nom de domaine** dédié, par exemple : misskey.domain.tld
2. Il est impossible de changer le nom de domaine après l'installation.
3. L'utilisateur sélectionné pendant l'installation sera créé automatiquement dans Misskey avec des droits d'administration.

## Utilisation de *screen* en cas de déconnexion

L'installation de Misskey peut être longue, selon les performances du serveur. Pour éviter que le processus soit interrompu par une déconnexion, on peut utiliser `screen`.

```
$ sudo apt-get install screen
$ screen
$ sudo yunohost app install misskey
```
Récupérer l'installation après une deconnection :
```
$ screen -d
$ screen -r
```

