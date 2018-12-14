package controllers

import (
	"errors"
	"officialwebsite/utils"

	"github.com/astaxie/beego"
)

type IndexController struct {
	beego.Controller
}

type RequestParam struct {
	Id   string `json:"id"`
	Page string `json:"page"`
	Size string `json:"size"`
}

func SiteInfo() (error, map[string]interface{}) {
	// 请求网站信息
	err, res := utils.FetchPost(nil, "siteinfo")
	if err != nil {
		return errors.New("服务器请求错误!"), nil
	}
	rsa := res.(map[string]interface{})
	value, ok := rsa["code"].(float64)
	if !ok {
		return errors.New("服务器响应数据错误!"), nil
	}
	if value != 200 {
		return errors.New(rsa["message"].(string)), nil
	}
	return nil, rsa["data"].(map[string]interface{})
}

func (this *IndexController) Index() {
	this.Data["currentMenu"] = "index"

	param := RequestParam{}
	param.Page = "1"
	param.Size = "3"
	err, res := utils.FetchPost(&param, "news")
	if err != nil {
		this.Abort("404")
	}
	rsa := res.(map[string]interface{})
	value, ok := rsa["code"].(float64)
	if !ok {
		this.Abort("404")
	}
	if value != 200 {
		this.Abort("404")
	}
	this.Data["newses"] = rsa["data"].(map[string]interface{})

	err2, res2 := utils.FetchPost(nil, "news/chosen")
	if err2 != nil {
		this.Abort("404")
	}
	rsa2 := res2.(map[string]interface{})
	value2, ok2 := rsa["code"].(float64)
	if !ok2 {
		this.Abort("404")
	}
	if value2 != 200 {
		this.Abort("404")
	}
	this.Data["newschosen"] = rsa2["data"].(map[string]interface{})

	err3, siteinfo := SiteInfo()
	if err != nil {
		this.Data["message"] = err3.Error()
		this.TplName = "error/index.tpl"
		return
	}
	this.Data["siteinfo"] = siteinfo
	this.TplName = "index.tpl"
}

func (this *IndexController) News() {
	this.Data["currentMenu"] = "news"

	param := RequestParam{}
	param.Page = this.GetString("page")
	param.Size = this.GetString("size")

	err, res := utils.FetchPost(&param, "news")
	if err != nil {
		this.Abort("404")
	}
	rsa := res.(map[string]interface{})
	value, ok := rsa["code"].(float64)
	if !ok {
		this.Abort("404")
	}
	if value != 200 {
		this.Abort("404")
	}
	this.Data["newses"] = rsa["data"].(map[string]interface{})

	err2, siteinfo := SiteInfo()
	if err != nil {
		this.Data["message"] = err2.Error()
		this.TplName = "error/index.tpl"
		return
	}
	this.Data["siteinfo"] = siteinfo
	this.TplName = "news.tpl"
}

// 新闻详情页面
func (this *IndexController) NewsDetail() {
	this.Data["currentMenu"] = "news"

	param := RequestParam{}
	param.Id = this.Ctx.Input.Param(":id")

	err, res := utils.FetchPost(&param, "news/detail")
	if err != nil {
		this.Abort("404")
	}
	rsa := res.(map[string]interface{})
	value, ok := rsa["code"].(float64)
	if !ok {
		this.Abort("404")
	}
	if value != 200 {
		this.Abort("404")
	}
	this.Data["news"] = rsa["data"].(map[string]interface{})

	err2, siteinfo := SiteInfo()
	if err != nil {
		this.Data["message"] = err2.Error()
		this.TplName = "error/index.tpl"
		return
	}
	this.Data["siteinfo"] = siteinfo
	this.TplName = "newsdetail.tpl"
}

func (this *IndexController) Solution() {
	this.Data["currentMenu"] = "solution"
	err, siteinfo := SiteInfo()
	if err != nil {
		this.Data["message"] = err.Error()
		this.TplName = "error/index.tpl"
		return
	}
	this.Data["siteinfo"] = siteinfo
	this.TplName = "solution.tpl"
}

func (this *IndexController) SolutionDetail() {
	this.Data["currentMenu"] = "solution"
	err, siteinfo := SiteInfo()
	if err != nil {
		this.Data["message"] = err.Error()
		this.TplName = "error/index.tpl"
		return
	}
	this.Data["siteinfo"] = siteinfo
	this.TplName = "solutiondetail.tpl"
}

func (this *IndexController) Image() {
	this.Data["currentMenu"] = ""
	err, siteinfo := SiteInfo()
	if err != nil {
		this.Data["message"] = err.Error()
		this.TplName = "error/index.tpl"
		return
	}
	this.Data["siteinfo"] = siteinfo
	this.TplName = "image.tpl"
}
