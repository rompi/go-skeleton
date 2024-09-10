run:
	go run cmd/*.go

build:
	go build -o cafetaria-auth cmd/*.go

docker:
	docker build --platform linux/amd64 -t cafetaria-auth:0.0.1 .

swag:
	~/go/bin/swag init -g cmd/main.go --output docs/api

test:
	go test -cover -v ./...

migrate_new:
	goose -dir="./database/migrations" create $(name) sql

migrate_up:
	goose -dir="./database/migrations" postgres "postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_CAFE_DB}?search_path=${POSTGRES_CAFE_USER_SCHEME}" up

migrate_status:
	goose -dir="./database/migrations" postgres "postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_CAFE_DB}?search_path=${POSTGRES_CAFE_USER_SCHEME}" status

migrate_version:
	goose -dir="./database/migrations" postgres "postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_CAFE_DB}?search_path=${POSTGRES_CAFE_USER_SCHEME}" version

seed_new:
	goose -dir="./database/seeds" create $(name) sql

seed_up:
	goose -dir="./database/seeds" -no-versioning postgres "postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_CAFE_DB}?search_path=${POSTGRES_CAFE_USER_SCHEME}" up

seed_status:
	goose -dir="./database/seeds" -no-versioning postgres "postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_CAFE_DB}?search_path=${POSTGRES_CAFE_USER_SCHEME}" status

seed_version:
	goose -dir="./database/seeds" -no-versioning postgres "postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_CAFE_DB}?search_path=${POSTGRES_CAFE_USER_SCHEME}" version
