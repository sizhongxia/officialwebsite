package controllers

import (
	"officialwebsite/utils"

	"github.com/astaxie/beego"
)

type WxController struct {
	beego.Controller
}

type WxRequestParam struct {
	OpenId   string `json:"openId"`
	UserName string `json:"userName"`
	Password string `json:"password"`
}
type WxResponse struct {
	State bool   `json:"state"`
	Msg   string `json:"msg"`
}

func (this *WxController) Bind() {
	openId := this.GetString("openId")
	if openId == "" {
		this.Data["msg"] = "参数错误"
		this.TplName = "wx/error.tpl"
		return
	}
	param := WxRequestParam{}
	param.OpenId = openId
	err, res := utils.FetchPost(&param, "gh/checkBind")
	if err != nil {
		this.Abort("404")
	}
	rsa := res.(map[string]interface{})
	value, ok := rsa["code"].(float64)
	if !ok {
		this.Abort("404")
	}
	if value != 200 {
		this.Data["msg"] = rsa["message"].(string)
		this.TplName = "wx/error.tpl"
		return
	}
	if rsa["data"].(bool) {
		this.Data["msg"] = "当前微信号已被绑定"
		this.Data["submsg"] = "如有任何问题，请与平台联系。您也可以在公众号中回复“人工帮助”进行提问反馈。"
		this.TplName = "wx/error.tpl"
		return
	}
	this.Data["openId"] = openId
	this.TplName = "wx/bind.tpl"
}

func (this *WxController) ToBind() {
	param := WxRequestParam{}
	param.OpenId = this.GetString("openId")
	param.UserName = this.GetString("userName")
	param.Password = this.GetString("password")

	resJson := WxResponse{}
	err, res := utils.FetchPost(&param, "gh/toBindUser")
	if err != nil {
		resJson.State = false
		resJson.Msg = "请求失败"
		this.Data["json"] = &resJson
		this.ServeJSON()
		return
	}
	rsa := res.(map[string]interface{})
	value, ok := rsa["code"].(float64)
	if !ok {
		resJson.State = false
		resJson.Msg = "请求失败"
		this.Data["json"] = &resJson
		this.ServeJSON()
		return
	}
	if value != 200 {
		resJson.State = false
		resJson.Msg = rsa["message"].(string)
		this.Data["json"] = &resJson
		this.ServeJSON()
		return
	}
	resJson.State = true
	resJson.Msg = rsa["data"].(string)
	this.Data["json"] = &resJson
	this.ServeJSON()
}

func (this *WxController) ZhyzAlarmDetail() {
	this.Data["resId"] = this.GetString("alarmId")
	this.Data["msg"] = "设备告警提醒"
	this.Data["submsg"] = "更多设备告警信息，请登陆“智慧养殖”小程序查询。"
	this.TplName = "wx/error.tpl"
}
