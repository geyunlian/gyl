<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>医生注册</title>
<style type="text/css">
*{margin: 0;padding: 0;list-style: none;}
body{
	background: url('bg.jpg') no-repeat ;
    background-size: 100%; 
}
.container{
	width: 1200px;
	height: 870px;
	margin: 0 auto;
/* 	background: #ccc; */
}
/* 导航 */
.nav{
	margin-top: 10px;
	height: 50px;
	line-height: 50px;
}
.nav ul li{
	float: right;
	font-size: 15px;
}
.nav ul li a{
	text-decoration: none;
	color: #152b3c;
	padding:15px 30px;
}
.nav ul li a:hover{
	border: 1px solid white;
	border-radius:5%;
	color: white;
} 
/* 主题内容 */
.main{
	width:1200px;
	height: 450px;
}
.sideleft{
	width:460px;
	height: 250px;
	float: left;
	padding:85px 130px
}
.sideleft p{
	padding: 8px 0;
	font-size: 16px;
	font-family: "微软雅黑";
}
.sideright{
	width: 480px;
	height: 450px;
	float: right;
}
.sideright .index{
	width: 330px;
	height: 400px;
	background-color:rgba(255,255,255,0.5);
	margin: 100px 150px;
}
.headline{
	font-size: 22px;
	text-align: center;
	padding: 20px;
}

input[type="text"],
input[type="submit"]{
	-web-kit-appearance:none;
  	-moz-appearance: none;
  	display: block;
  	margin: 0 auto;
  	font-size:15px;
  	width: 240px;
}
input[type="password"]{
   -web-kit-appearance:none;
  	-moz-appearance: none;
  	display: block;
  	margin: 0 auto;
  	font-size:15px;
  	width: 240px;
  	height:35px;
	border-radius:3px;
	border:1px solid #c8cccf;
	color:#6a6f77;
	outline:0;
}

input[type="text"]{
	height:35px;
	border-radius:3px;
	border:1px solid #c8cccf;
	color:#6a6f77;
	outline:0;
}
input[type="submit"]{
	margin-top: 25px;
	height: 35px;
	background: #357eb8;
	color: #bcedff;
	font-weight: bold;
	font-size: 16px;
}
input[type="submit"]:hover{
	background: #0e62a3;
	cursor: pointer;
}
select{
-web-kit-appearance:none;
  	-moz-appearance: none;
  	display: block;
  	margin: 0 auto;
  	font-size:15px;
  	width: 240px;
  	height:35px;
	border-radius:3px;
	border:1px solid #c8cccf;
	color:#6a6f77;
	outline:0;
}
.astyle{
	margin: 5px 0 8px 42px;
	font-size:17px; 
	color: #6a6f77;
}
.bstyle{
	display: block;
	float: left;
	margin-left: 46px;
	font-size: 15px;
}
.cstyle{
	display: block;
	float: right;
	margin-right: 46px;
	font-size: 15px;
}
.cstyle a{
	text-decoration: none;
}
.footer{
	width: 1000px;
	margin:60px auto;
}
.footer ul{
	margin-left: 100px;
}
.footer ul li{
	float: left;
 
}
.footer ul li a{
	text-decoration: none;
	color: black;
	border-left: 2px solid black;
	padding:0 10px;
}
</style>
<script language="javascript">
$(".d_status").change(function () {
    var ele = $(this);
    var id = ele.attr('data-id');
    var status=ele.val();
        // var id =$(".d_status option:selected").data('id');
    // alert(status);return false;
    $.post('d_status', {id:id,status:status}, function(data) {
            layer.msg(data.msg);
            setTimeout(function(){window.location.reload()}, 2000);//延时操作

    });
});
 function checkusername() {
	        var username = document.getElementsByName("username");
	        var username = username[0];
	        var nameSpan = document.getElementById("nameSpan");
	        
	        if (username.value.trim() == '') {
	            nameSpan.innerHTML = "不能为空";
	            return false;
	        } else if(!username.value.maxlength=='5'){
	            
	            nameSpan.innerHTML = "名字不能超过五个字";
	            return false;
	        } 
	        return true;
	    }
 function checkpassword() {
	        var password = document.getElementsByName("password");
	        var password = password[0];
	        var passwordSpan = document.getElementById("passwordSpan");
	        
	        if (password.value.trim() == '') {
	            passwordSpan.innerHTML = "不能为空";
	            return false;
	        } else if(!password.value.trim().match(/[0-9a-zA-Z]{6,12}/)){
	            
	            passwordSpan.innerHTML = "密码必须是6-12位数字和字母";
	            return false;
	        } 
	        return true;
	    }
 function checkrepassword() {
	        var repassword = document.getElementsByName("repassword");
	        var repassword = repassword[0];
	        var repasswordSpan = document.getElementById("repasswordSpan");
	        
	        if (repassword.value.trim() == '') {
	            repasswordSpan.innerHTML = "不能为空";
	            return false;
	        } else if(!repassword.value.trim().match(/[0-9a-zA-Z]{6,12}/)){
	            
	            repasswordSpan.innerHTML = "密码必须是6-12位数字和字母";
	            return false;
	        } 
	        return true;
	    }
 function checkusertel() {
	        var tel = document.getElementsByName("tel");
	        var tel = tel[0];
	        var telSpan = document.getElementById("telSpan");
	        
	        if (tel.value.trim() == '') {
	            telSpan.innerHTML = "不能为空";
	            return false;
	        } else if(!tel.value.trim().match(/[0-9]{11}/)){
	            
	            telSpan.innerHTML = "请输入正确的手机号";
	            return false;
	        } 
	        return true;
	    }
