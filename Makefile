setup:
	@make build
	@make up 
	@make composer-update
build:
	docker-compose build --no-cache --force-rm
stop:
	docker-compose stop
up:
	docker-compose up -d
composer-update:
	docker exec cigniter-docker bash -c "composer update"
data:
	docker exec cigniter-docker bash -c "php artisan migrate"
	docker exec cigniter-docker bash -c "php artisan db:seed"