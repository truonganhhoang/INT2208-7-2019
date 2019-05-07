
$(document).ready(function(){
    $("#new_pwd").click(function () {
        var current_pwd = $("#current_pwd").val();
        $.ajax({
           type:'get',
           url:'/admin/check-pwd',
           data:{current_pwd:current_pwd},
			success:function (resp) {
           		if(resp == "false")
				{
					$("#chkPwd").html("<font color='red'>Current Password is Incorrect</font>");
				}
           		else if(resp == "true")
				{
					$("#chkPwd").html("<font color='green'>Current Password is Correct</font>");
				}
			},error:function () {
				alert("Error");
			}
        });
    });

	$('input[type=checkbox],input[type=radio],input[type=file]').uniform();
	
	$('select').select2();
	
	$("#password_validate").validate({
		rules:{
			current_pwd:{
				required: true,
				minlength:6,
				maxlength:20
			},
			new_pwd:{
				required: true,
				minlength:6,
				maxlength:20
			},
			confirm_pwd:{
				required:true,
				minlength:6,
				maxlength:20,
				equalTo:"#new_pwd"
			}
		},
		errorClass: "help-inline",
		errorElement: "span",
		highlight:function(element, errorClass, validClass) {
			$(element).parents('.control-group').addClass('error');
		},
		unhighlight: function(element, errorClass, validClass) {
			$(element).parents('.control-group').removeClass('error');
			$(element).parents('.control-group').addClass('success');
		}
	});
});