function checkdepartment() {
	        var d_status = document.getElementsByName("d_status");
	        var d_status = d_status[0];
	        var d_statusSpan = document.getElementById("d_statusSpan");
	        
	        if (d_status.value.trim() == '') {
	            d_statusSpan.innerHTML = "您没有选择科室";
	            return false;
	        } 
	        return true;
	    }
function submitForm(){
	                /* 做校验 */
	            var flag1 = checkusername()
	            if (flag1) {            
	                document.forms[0].submit();        
	                }else{
	                    alert("您的注册信息有误，请检查后再输入");
	                }
	           var flag2 = checkpassword()
	            if (flag2) {            
	                document.forms[0].submit();        
	                }else{
	                    alert("您的注册信息有误，请检查后再输入");
	                }
	 var flag3 = checkrepassword()
	            if (flag3) {            
	                document.forms[0].submit();        
	                }else{
	                    alert("您的注册信息有误，请检查后再输入");
	                }
	 var flag4 = checkusertel()
	            if (flag4) {            
	                document.forms[0].submit();        
	                }else{
	                    alert("您的注册信息有误，请检查后再输入");
	                }
	            }
</script>
</head>
<body>
<div class="container">
		<!-- 导航 -->
		<div class="nav">
			<ul>
				<li><a href="admin.jsp">管理员登录入口</a></li>
				<li><a href="login.jsp">患者登录入口</a></li>
				<li><a href="Doctorlogin.jsp">医生登录入口</a></li>
				<li><a href="index.jsp">首页</a></li>
			</ul>
		</div>
 

		<div class="main">
			<!-- 左侧信息栏 -->
			<div class="sideleft">
				<h1>XXX医院    为您服务</h1>
				<h4>呵护您的健康 创百姓信赖医院</h4>
				</br></br></br>
				<p>用心倾听 细心诊疗 耐心解答 精心治疗</p>
				<p>热心服务 真心对待 爱心无限 衷心祝福</p>
				<p>一切为了病人 一切方便病人 一切服务病人</p>
				<p>关爱健康献爱心活动特别提醒您的健康是我们共同的心愿</p>
 
			</div>
			
			<div class="sideright">
				<div class="index">
					<form action="Doctorregister_check.jsp" id="Form" method="post">
						<p class="headline">医生用户注册</p>
						 <p class="astyle"></p> 
						 <input type="text" name="dname" id="dname" value="请输入名字" onblur="checkusername()" onfocus="clearusername()">
						<span id="nameSpan" style="color:red; margin-left:40px;" >${error.username }</span>
						<p class="astyle"></p> 
						<input type="text" id="dtel" name="dtel"  value="请输入手机号" onblur="checkusertel()" onfocus="clearusertel()">
						 <span id="telSpan" style="color:red; margin-left:40px;">${error.tel }</span></br>
						 <p class="astyle"></p> 
						 <input type="password" name="dpwd" id="dpwd" value="" placeholder="请输入密码" onblur="checkpassword()" onfocus="clearpassword()">
						<span id="passwordSpan" style="color:red; margin-left:40px;">${error.password }</span></br>
						<p class="astyle"></p>
						<input type="password" name="drepwd" id="drepwd" value="" placeholder="请再次输入密码" onblur="checkrepassword()" onfocus="clearrepassword()">
						<span id="repasswordSpan" style="color:red; margin-left:40px;">${error.repassword }</span></br>
						
						<p class="astyle"></p>
						<select name="d_status" id="d_status" class="d_status" data-id="{$vo.id}"  onblur="checkdepartment()" onfocus="cleardepartment()">
                            <option value='0' <eq name="$vo.status" value="请选择科室" </eq>>请选择科室</option>
                            <option value='1' <eq name="$vo.status" value="内科" </eq>>内科</option>
                            <option value='2' <eq name="$vo.status" value="外科"</eq>>外科</option>
                            <option value='3' <eq name="$vo.status" value="妇产科" </eq>>妇产科</option>
                            <option value='4' <eq name="$vo.status" value="儿科" </eq>>儿科</option>
                       </select>
                       <span id="d_statusSpan" style="color:red; margin-left:40px;">${error.d_status }</span></br>
						<input type="submit" value="注册" name="register" >
						</br>
						 <p class="bstyle"><input type="checkbox" name="rempas" />  记住密码</p>
						
						
						<p class="cstyle">已经注册<a href="Doctorlogin.jsp">立即登录</a></p>
					</form>
 
				</div>
			</div>
		</div>
 
		<!-- 尾部 -->
		<div class="footer">
				<ul>
					<li><a href="#">关于我们</a></li>
					<li><a href="#">诚聘医生</a></li>
					<li><a href="#">联系医院</a></li>
					<li><a href="#">医院服务</a></li>
					<li><a href="#">XXX学校XX附属医院线上预约医生平台</a></li>
				</ul>
 
		</div>
 
	</div>


</body>
</html>