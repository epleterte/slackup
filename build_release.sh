#!/bin/bash -ue
# Lots of good info here: http://peterdowns.com/posts/first-time-with-pypi.html

[[ $# -eq 0 ]] && { echo "No version given - it should match what's in your setup.py"; exit 1; }
version="$1"

git tag ${version} -m "Tag version ${version} for archiving"
git tag | grep -q ${version} || { echo "Could not create tag...?"; exit 1; }

echo "Pushing tag upstream"
git push --tags origin master

echo "Push to PyPi"
python setup.py sdist upload -r pypi

