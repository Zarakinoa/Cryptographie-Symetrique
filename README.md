# Cryptographie symétrique

[![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)  [![forthebadge](http://forthebadge.com/images/badges/powered-by-electricity.svg)](http://forthebadge.com)

Ce projet à été réalisé en C, il consiste dans un premier temp en l'implémentation d'un générateur de type Geffe pour le chiffrement à flot, afin de pouvoir simuler une attaque par corrélation.
Dans un second temp, il consiste en l'implémentation d'un générateur de type Feistel, afin ...


## Pour commencer

Veuillez suivre les étapes qui suivent une par une, qui vous permettrons d'installer les utilitaires nécessaires au projet, de compilé le projet et de l'éxécuté correctement.

### Pré-requis

Pour le bon fonctionnement du programme il est impératifs de disposer des outils qui suivent :
- gcc 9.2.1 (ou version antérieur) 

```
sudo apt-get install gcc
```

- logiciel GNU Make 

```
sudo apt-get install build-essential
```


### Installation

* Pour installer le projet complet via git il faut entrer dans un terminal la commande git suivante :

```
git clone https://github.com/Zarakinoa/Cryptographie-Symetrique.git
``` 

>Si vous ne disposez pas de git, utiliser le lien qui suit => [Télécharger git](https://gist.github.com/derhuerst/1b15ff4652a867391f03)

* Si vous disposez de l'archive du projet, veuillez le décompréssé avec cette commande :

```
tar -cvf CryptographieSymetrique.tar CryptographieSymetrique/
```

## Démarrage

* Pour lancer le projet, vous devez vous rendre dans le dossier de celui-ci :

```
cd CryptographieSymetrique/
```
    
* Une fois à l'intérieur, éxecuter le logiciel GNU Make qui permettra de compiler la permiere partie (les arguments sont à definir dans le Makefile :

```
make geffe
```
* et pour la deuxieme partie :
```
make feistel
```



## Fabriqué avec

Pour le dévellopement de notre projet nous avons utiliser les ressources suivantes :

* [Visual Studio Code](https://code.visualstudio.com/) - Editeur de textes

## Auteurs

Voici la liste des personnes qui ont réalisés ce projet :

* **Salsabil Dafrane** _alias_ [@Salsa](https://github.com/salsabildf)
* **Théo Lefebvre** _alias_ [@Cobb](https://github.com/Zarakinoa)
* **Soufiane Chikar** _alias_ [@Ysejal](https://github.com/Ysejal)

