#!/usr/bin/env bash
sudo docker-compose exec --user=laradock workspace bash -c "composer install"
sudo docker-compose exec --user=laradock workspace bash -c "npm i"
sudo docker-compose exec --user=laradock workspace bash -c "php artisan db:uuid-extension"
sudo docker-compose exec --user=laradock workspace bash -c "php artisan migrate --seed"
sudo docker-compose exec --user=laradock workspace bash -c "php artisan upload_images:link"
sudo docker-compose exec --user=laradock workspace bash -c "php artisan upload_sounds:link"
