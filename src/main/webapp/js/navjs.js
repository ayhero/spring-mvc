$(document).ready(function(){

	

});
//内容更新
function showContent(event,url){
	$("#content").load("http://localhost:8080/accpoa/"+url,function(response){
		//alert(response);		
	});
	event.preventDefault();
}

//提交数据
function submitfn(obj,sid){
	var parent=$(obj).parent();
	var action=$(parent).attr("action");
	var objs=$(parent).serializeArray();
	
	  $.post(
		   action,
		   objs,
		  function(data,status){
			   if(status=="success"){
				   	   
				   	   var nparent=$(parent).parent().next("div");
				   	   if(new RegExp("search").test(action)){
				   		   $(nparent).html(data);
				   	   }else{
				   		   $(nparent).load("http://localhost:8080/accpoa/"+nparent.attr("id"));
				   	   }
					   
			   }else{
				   alert("提交失败，请刷新页面~");
			   }
		    
		  }	
	  );
}
