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
	beego.Router("/news/:id", &controllers.IndexController{}, "*:NewsDetail")

	beego.Router("/solution", &controllers.IndexController{}, "*:Solution")
	beego.Router("/solution/:id", &controllers.IndexController{}, "*:SolutionDetail")

	beego.Router("/aboutus", &controllers.IndexController{}, "*:AboutUs")
	// beego.Router("/image", &controllers.IndexController{}, "*:Image")

	beego.Router("/wx/bind", &controllers.WxController{}, "*:Bind")
	beego.Router("/wx/toBind", &controllers.WxController{}, "*:ToBind")

	beego.Router("/wx/zhyz/alarm/detail", &controllers.WxController{}, "*:ZhyzAlarmDetail")

}
