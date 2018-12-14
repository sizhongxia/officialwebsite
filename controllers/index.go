package controllers

import (
	"github.com/astaxie/beego"
)

type IndexController struct {
	beego.Controller
}

func (this *IndexController) Index() {
	this.Data["currentMenu"] = "index"
	this.TplName = "index.tpl"
}

func (this *IndexController) News() {
	this.Data["currentMenu"] = "news"
	this.TplName = "news.tpl"
}
