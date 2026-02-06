---
title: "Projet 1"
date: 2023-12-10
draft: false
tags: ["Projet"]
---

## Déploiement d'une Infrastructure Web Sécurisée et Automatisée à Domicile

### Le Besoin

Dans le cadre de mon BTS SIO, j'ai souhaité réaliser un portfolio souverain, hébergé chez moi, totalement maîtrisé et sécurisé. Mon objectif était de rendre ce site accessible partout dans le monde, tout en évitant les solutions d'hébergement payantes ou dépendantes de fournisseurs tiers.

---

### Architecture Réseau

Pour répondre à ce besoin, j'ai conçu une infrastructure typique de l'administration système et réseaux :

- **Création d'une Machine Virtuelle (VM) Linux**  
  J'ai déployé une VM sous Ubuntu Server sur mon réseau local, garantissant ainsi l'isolation de l'environnement d'hébergement et une meilleure gestion des ressources.

- **Installation et Configuration de Nginx**  
  J'ai choisi Nginx comme serveur web pour sa légèreté et ses performances. Il sert exclusivement des fichiers statiques générés par le framework Hugo.

- **Utilisation du Framework Hugo avec le Thème PaperMod**  
  Hugo permet de générer des sites statiques très rapidement. Le thème PaperMod offre une présentation moderne et professionnelle ainsi qu'une excellente rapidité de chargement.

---

### Sécurité et Gestion Réseau

- **Administration sécurisée via VPN WireGuard**  
  Afin d'éviter toute exposition de ports critiques (comme SSH/22) sur Internet, j'ai mis en place un tunnel VPN avec WireGuard à l'aide de PiVPN. Cela me permet d'administrer la machine de manière sécurisée, où que je sois.

- **Configuration du NAT/PAT sur la Livebox**  
  Le port **UDP 51820** est ouvert et redirigé vers la VM pour le VPN WireGuard. Seul le port **TCP 80** est exposé pour l'accès HTTP au site web.

- **Gestion du DNS Dynamique avec DuckDNS**  
  Ma connexion domestique dispose d'une IP publique dynamique. Pour garantir l'accessibilité permanente, j'ai configuré un domaine chez DuckDNS, qui se met à jour avec mon IP à chaque changement.

---

### Automatisation (DevOps)

- **Script de déploiement en PowerShell**  
  Pour simplifier la mise à jour du contenu du site, j'ai développé un script PowerShell qui automatise toutes les opérations de déploiement :

  - Génération du site via Hugo
  - Transfert automatisé des fichiers générés sur la VM via SCP
  - Exécution de commandes distantes via SSH

- **Authentification SSH par Clé (ed25519)**  
  Pour sécuriser davantage les accès administratifs automatisés, l'authentification se fait uniquement par clés SSH “ed25519” — supprimant ainsi tout mot de passe du processus.

---

## Conclusion

Ce projet m'a permis de mettre en œuvre l'ensemble de la chaîne de déploiement d'une infrastructure web moderne : de la virtualisation à la gestion réseau avancée (VPN, NAT/PAT, DNS dynamique), en passant par la sécurisation des accès et l'automatisation des mises en ligne. Il constitue une expérience concrète et complète des compétences exigées en BTS SIO, tout en répondant à un besoin réel de souveraineté numérique.

---
