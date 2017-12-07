/**
 * 首页js加载数据
 */
$(function(){
	getBanner();
});

function getBanner(){
	$.ajax({
		url:"../banner/loadBanners.action",
		type : "post",  
	    data : {},
	    success : function(data) {
	    	var banners = data;
	    	$.each(banners,function(i,elm){
	    		var bannerHtmlText = '<li class="hvr-sweep-to-bottom'+(i==0?' active':'')+'"><a href="'+appPath+elm.url+'">'+elm.nameCn+'<i><img src="'+appPath+elm.iconUrl+'" alt=""/></i></a></li>';
	    		$(".nav1").append(bannerHtmlText);
	    		var bottomBannerHtmlText = '<li><a href="'+appPath+elm.url+'">'+elm.nameCn+'</a></li>'
	    		$(".bottomBanner").append(bottomBannerHtmlText);
	    	});
	    	$(".nav1").append('<div class="clearfix"></div>');
	    }
	});
}