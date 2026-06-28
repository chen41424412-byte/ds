#!/bin/bash
# ? Mac ???????? Cydia ????
# ??: cd /Volumes/2T/Code/cydia-repo && bash update-repo.sh

cd "$(dirname "$0")"

if ! command -v dpkg-scanpackages &> /dev/null; then
    echo "???? dpkg: brew install dpkg"
    exit 1
fi

echo "?? debs ??..."
dpkg-scanpackages debs /dev/null > Packages

echo "?? Packages..."
gzip -c9 Packages > Packages.gz

echo "????? git add . && git commit && git push"
echo ""
echo "Cydia ???: https://?????.github.io/cydia-repo/"
