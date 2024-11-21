#!/bin/sh
set -e
npm version "$1"
TAG=$(git tag --points-at HEAD)
git push origin "$TAG"
git push