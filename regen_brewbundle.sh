#!/bin/bash
echo "Regenerating Brewfile..."
brew bundle dump \
  --mas \
  --force \
  --describe

echo "Done! Don't forget to review and clean up file before committing!"
