#!/usr/bin/env bash
# Crea las etiquetas y las tareas iniciales en el repositorio actual.
# Requisitos: tener instalada la herramienta «gh» (GitHub CLI) y haber iniciado sesión: gh auth login
set -e
gh label create tarea      --color 1a7f5a --description "Tarea del tablero"        2>/dev/null || true
gh label create incidencia --color d73a4a --description "Fallo encontrado al probar" 2>/dev/null || true
gh label create "sprint-1" --color fde68a 2>/dev/null || true
gh label create "sprint-2" --color bfdbfe 2>/dev/null || true
gh label create "sprint-3" --color a7f3d0 2>/dev/null || true
tail -n +2 "$(dirname "$0")/tareas-iniciales.csv" | while IFS=, read -r sprint titulo resto; do
  titulo="${titulo//\"/}"; resto="${resto//\"/}"
  gh issue create --title "[Tarea] $titulo" --body "$resto" --label "tarea,sprint-$sprint"
done
echo "Listo. Añade las incidencias al proyecto desde la pestaña Projects."
