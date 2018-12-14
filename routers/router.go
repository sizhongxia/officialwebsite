package routers

import (
	"officialwebsite/controllers"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/context"
)

func init() {
	// 做跳转
	beego.Get("/index", func(ctx *context.Context) {
		ctx.Redirect(302, "/")
	})

	beego.Router("/", &controllers.IndexController{}, "*:Index")
	beego.Router("/news", &controllers.IndexController{}, "*:News")

}
