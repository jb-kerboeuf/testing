#!/bin/bash
# Create Release
git config --global user.email "${GIT_EMAIL}"
git config --global user.name "${GIT_NAME}"
git config --global push.default simple
git remote add origin https://${GH_TOKEN}@github.com/${TRAVIS_REPO_SLUG}.git
git fetch --tags
git tag $GIT_TAG -a -m "BNP Crédit Immobilier"
git push origin releases && git push origin releases --tags # peut-être a modifier (--tags)
ls -aR