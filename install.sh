#!/bin/sh
# Install Whale Superpowers skills into the user skill root.
set -e

DEST="${WHALE_SKILLS_DIR:-$HOME/.whale/skills}"
SRC="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)/skills"

if [ ! -d "$SRC" ]; then
  echo "skills/ directory not found next to this script." >&2
  exit 1
fi

mkdir -p "$DEST"

for skill in "$SRC"/*; do
  [ -d "$skill" ] || continue
  name="$(basename "$skill")"
  if [ "${1:-}" = "--link" ]; then
    if [ -e "$DEST/$name" ] || [ -L "$DEST/$name" ]; then
      echo "skip     $name (already present in $DEST — remove it manually to re-link)"
      continue
    fi
    ln -s "$skill" "$DEST/$name"
    echo "linked   $name"
  else
    cp -R "$skill" "$DEST/$name"
    echo "installed $name"
  fi
done

echo "Done. Skills installed in $DEST"
echo "Restart your Whale session to discover them."
