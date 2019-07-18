#!/bin/bash

git clone git@github.com:danepowell/phpstan2305.git
cd phpstan2305
composer install
wget https://raw.githubusercontent.com/acquia/orca/develop/src/Task/DeprecatedCodeScanner/phpstan.neon
./vendor/bin/phpstan analyse --configuration=phpstan.neon vendor/acquia/blt/src/Composer
