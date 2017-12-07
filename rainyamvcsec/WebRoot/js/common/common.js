/**
 * 首页js加载数据
 */
var appPath = localStorage.getItem("appPath");
$(function(){
	if(appPath == undefined || appPath){
		getAppContext();
	}
});

function getAppContext(){
	$.ajax({
		url:"../app/index.action",
		type : "post",  
	    data : {},
	    success : function(data) {
	    	appPath = data.appPath;
	    	localStorage.setItem("appPath",appPath);
	    }
	});
}