<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>           
<%@taglib prefix="s" uri="/struts-tags"%> 


<!-- BEGIN CONTENT BODY -->
     <div class="page-content">
         <!-- BEGIN PAGE HEADER-->                  
         <!-- BEGIN PAGE TITLE-->
         <h3 class="page-title"> 
            	 选课管理
         </h3>
         <!-- END PAGE TITLE-->
         <!-- END PAGE HEADER-->
		 <!-- BEGIN EXAMPLE TABLE PORTLET-->
		<div class="portlet box green">
		    <div class="portlet-title">
		        <div class="caption">
		            <i class="fa fa-globe"></i>选课列表 </div>
		        <div class="actions">
		            <a href="javascript:;" onClick="addPro()" class="btn dark btn-outline sbold uppercase">
		                <i class="fa fa-plus"></i> 新增选课项 </a>
		        </div>
		    </div>
		    
		    <div class="portlet-body" id="">
				<table id="proListTable" class="display" cellspacing="0" width="100%">
			        <thead>
			            <tr>
			            	<th>课程编号</th>
			                <th>课程名字</th>
			                <th>教师姓名</th>
			                <th>容量 </th>
			                <th>上课时间</th>
			                <th>上课周 </th>
			                <th>教室 </th>
			                <th>操作 </th>
			            </tr>
			        </thead>
			
			    </table>
			</div>
				  
		    
		</div>
		<!-- END EXAMPLE TABLE PORTLET-->  	

     </div>
<!-- END CONTENT BODY -->



<!--Modals-->
<div id="staticAdd" class="modal fade bs-modal-lg modal-scroll" tabindex="-1" data-backdrop="static" data-keyboard="false" >
      <div class="modal-dialog modal-lg" >
          <div class="modal-content">
             <div class="modal-header">
                  <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                  <h4 class="modal-title">新增选课选项</h4>
              </div>
              <div class="modal-body">
              	  <input id="myProId" type="hidden" value="0">
	              <!-- BEGIN FORM-->
	              <form id="staticAddForm" class="form-horizontal form">
                       <div class="form-body">
                           <div class="alert alert-danger display-hide">
                               <button class="close" data-close="alert"></button> 请按照要求填写信息。</div>
                           <div class="alert alert-success display-hide">
                               <button class="close" data-close="alert"></button> 成功! </div> 
                             
                          <div class="form-group">
                               <label class="control-label col-md-3">选课记录编号
                                   <span class="required"> * </span>
                               </label>
                               <div class="col-md-6">
                                   <div class="input-icon right">
                                       <i class="fa"></i>
                                       <input type="text" id="sectionNo" name="sectionNo" data-required="1" class="form-control"  value=""/> 
                                   </div>  
                                   <span class="help-block">选课记录编号，不能为空，只能为数字</span>    
                               </div>
                           </div>
                           
                           <div class="form-group">
                               <label class="control-label col-md-3">选择课程
                                   <span class="required"> * </span>
                               </label>
                               <div class="col-md-6">
                                   <div class="input-icon right">
                                       <i class="fa"></i>      			                                                                                                                    
                                       <select class="form-control" name="representedCourse" id="representedCourse">
                                               <option value=""></option> 
                                                                                                                                   
                               			</select>                                                       
                                   </div>  
                                   <span class="help-block">课程，不能为空</span>   
                               </div>
                           </div> 
                            
                           <div class="form-group">
                               <label class="control-label col-md-3">选择教师
                                   <span class="required"> * </span>
                               </label>
                               <div class="col-md-6">
                                   <div class="input-icon right">
                                       <i class="fa"></i>      			                                                                                                                    
                                       <select class="form-control" name="instructor" id="instructor">
                                               <option value=""></option> 
                                                                                                                                   
                               			</select>                                                       
                                   </div>  
                                   <span class="help-block">课程，不能为空</span>   
                               </div>
                           </div> 
                           <div class="form-group">
                               <label class="control-label col-md-3">课程容量
                                   <span class="required"> * </span>
                               </label>
                               <div class="col-md-6">
                                   <div class="input-icon right">
                                       <i class="fa"></i>
                                       <input type="text" id="seatingCapacity" name="seatingCapacity" data-required="1" class="form-control"  value=""/> 
                                   </div>  
                                   <span class="help-block">课程容量，不能为空，只能为整数</span>    
                               </div>
                           </div>
                           <div class="form-group">
                               <label class="control-label col-md-3">填写每天上课时间
                                   <span class="required"> * </span>
                               </label>
                               <div class="col-md-6">
                                   <div class="input-icon right">
                                       <i class="fa"></i>
                                       <input type="text" id="timeOfDay" name="timeOfDay" data-required="1" class="form-control"  value=""/> 
                                   </div> 
                                   <span class="help-block">上课时间，不能为空</span>    
                               </div>
                           </div>    
                           
                            <div class="form-group">
                               <label class="control-label col-md-3">填写每周上课天数
                                   <span class="required"> * </span>
                               </label>
                               <div class="col-md-6">
                                   <div class="input-icon right">
                                       <i class="fa"></i>
                                       <input type="text" id="dayOfWeek" name="dayOfWeek" data-required="1" class="form-control"  value=""/> 
                                   </div> 
                                   <span class="help-block">每周上课，不能为空</span>    
                               </div>
                           </div> 
                                                                                 
                           <div class="form-group">
                               <label class="control-label col-md-3">填写教室
                                   <span class="required"> * </span>
                               </label>
                               <div class="col-md-6">
                                   <div class="input-icon right">
                                       <i class="fa"></i>
                                       <input type="text" id="room" name="room" data-required="1" class="form-control"  value=""/> 
                                   </div>   
                                    <span class="help-block">教室，不能为空</span> 
                               </div>
                           </div>
                                                   
                           
                       </div>
                       <div class="form-actions right">
                           <button type="button" data-dismiss="modal" class="btn dark btn-outline ">取消</button>
                       		<button type="submit" class="btn green"> 提交</button>
                       </div>

     						
                   </form>
                   <!-- END FORM-->                                                                                                                                    
               </div>
               

         </div>
     </div>
