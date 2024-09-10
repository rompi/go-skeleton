package main

import (
	"fmt"
	"log"

	"github.com/joho/godotenv"
	"github.com/rompi/go-skeleton/config"
	"go-simpler.org/env"
)

func loadEnv() {
	err := godotenv.Load()
	if err != nil {
		log.Fatal("error loading .env file")
	}

	if err := env.Load(&config.Config, nil); err != nil {
		fmt.Println(err)
	}
}
