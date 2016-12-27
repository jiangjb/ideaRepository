	$('#login-form').submit(function validateLogin(){
        var username = $(this).find('input[name="username"]').val();
        var password = $(this).find('input[name="password"]').val();
        var autologin = $(this).find('input[name="autologin"]').is(':checked');
        if(username == '') {
        	$('#errorUser').css("display","block");
        	$('#errorPassword').css("display","none");
        	$('#msg').css("display","none");
            return false;
        }
        else{
        	$('#errorUser').css("display","none");
        }
        if(password == '') {
        	$('#errorUser').css("display","none");
        	$('#errorPassword').css("display","block");
        	$('#msg').css("display","none");
            return false;
        }
        else{
            	$('#errorPassword').css("display","none");
        }
        if(username != '' && password != ''){
            $.ajax({
                type: "post",
                url: "/IMovie/details/login",
                async: false,
                data: {"username":username,
                    "password":password,
                    "autologin":autologin
                },
                success: function (data) {
                    var msg = data;
                    if (msg.toString() != "登录成功") {
                        //alert(data);
                    	$('#errorUser').css("display","none");
                    	$('#errorPassword').css("display","none");
                    	$('#msg').css("display","block");
                    }else{
                    	window.location.reload();
                    }
                },
                error: function () { alert("用户名密码验证失败") }
                
            });
            return false;
        }
    });

