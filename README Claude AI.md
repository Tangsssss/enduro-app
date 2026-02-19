# ENDURO — Race Performance Tracker

PWA de suivi de performances trail, running et triathlon.

## Structure du projet

```
enduro/
├── index.html          ← L'application complète
├── manifest.json       ← Config PWA (installation mobile)
├── vercel.json         ← Config hébergement Vercel
├── icons/
│   ├── icon.svg        ← Source SVG du logo
│   ├── icon-72.png     ← Générer depuis icon.svg
│   ├── icon-96.png
│   ├── icon-128.png
│   ├── icon-144.png
│   ├── icon-152.png
│   ├── icon-192.png
│   ├── icon-384.png
│   └── icon-512.png
└── screenshots/        ← Optionnel (aperçus dans les stores)
    ├── feed.png
    └── race.png
```

## Générer les icônes PNG depuis le SVG

### Option A — En ligne (le plus simple)
1. Va sur **https://realfavicongenerator.net**
2. Uploade le fichier `icons/icon.svg`
3. Télécharge le pack → extrais les PNG dans le dossier `icons/`

### Option B — Avec Squoosh ou SVGOMG
1. Va sur **https://squoosh.app**
2. Ouvre `icon.svg` → redimensionne aux tailles voulues → télécharge en PNG

## Déploiement Vercel

1. Push ce dossier sur GitHub
2. Va sur vercel.com → "New Project" → sélectionne le repo
3. Clique "Deploy" — aucune configuration supplémentaire requise

## Variables d'environnement (après intégration Supabase)

Dans Vercel → Settings → Environment Variables :
```
SUPABASE_URL=https://xxxx.supabase.co
SUPABASE_ANON_KEY=eyJxxx...
ANTHROPIC_API_KEY=sk-ant-xxx...   ← uniquement si OCR activé
```

## Stack
- **Frontend** : HTML/CSS/JS vanilla (aucune dépendance)
- **Base de données** : Supabase (PostgreSQL)
- **Hébergement** : Vercel
- **Cartes** : Leaflet.js (CDN)
- **OCR** : Claude Vision API (Anthropic)
