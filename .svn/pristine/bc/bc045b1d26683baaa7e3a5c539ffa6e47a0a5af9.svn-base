	 /**$('#comment-form').submit(function validateComment(){
			var movieid = $(this).find('input[name="movieid"]').val();
			var userid = $(this).find('input[name="userid"]').val();
			var content = $(this).find('textarea[name="content"]').val();
			if(userid==''){
				alert("您还未登录，请先登录");
				return false;
			}else{
				if(content.trim()==''){
					$('#regtip').css("display","block");
					return false;
				}else{
					 $.ajax({
			                type:"get",
			                url: "/IMovie/details/addcomment",
			                data:"json",
			                data: {"movieid":movieid,
			                    "userid":userid,
			                    "content":encodeURI(content)
			                },
			                success: function (data) {
			                	alert(data);
			                	//window.location.reload();
			                }
			           });
				}
			}
		});
	 
	 
	 $('#commentButton').click(function(){
		 var movieid = $('input[name="movieid"]').val();
		 var userid = $('input[name="userid"]').val();
		 var content = $('textarea[name="content"]').val();
		 alert(movieid);
		 alert(userid);
		 alert(content);
		 if(userid==''){
			 alert("您还未登录，请先登录!");
		 }else{
			 if(content.trim()==''){
					$('#regtip').css("display","block");
				}else{
					 $.ajax({
			                type:"get",
			                url: "/IMovie/details/addcomment",
			                data:"json",
			                data: {"movieid":movieid,
			                    "userid":userid,
			                    "content":encodeURI(content)
			                },
			                success: function (data) {
			                	alert(data);
			                	//window.location.reload();
			                }
			         });
				}
		 }
	});

**/