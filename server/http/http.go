package httpserver

import (
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
)

type httpServer struct {
	server *echo.Echo
}

// New creates a new echo instance
func New() *httpServer {
	e := echo.New()

	// Middleware
	e.Use(middleware.Logger())
	e.Use(middleware.Recover())

	return &httpServer{
		server: e,
	}
}

// Start starts the server
func (s *httpServer) Start(port string) error {
	return s.server.Start(port)
}

// Stop stops the server
func (s *httpServer) Stop() error {
	return s.server.Close()
}

// AddRoute adds a new route to the server
func (s *httpServer) AddRoute(method, path string, handler echo.HandlerFunc) {
	s.server.Add(method, path, handler)
}
