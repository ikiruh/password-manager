DB_URL="postgres://postgres:root@localhost:5432/password_manager?sslmode=disable"

migrate.up:
	migrate -path migrations -database "$(DB_URL)" up

migrate.down:
	migrate -path migrations -database "$(DB_URL)" down