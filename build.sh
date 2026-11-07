#!/usr/bin/env bash
#
# build.sh — builds the Sayan Mandal portfolio into ./dist/
#
#   Usage: ./build.sh
#
# Zero dependencies: pure bash + coreutils. No npm, no Node required.
# Output (dist/) is 100% static — deploy anywhere (Vercel, Netlify, GitHub
# Pages, Nginx, S3, ...).
#
# Mirrors ~/workspace/rajdeep-portfolio/build.sh (same pipeline, 11 Oct 2026).
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SRC="$PROJECT_DIR/src"
PUBLIC="$PROJECT_DIR/public"
DIST="$PROJECT_DIR/dist"

echo "🔨 Building sayan-website → $DIST"

# 1. Clean and recreate dist
rm -rf "$DIST"
mkdir -p "$DIST/css" "$DIST/js" "$DIST/images"

# 2. Copy site source
cp "$SRC/index.html" "$DIST/index.html"
cp "$SRC/css/"*.css "$DIST/css/"
cp "$SRC/js/"*.js "$DIST/js/"

# 3. Copy public assets (images) — sayan-profile.jpg is THE swappable asset:
#    replace public/images/sayan-profile.jpg and rebuild (or drop it straight into dist/)
if [ -d "$PUBLIC/images" ]; then
  cp "$PUBLIC/images/"*.jpg "$PUBLIC/images/"*.jpeg "$PUBLIC/images/"*.png "$PUBLIC/images/"*.webp "$PUBLIC/images/"*.gif "$DIST/images/" 2>/dev/null || true
fi

# 4. Validate: required files present
for f in "index.html" "css/styles.css" "js/main.js" "images/sayan-profile.jpg"; do
  if [ ! -f "$DIST/$f" ]; then
    echo "❌ BUILD FAILED: missing dist/$f"
    exit 1
  fi
done

# 5. Basic sanity: HTML not empty
if [ ! -s "$DIST/index.html" ]; then
  echo "❌ BUILD FAILED: dist/index.html is empty"
  exit 1
fi

echo "✅ Build successful. Deployable output in: $DIST"
echo "   Files: $(find "$DIST" -type f | wc -l) | Size: $(du -sh "$DIST" | cut -f1)"
echo ""
echo "   ⚠️  REMINDER: public/images/sayan-profile.jpg is currently a PLACEHOLDER"
echo "       (navy 'PHOTO COMING SOON' graphic). Replace it with Sayan's real"
echo "       photo (same filename) and re-run ./build.sh before going live."
echo ""
echo "   Preview locally:  python3 -m http.server 8080 --directory \"$DIST\""
