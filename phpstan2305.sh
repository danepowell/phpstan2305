#!/bin/bash

git clone git@github.com:danepowell/phpstan2305.git
cd phpstan2305
composer install
./vendor/bin/phpstan analyse --configuration=phpstan.neon vendor/acquia/blt/src/Composer
