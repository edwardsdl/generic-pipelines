#!/usr/bin/env sh

/stages/01_clone.sh \
 && /stages/02_build.sh \
 && /stages/03_test.sh \
 && /stages/04_archive.sh \
 && /stages/05_deploy.sh