</div>
<!--End Modals--> 



	<!-- BEGIN PAGE LEVEL PLUGINS -->
        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/global/plugins/select2/js/select2.full.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/global/plugins/jquery-validation/js/jquery.validate.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/global/plugins/jquery-validation/js/additional-methods.min.js"></script>
    	<script type="text/javascript" src="${pageContext.request.contextPath}/assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>

        <script type="text/javascript" src="${pageContext.request.contextPath}/assets/pages/scripts/form-validation.min.js"></script>        
    	
    <!-- END PAGE LEVEL PLUGINS -->
    
    
	<script>      
		$(document).ready(function() {
			loadProList();
			submitAddPro();
			loadCurseList();
			loadProfessorList();
			$('#staticAdd').on('hidden.bs.modal', function () {
				$('#myProId').val(0);
				$('#staticAddForm')[0].reset();
			})
		} );
		
		
		//加载列表
		function loadProList(){
			$('#proListTable').dataTable( {
				"ajax": {
				    "url": "${pageContext.request.contextPath}/base/section_queryList",
				    "type": "POST",
				    "data": function ( d ) {

				    }
				},
			  	"deferRender": true,
			  	"searching": true,
			  	"autoWidth": true,
			  	"processing": true,
			  	"destroy": true,//如果需要重新加载的时候请加上这个
		        "columns": [
                    { "data": "sectionNo"},   
                    { "data": "representedCourse"},  
                    { "data": "instructor"},  
                    { "data": "seatingCapacity"},
                    { "data": "timeOfDay"},  
                    { "data": "dayOfWeek"},  
                    { "data": "room"},
                    { "data": null}
                ],
                "columnDefs": [ {
		            "targets": -1,//最后一列
		            "data": null,
		            render: function(data, type, row, meta) {
		            var showHtml='<button class="btn  green" onclick="alterPro('+row.id+')">'
                                      +          	'<i class="fa fa-edit">编辑 </i>'
                                      +      '</button>'
                                      +      ' '
                                      +  	 '<button  class="btn red"onclick="deletePro('+row.id+')">'
                                      +  			'<i class="fa fa-times">删除</i>'
                                      +      '</button>'            
		            
			            return showHtml;

			        }
		        } ],			        
		        "oLanguage": {
		            "sLengthMenu": "每页显示 _MENU_ 条",
		            "sZeroRecords": "没有找到符合条件的数据",
		            "sInfo": "当前第 _START_ - _END_ 条　共计 _TOTAL_ 条",
		            "sInfoEmpty": "没有记录",
		            "sInfoFiltered": "(从 _MAX_ 条记录中过滤)",
		            "sSearch": "搜索",
		            "sProcessing": "数据加载中...",
		            "oPaginate": {
		                "sFirst": "首页",
		                "sPrevious": "上一页",
		                "sNext": "下一页",
		                "sLast": "尾页"
		            }
		        }
			});
		}
		
		//加载课程
		function  loadCurseList(){
			$.ajax({    
                url:'${pageContext.request.contextPath}/base/course_queryList',
                method:'POST',
                dataType:"json",
                data:{
                    },	  
                success:function(data){  
                	var html="";
					for(var i=0;i<data.recordsTotal;i++){
						html=html+'<option value="'+data.data[i].id+'">'+data.data[i].courseName+'</option>'
						
					}
					$('#representedCourse').append(html)	
                }
            })
		}
		
		//加载教师
		function  loadProfessorList(){
			$.ajax({    
                url:'${pageContext.request.contextPath}/base/professor_queryList',
                method:'POST',
                dataType:"json",
                data:{
                    },	  
                success:function(data){  
                	var html="";
					for(var i=0;i<data.recordsTotal;i++){
						html=html+'<option value="'+data.data[i].id+'">'+data.data[i].realName+'</option>'
						
					}
					$('#instructor').append(html)	
                }
            })
		}
		
		//删除
		function deletePro(id){
        	$.ajax({    
                url:'${pageContext.request.contextPath}/base/section_deleteProfessor',
                method:'POST',
                dataType:"json",
                data:{
                		id:id
                    },	  
                success:function(data){    
                        if(data.status=="ok"){
                        	loadProList();
                        	successModal();
                        }else{
                        	 errorModal();
                        }
                }
            })
		}
		
		
		//编辑
		function alterPro(id){
        	$.ajax({    
                url:'${pageContext.request.contextPath}/base/section_getProfessorById',
                method:'POST',
                dataType:"json",
                data:{
                		id:id
                    },	  
                success:function(data){   
                    if(data.status=="ok"){
                    	$('#myProId').val(data.data.id)
    					//$('#ssn').val(data.data.ssn);                         
                        addPro();
                    }else{
                    	 errorModal();
                    }
                }
            })
		}
		
		//添加教师  打开模态框
		function addPro(){
			$('#staticAdd').modal('show')
		}
		
		
		function submitAddPro(){			
			var form2 = $('#staticAddForm');
            var error2 = $('.alert-danger', form2);
            var success2 = $('.alert-success', form2);			
            form2.validate({
                errorElement: 'span', //default input error message container
                errorClass: 'help-block help-block-error', // default input error message class
                focusInvalid: false, // do not focus the last invalid input
                ignore: "",  // validate all fields including form hidden input
                rules: {
                	sectionNo: {
                        required: true,
                        digits:true 
                    },
                    representedCourse: {
                        required: true
                    },
                    instructor: {
                        required: true
                    },
                    seatingCapacity: {
                        required: true,
                        digits:true 
                    },
                    timeOfDay: {
                        required: true
                    },
                    dayOfWeek: {
                        required: true
                    },
                    room: {
                    	required: true
                    }
                },
                invalidHandler: function (event, validator) { //display error alert on form submit              
                    success2.hide();
                    error2.show();
                    App.scrollTo(error2, -200);
                },

                errorPlacement: function (error, element) { // render error placement for each input type
                    var icon = $(element).parent('.input-icon').children('i');
                    icon.removeClass('fa-check').addClass("fa-warning");  
                    icon.attr("data-original-title", error.text()).tooltip({'container': 'body'});
                },

                highlight: function (element) { // hightlight error inputs
                    $(element)
                        .closest('.form-group').removeClass("has-success").addClass('has-error'); // set error class to the control group   
                },

                unhighlight: function (element) { // revert the change done by hightlight
                    
                },

                success: function (label, element) {
                    var icon = $(element).parent('.input-icon').children('i');
                    $(element).closest('.form-group').removeClass('has-error').addClass('has-success'); // set success class to the control group
                    icon.removeClass("fa-warning").addClass("fa-check");
                    	
                },

                submitHandler: function (form) {
                	var myProId=$('#myProId').val();
					var sectionNo=$('#sectionNo').val();
					var dayOfWeek=$('#dayOfWeek').val();
					var timeOfDay=$('#timeOfDay').val();
					var room=$('#room').val();
					var professorId=$('#instructor').val();
					var courseId=$('#representedCourse').val();
					var seatingCapacity=$('#seatingCapacity').val();

	            	$.ajax({    
	                        url:'${pageContext.request.contextPath}/base/section_saveOrUpdateSection',
	                        method:'POST',
	                        dataType:"json",
	                        data:{
	                        	id:myProId,
	                        	sectionNo:sectionNo,
	                        	dayOfWeek:dayOfWeek,
	                        	timeOfDay:timeOfDay,
	                        	room:room,
	                        	professorId:professorId,
	                        	courseId:courseId,
	                        	seatingCapacity:seatingCapacity
	                            },	  
	                        success:function(data){    
	                                if(data.status=="ok"){
	                                	loadProList();
	                                	successModal();
	                                	$('#staticAdd').modal('hide');
	                                }else{
	                                	 errorModal();
	                                }
			                }
		                })
                 
	                return false; // 阻止表单自动提交事件
	                
                }
            });
		}
		
		
	</script>      		
