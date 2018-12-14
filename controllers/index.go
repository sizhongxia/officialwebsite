package controllers

import (
	"officialwebsite/utils"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
)

type IndexController struct {
	beego.Controller
}

func (this *IndexController) Index() {
	this.Data["currentMenu"] = "index"
	// 请求网站信息
	err, res := utils.FetchPost(nil, "siteinfo")
	if err != nil {
		logs.Error(err)
		this.Data["message"] = "请求接口错误！"
		this.TplName = "error/index.tpl"
		return
	}
	rsa := res.(map[string]interface{})
	value, ok := rsa["code"].(float64)
	if !ok {
		this.Data["message"] = "服务器响应数据错误..."
		this.TplName = "error/index.tpl"
		return
	}
	if value != 200 {
		this.Data["message"] = rsa["message"].(string)
		this.TplName = "error/index.tpl"
		return
	}
	rsd := rsa["data"].(map[string]interface{})
	this.Data["siteinfo"] = rsd
	this.TplName = "index.tpl"
}

func (this *IndexController) News() {
	this.Data["currentMenu"] = "news"
	this.TplName = "news.tpl"
}

func (this *IndexController) NewsDetail() {
	this.Data["currentMenu"] = "news"

	this.TplName = "newsdetail.tpl"
}

func (this *IndexController) Solution() {
	this.Data["currentMenu"] = "solution"
	this.TplName = "solution.tpl"
}

func (this *IndexController) SolutionDetail() {
	this.Data["currentMenu"] = "solution"
	this.TplName = "solutiondetail.tpl"
}

func (this *IndexController) Image() {
	this.Data["currentMenu"] = ""
	this.TplName = "image.tpl"
}
