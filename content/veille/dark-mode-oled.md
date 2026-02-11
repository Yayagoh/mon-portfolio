---
title: "Dark Mode vs consommation OLED"
date: 2026-02-11
draft: false
---

<div class="grand-format">

# Dark Mode et consommation OLED — mythe ou réalité ?

**Résumé** — Le Dark Mode peut réduire la consommation d'écran sur certains écrans (OLED) mais l'effet dépend fortement de la UI, du contenu affiché et de la proportion de pixels éteints.

## Contexte

Sur les écrans OLED, chaque pixel émet sa propre lumière. Afficher du noir signifie éteindre les pixels, entraînant des économies d'énergie. En revanche, sur LCD (rétroéclairé) le Dark Mode n'éteint pas le rétroéclairage, l'impact est donc minime.

## Mesures et résultat pratiques

- Variables importantes : taux de couverture sombre, luminosité, fréquence d'usage, type d'écran.
- Étude de cas : apps à fort contenu blanc (pages longues) peuvent économiser jusqu'à 30% d'énergie écran sur OLED si le fond est majoritairement noir. Sur pages mixtes, gain négligeable.

### Bonnes pratiques d'éco-conception liées au mode sombre

1. Proposer un vrai thème sombre (noir profond #000 ou near-black) plutôt qu'un gris clair.
2. Maintenir contrastes WCAG pour lisibilité.
3. Ne pas forcer le mode sombre pour tous les utilisateurs — respecter préférences système (`prefers-color-scheme`).

```css
@media (prefers-color-scheme: dark) {
  :root { color-scheme: dark; }
  body { background: #000; color: #e6e6e6; }
}
```
Impact Green IT: utiliser `prefers-color-scheme` permet à l'OS de choisir le thème adapté, évitant des scripts ou chargements supplémentaires ; un vrai noir sur OLED peut économiser de l'énergie écran comparé à thèmes clairs.

## Recommandation

Testez les interfaces sur appareils représentatifs : mesurer la consommation écran (si possible) et prioriser les pages à fort usage pour un thème sombre optimisé.

## Sources

- Mesures indépendantes et guides d'Apple/Google sur Dark Mode.

</div>
