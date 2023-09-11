<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/global_head.jsp" %>

 <script>
   /* 로그인 폼의 입력값을 검증하기 위한 함수로 빈값인지를 확인한다. */
   function validateForm(form) {
    //입력값이 공백인지 확인후 경고창, 포커스이동, 폼값전송 
    //중단처리를 한다.
       if (!form.user_id.value) {
            alert("회원이름을 입력하세요.");
            form.user_id.focus();
            return false;
        }
        if (form.user_m.value == "") {
            alert("이메일을 입력하세요.");
            form.user_pw.focus();
            return false;
        }
    }
 </script>

 <body>
	<center>
	<div id="wrap">
		<%@ include file="../include/top.jsp" %>

		<img src="../images/member/sub_image.jpg" id="main_visual" />

		<div class="contents_box">
		
			<div class="left_contents">
				<%@ include file = "../include/member_leftmenu.jsp" %>
			</div>
			
			<div class="right_contents">
			
				<div class="top_title">
					<img src="../images/member/id_pw_title.gif" alt="" class="con_title" />
					<p class="location"><img src="../images/center/house.gif" />&nbsp;&nbsp;멤버쉽&nbsp;>&nbsp;아이디/비밀번호찾기<p>
				</div>
				
				<div class="idpw_box">
				
					<div class="id_box">
						<ul>
							<li><input type="text" name="user_id" value="" class="login_input01" /></li>
							<li><input type="text" name="user_m" value="" class="login_input01" /></li>
						</ul>
						<input type="image" src="../images/member/id_btn01.gif" class="id_btn" /></a>
						<a href="/member/join02.jsp"><img src="../images/login_btn03.gif" class="id_btn02" /></a>
					</div>
					
					<div class="pw_box">
						<ul>
							<li><input type="text" name="" value="" class="login_input01" /></li>
							<li><input type="text" name="" value="" class="login_input01" /></li>
							<li><input type="text" name="" value="" class="login_input01" /></li>
						</ul>
						<a href=""><img src="../images/member/id_btn01.gif" class="pw_btn" /></a>
					</div>
				</div>
				
			</div>
		</div>
		<%@ include file="../include/quick.jsp" %>
	</div>
	

	<%@ include file="../include/footer.jsp" %>
	</center>
 </body>
</html>
