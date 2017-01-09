package main

import (
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/pborman/uuid"
)

func main() {
	r := gin.Default()

	r.GET("/", func(c *gin.Context) {
		c.String(http.StatusOK, "User all around you wuhus!! "+uuid.New())
	})

	r.Run(":80")
}
