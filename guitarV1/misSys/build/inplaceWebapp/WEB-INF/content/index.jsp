<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file="/public/website-head.jspf"%>
<title>主页</title>
</head>
<body>
    <center><h3>查询guitar</h3></center>
    <hr>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-sm-offset-3">
            <form class="form-horizontal" role="form">
                 <div id="error" style="display:none">
                        <div><p class="bg-danger"></p>   </div>
                                        
                  </div>
                  <div class="form-group">
                    <label for="price" class="col-sm-2 control-label">价格：</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="price" placeholder="">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="builder" class="col-sm-2 control-label">厂商：</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="builder" placeholder="">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="model" class="col-sm-2 control-label">型号：</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="model" placeholder="">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="type" class="col-sm-2 control-label">类型：</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="type" placeholder="">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="backWood" class="col-sm-2 control-label">backWood：</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="backWood" placeholder="">
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="topWood" class="col-sm-2 control-label">topWood：</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="topWood" placeholder="">
                    </div>
                  </div>
                </form>
            </div>
            <div class="col-xs-10 col-sm-4 col-sm-offset-4">
                <button type="button" class="btn btn-primary btn-block" onclick="submitSearch()">查询</button>
            </div>       
        </div>
     </div>   
     
</body>
<script type="text/javascript">
 function submitSearch(){
	    var price=$('#price').val();
	    var builder=$('#builder').val();
	    var model=$('#model').val();
	    var type=$('#type').val();
	    var backWood=$('#backWood').val();
	    var topWood=$('#topWood').val();
	    if(price=="" || builder=="" || model=="" || type=="" || backWood=="" || topWood==""){
	    	console.log(typeof(price)=="undefined");
	    	$("#error p").append("请至少保证一个条件不为空！");
        	$('#error').fadeIn('slow');
			setTimeout(function(){
				$('#error').fadeOut('slow');
				$("#error p").append("");
			},2000)
	    }else{	    	
	    	$.ajax({	
		    	url:'${pageContext.request.contextPath}/base/guitar_queryGuitarList.action',
		    	type:'POST',
		    	data:{
		    		price:price,	 
		    		builder:builder,
		    		guitarModel:model,
		    		type:type,
		    		backWood:backWood,
		    		topWood:topWood
		    	},
		    	success:function(data){    
		    		
		    	},
		    })	 
		    
	    }
	    
 }
</script>

</html>