package controllers

import (
	"github.com/astaxie/beego"
)

type WxController struct {
	beego.Controller
}

func (this *WxController) Bind() {
	this.TplName = "wx/bind.tpl"
}
