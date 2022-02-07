#!/bin/bash
echo "Regenerating Brewfile..."
brew bundle dump \
  --mas \
  --force \
  --describe

echo "Done!"
echo
echo "----------------------------------"
git diff -U1 Brewfile
echo "----------------------------------"
echo
echo "Don't forget to review and clean up file before committing!"
