$(function(){
	imageOver();

	$("input.keyword").focus(
      function() {
		  $(this).stop().animate({
			  width: 120
			},1000,"easeOutExpo");
     });
	 $("input.keyword").blur(
      function() {
		 if($(this).val()==""){
			  $(this).stop().animate({
				  width: 30
				},1000,"easeOutExpo");
		 }
     });

});

/* imagechange height */
$(document).ready(function(){

	var boxheight=$(window).width()*900/1920;
	$(".hs_container").css("height",boxheight);

	$(window).resize(function(){
		var boxheight=$(window).width()*900/1920;
		$(".hs_container").css("height",boxheight);
	});
});


//截取URL参数，传递触发动作
$(window).load(function () {

	var get = getUrlVars();
	if(get["con"] != undefined && get["con"] != ""){

		$("#" + get["con"]).trigger("click");
		return false;
	}
});
	function getUrlVars()
	{
	    var vars = [], hash;
	    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
	    for(var i = 0; i < hashes.length; i++)
	    {
	        hash = hashes[i].split('=');
	        vars.push(hash[0]);
	        vars[hash[0]] = hash[1];
	    }
	    return vars;
	}
//***********************************

$(function(){
	// 导航
	$("#HeaderNav > li").hover(function(){
		$(this).find(".subnav").show();
	},function(){
		$(this).find(".subnav").hide();
	});
});

//image hover
function imageOver() {

	$("img.over").each(function() {

		var image = this.src;
		var extension = image.substr(image.lastIndexOf("."), image.length-1);
		var image_over = image.replace(extension, "_on"+extension);

		new Image().src = image_over;

		$(this).hover(
			function(){this.src = image_over},
			function(){this.src = image}
		);
	});
}

$(window).scroll(function(){
	// 滚动条距离顶部的距离
	if($(window).scrollTop() >= 100){
		$("#HeadWrap").addClass('scroll');
		$("#HeadWrap.innerPage").find(".logo img").attr('src', '/static/common/images/logo.png');
	} else{
		$("#HeadWrap").removeClass('scroll');
		$("#HeadWrap.innerPage").find(".logo img").attr('src', '/static/common/images/logo_white.png');
	}
});

/* -------------------------------------------------------------------
	* @function
 ------------------------------------------------------------------- */
$(document).ready(function() {
	window.onload = function() {
		if(location.hash.length > 0){
			location.href = location.hash;
		}
	};
	$('a[href^=#]').click(function(){
		var speed = 500;
		var href= $(this).attr("href");
		var target = $(href == "#" || href == "" ? 'html' : href);
		var position = target.offset().top;
		$("html, body").animate({scrollTop:position}, speed, "swing");
		return false;
	});
});