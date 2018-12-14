package main

import (
	"officialwebsite/controllers"
	_ "officialwebsite/routers"

	"github.com/astaxie/beego"
)

func main() {
	beego.ErrorController(&controllers.ErrorController{})
	beego.Run()
}