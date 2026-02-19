#!/bin/bash
# build.sh — injecte les variables d'environnement Vercel dans index.html

mkdir -p dist

# Copie tous les fichiers statiques
cp index.html dist/index.html
cp manifest.json dist/manifest.json 2>/dev/null || true
cp -r icons dist/ 2>/dev/null || true
cp -r screenshots dist/ 2>/dev/null || true

# Injecte les clés Supabase dans le HTML
# Les placeholders %%SUPABASE_URL%% et %%SUPABASE_KEY%% sont remplacés
# par les vraies valeurs issues des variables d'environnement Vercel
sed -i "s|%%SUPABASE_URL%%|${SUPABASE_URL}|g" dist/index.html
sed -i "s|%%SUPABASE_KEY%%|${SUPABASE_KEY}|g" dist/index.html

echo "✅ Build terminé — clés injectées"
