package config

var Config struct {
	PgUser     string `env:"POSTGRES_USER,required"`
	PgPassword string `env:"POSTGRES_PASSWORD,required"`
	PgHost     string `env:"POSTGRES_HOST,required"`
	PgPort     int    `env:"POSTGRES_PORT" default:"5432"`
	PgDb       string `env:"POSTGRES_CAFE_DB,required"`
	PgScheme   string `env:"POSTGRES_CAFE_USER_SCHEME,required"`

	AppPort    string `env:"APP_PORT" default:"5000"`
	AppEnv     string `env:"APP_ENV" default:"development"`
	AppVersion string `env:"APP_Version" default:"0.0.1"`
}
