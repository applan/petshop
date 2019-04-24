
$(function(){
	$("#changePwd").validate({
		errorPlacement:function(error,element){
			$(element).closest("form").find("small[id='"+element.attr("id")+"']").append(error);
		},
		rules:{
			current_password:{
				required: true,
				minlength: 8,
				maxlength: 15,
				validPassword:true
			},
			new_password:{
				required: true,
				minlength: 8,
				maxlength: 15,
				validPassword:true
			},
			confirm_password:{
				required: true,
				minlength: 8,
				maxlength: 15,
				equalTo: "#new_password",
				validPassword:true
			}
		},
			messages:{
				current_password:{
					required: "비밀번호 형식이 맞지않아 확인해봐",
					minlength: "최소 8자리 적어야해",
					maxlength: "최대 15자리 적어야해"
				},
				new_password:{
					required: "비밀번호 형식이 맞지않아 확인해봐",
					minlength: "최소 8자리 적어야해",
					maxlength: "최대 15자리 적어야해"
				},
				confirm_password:{
					required: "비밀번호 형식이 맞지않아 확인해봐",
					minlength: "최소 8자리 적어야해",
					maxlength: "최대 15자리 적어야해",
					equalTo: "위의 비밀번호와 같지 않아"
			}
		}
	});

$validator.addMethod("validPassword",function(value){
	var regConfirm_password=/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,15}$/;
	return regConfirm_password.test(value);
},'비밀번호 형식을 확인해주세요');
});