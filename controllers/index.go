package controllers

import (
	"errors"
	"officialwebsite/utils"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/logs"
)

type IndexController struct {
	beego.Controller
}

type RequestParam struct {
	Id   string `json:"id"`
	Page string `json:"page"`
	Size string `json:"size"`
	Type string `json:"type"`
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

	// 获取首页新闻资讯
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
		logs.Error(rsa["message"].(string))
		this.Abort("404")
	}
	this.Data["newses"] = rsa["data"].(map[string]interface{})

	// 首页精选新闻
	err2, res2 := utils.FetchPost(nil, "news/chosen")
	if err2 != nil {
		this.Abort("404")
	}
	rsa2 := res2.(map[string]interface{})
	value2, ok2 := rsa2["code"].(float64)
	if !ok2 {
		this.Abort("404")
	}
	if value2 != 200 {
		logs.Error(rsa2["message"].(string))
		this.Abort("404")
	}
	this.Data["newschosen"] = rsa2["data"].(map[string]interface{})

	// 站点信息
	err3, siteinfo := SiteInfo()
	if err != nil {
		this.Data["message"] = err3.Error()
		this.TplName = "error/index.tpl"
		return
	}
	this.Data["siteinfo"] = siteinfo

	param = RequestParam{}
	param.Page = "1"
	param.Size = "3"
	param.Type = "PC"
	// 首页Banner轮播
	err4, res4 := utils.FetchPost(&param, "banners")
	if err4 != nil {
		this.Abort("404")
	}
	rsa4 := res4.(map[string]interface{})
	value4, ok4 := rsa4["code"].(float64)
	if !ok4 {
		this.Abort("404")
	}
	if value4 != 200 {
		logs.Error(rsa4["message"].(string))
		this.Abort("404")
		return
	}
	this.Data["banners"] = rsa4["data"].(map[string]interface{})

	param = RequestParam{}
	param.Page = "1"
	param.Size = "5"
	// 产品信息
	err5, res5 := utils.FetchPost(&param, "products")
	if err5 != nil {
		this.Abort("404")
	}
	rsa5 := res5.(map[string]interface{})
	value5, ok5 := rsa5["code"].(float64)
	if !ok5 {
		this.Abort("404")
	}
	if value5 != 200 {
		logs.Error(rsa5["message"].(string))
		this.Abort("404")
		return
	}
	this.Data["products"] = rsa5["data"].(map[string]interface{})

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

	param = RequestParam{}
	param.Page = "1"
	param.Size = "5"
	// 产品信息
	err5, res5 := utils.FetchPost(&param, "products")
	if err5 != nil {
		this.Abort("404")
	}
	rsa5 := res5.(map[string]interface{})
	value5, ok5 := rsa5["code"].(float64)
	if !ok5 {
		this.Abort("404")
	}
	if value5 != 200 {
		logs.Error(rsa5["message"].(string))
		this.Abort("404")
		return
	}
	this.Data["products"] = rsa5["data"].(map[string]interface{})
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

	param = RequestParam{}
	param.Page = "1"
	param.Size = "5"
	// 产品信息
	err5, res5 := utils.FetchPost(&param, "products")
	if err5 != nil {
		this.Abort("404")
	}
	rsa5 := res5.(map[string]interface{})
	value5, ok5 := rsa5["code"].(float64)
	if !ok5 {
		this.Abort("404")
	}
	if value5 != 200 {
		logs.Error(rsa5["message"].(string))
		this.Abort("404")
		return
	}
	this.Data["products"] = rsa5["data"].(map[string]interface{})
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

	param := RequestParam{}
	param.Page = "1"
	param.Size = "5"
	// 产品信息
	err5, res5 := utils.FetchPost(&param, "products")
	if err5 != nil {
		this.Abort("404")
	}
	rsa5 := res5.(map[string]interface{})
	value5, ok5 := rsa5["code"].(float64)
	if !ok5 {
		this.Abort("404")
	}
	if value5 != 200 {
		logs.Error(rsa5["message"].(string))
		this.Abort("404")
		return
	}
	this.Data["products"] = rsa5["data"].(map[string]interface{})
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

	param := RequestParam{}
	param.Id = this.Ctx.Input.Param(":id")
	err2, res := utils.FetchPost(&param, "product/detail")
	if err2 != nil {
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
	this.Data["product"] = rsa["data"].(map[string]interface{})

	param = RequestParam{}
	param.Page = "1"
	param.Size = "5"
	// 产品信息
	err5, res5 := utils.FetchPost(&param, "products")
	if err5 != nil {
		this.Abort("404")
	}
	rsa5 := res5.(map[string]interface{})
	value5, ok5 := rsa5["code"].(float64)
	if !ok5 {
		this.Abort("404")
	}
	if value5 != 200 {
		logs.Error(rsa5["message"].(string))
		this.Abort("404")
		return
	}
	this.Data["products"] = rsa5["data"].(map[string]interface{})

	this.TplName = "solutiondetail.tpl"
}

func (this *IndexController) AboutUs() {
	this.Data["currentMenu"] = "aboutus"
	err, siteinfo := SiteInfo()
	if err != nil {
		this.Data["message"] = err.Error()
		this.TplName = "error/index.tpl"
		return
	}
	this.Data["siteinfo"] = siteinfo

	param := RequestParam{}
	param.Page = "1"
	param.Size = "5"
	// 产品信息
	err5, res5 := utils.FetchPost(&param, "products")
	if err5 != nil {
		this.Abort("404")
	}
	rsa5 := res5.(map[string]interface{})
	value5, ok5 := rsa5["code"].(float64)
	if !ok5 {
		this.Abort("404")
	}
	if value5 != 200 {
		logs.Error(rsa5["message"].(string))
		this.Abort("404")
		return
	}
	this.Data["products"] = rsa5["data"].(map[string]interface{})
	this.TplName = "aboutus.tpl"
}

// func (this *IndexController) Image() {
// 	this.Data["currentMenu"] = ""
// 	err, siteinfo := SiteInfo()
// 	if err != nil {
// 		this.Data["message"] = err.Error()
// 		this.TplName = "error/index.tpl"
// 		return
// 	}
// 	this.Data["siteinfo"] = siteinfo
// 	this.TplName = "image.tpl"
// }
