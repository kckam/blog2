#!/bin/sh
# activate maintenance mode
php artisan down
# update source code
git pull git pull https://kamkokchin:Emperor3347289^^@github.com/kckam/blog2.git dev
git checkout dev
# update PHP dependencies
php composer.phar install --no-interaction --no-dev --prefer-dist
# --no-interaction Do not ask any interactive question
# --no-dev  Disables installation of require-dev packages.
# --prefer-dist  Forces installation from package dist even for dev versions.
# update database
php artisan migrate --force
# --force  Required to run when in production.
# stop maintenance mode
php artisan up