# go-skeleton

## Features
1. Rest API Handler (Soon)
2. Kafka Worker (Soon)
3. Postgres DB (Soon)
4. Redis (Soon)
5. HTTP Client (Soon)
6. GRPC Server (Soon)
7. GRPC Client (Soon)

## Project Structure
```
├── cmd
│   ├── config.go
│   └── main.go
├── config
│   └── config.go
├── database
│   ├── migrations
│   └── seeds
├── docs
│   └── api
│       ├── docs.go
│       ├── swagger.json
│       └── swagger.yaml
├── internal
│   ├── adapters
│   │   ├── inbound
│   │   │   └── inbound.go
│   │   └── outbound
│   │       └── outbound.go
│   ├── common
│   │   └── common.go
│   ├── core
│   │   ├── repositories
│   │   │   └── repositories.go
│   │   └── services
│   │       └── services.go
│   └── models
│       └── model.go
├── pkg
│   ├── db
│   │   └── db_client.go
│   └── remote
│       └── http_client.go
├── server
│   ├── http
│   │   └── http.go
│   └── kafka
│       └── kafka.go
├── Makefile
├── README.md
├── go.mod
└── go.sum
```
### cmd
### config
### docs
### database
### internal
### pkg
### server

## How To Use
### Run Server
### Run Database Migration
### Generate API doc