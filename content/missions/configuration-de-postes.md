---
title: "Industrialisation et Déploiement de Postes"
date: 2025-01-01
draft: false
---

## Contexte

Dans le cadre du renouvellement du parc informatique ou de l'arrivée de nouveaux collaborateurs, il est essentiel de mettre à disposition rapidement des postes de travail opérationnels, configurés de manière homogène et sécurisée.

## Technique Utilisée

Pour garantir une installation rapide et conforme aux standards de l'entreprise, une image disque "Master" (préparée en amont par l'équipe infrastructure) est mise à disposition. Cette image inclut :
- Le système d'exploitation préconfiguré Windows 11
- Les logiciels standards utilisés par l'entreprise
- Les paramètres de sécurité de base

## Étapes de la Mission

1. **Récupération et Utilisation du Master**
   - Récupération de l'image Master fournie par l'équipe dédiée à sa création.
   - Préparation du poste cible au démarrage (vérification du matériel, réglage du BIOS si nécessaire).

2. **Descente de l'Image sur les Postes Cibles**
   - Démarrage des PC neufs ou réinstallés depuis un support de déploiement (clé USB bootable)
   - Contrôle de la bonne installation du système et des applications.

3. **Intégration au Domaine (Azure Active Directory)**
   - Ajout du poste au domaine de l'entreprise
   - Attribution des droits et des stratégies de groupe adaptés

4. **Personnalisation Finale**
   - Renommage du poste selon la convention interne
   - Installation éventuelle de logiciels spécifiques à l'utilisateur ou au service
   - Configuration des paramètres personnalisés (profils, imprimantes, lecteurs réseau)

## Compétences SIO Mobilisées

- **Exploiter des services** : utilisation d'outils d'imagerie, intégration dans Active Directory, assistance aux utilisateurs.
- **Gérer les configurations** : uniformisation du parc, application des bonnes pratiques de configuration selon les politiques internes, automatisation des tâches répétitives.

---
