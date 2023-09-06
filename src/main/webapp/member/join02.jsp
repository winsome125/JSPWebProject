<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/global_head.jsp" %>

<script>

  function formValidate(frm) {
	  
	    // 아이디에 입력한 값이 있는지 확인한다. 
	    if(frm.id.value==''){
	        alert("아이디를 입력해주세요.");
	        frm.id.focus();
	        return false;
	    }
	    
	    // 아이디는 8~12자로 입력되었는지 검증
	    if(!(frm.id.value.length>=8 && frm.id.value.length<=12)){
	        //8~12자 사이가 아니라면..
	        alert("아이디는 8~12자 사이만 가능합니다.");
	        // 입력된 값을 지우고 포커스를 이동한다. 
	        frm.id.value = '';
	        frm.id.focus();
	        return false;
	    }
	    
	    // 아이디는 숫자로 시작할 수 없음 
	    // 입력한 아이디와 첫번째 문자, 아스키코드를 콘솔에서 확인한다. 
	    console.log(frm.id.value, frm.id.value[0], 
	            frm.id.value.charCodeAt(0));
	    if(frm.id.value[0].charCodeAt(0)>=48 &&
	            frm.id.value.charCodeAt(0)<=57){
	        alert('아이디는 숫자로 시작할 수 없습니다.');
	        frm.id.value = '';
	        frm.id.focus();
	        return false;
	    }
	  
	    //패스워드 입력 확인
	    if(frm.pass1.value==''){
	        alert("패스워드를 입력해주세요.");
	        frm.pass1.focus();
	        return false;
	    }
	    
	    if(frm.pass2.value==''){
	        alert("패스워드 확인을 입력해주세요.");
	        frm.pass2.focus();
	        return false;
	    }
	    
	    
	    //폼 검증이 끝난후 서버로 전송 직후 로딩 이미지를 띄워준다. 
	    document.getElementById("id_loading").style.display = 'block';
	    // return false;
	    
	    
	   
 }
  
//아이디 중복확인 
  function idCheck(fn){
      if(fn.id.value==''){
          alert("아이디를 입력후 중복확인 해주세요.");
          fn.id.focus();
      }
      else{
          //아이디 중복확인 창을 띄울때 입력한 아이디를 쿼리스트링으로 
          //넘겨준다. 
          window.open('RegiIdOverlap.jsp?id='+fn.id.value, 
              'idOver', 
              'width=500,height=300');
          //입력한 아이디를 수정할 수 없도록 속성을 추가한다. 
          fn.id.readOnly = true;
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
					<img src="../images/join_tit.gif" alt="회원가입" class="con_title" />
					<p class="location"><img src="../images/center/house.gif" />&nbsp;&nbsp;멤버쉽&nbsp;>&nbsp;회원가입<p>
				</div>

				<p class="join_title"><img src="../images/join_tit03.gif" alt="회원정보입력" /></p>
				<table cellpadding="0" cellspacing="0" border="0" class="join_box">
					<colgroup>
						<col width="80px;" />
						<col width="*" />
					</colgroup>

					
					<tr>
						<th><img src="../images/join_tit002.gif" /></th>
						<td>
							<input type="text" name="id"  value="" class="join_input" />
							&nbsp;
							<a onclick="id_check_person();" style="cursor:hand;">
								<img src="../images/btn_idcheck.gif" alt="중복확인"/>
							</a>
							&nbsp;&nbsp;
							<span>* 4자 이상 12자 이내의 영문/숫자 조합하여 공백 없이 기입</span>
						</td>
					</tr>
					<tr>
						<th><img src="../images/join_tit003.gif" /></th>
						<td><input type="password" name="pass" value="" class="join_input" />&nbsp;&nbsp;<span>* 4자 이상 12자 이내의 영문/숫자 조합</span></td>
					</tr>
					<tr>
						<th><img src="../images/join_tit04.gif" /></th>
						<td><input type="password" name="pass2" value="" class="join_input" /></td>
					</tr>
					
					<tr>
						<th><img src="../images/join_tit001.gif" /></th>
						<td><input type="text" name="name" value="" class="join_input" /></td>
					</tr>

					<tr>
						<th><img src="../images/join_tit06.gif" /></th>
						<td>
							<input type="text" name="tel1" value="" maxlength="3" class="join_input" style="width:50px;" />&nbsp;-&nbsp;
							<input type="text" name="tel2" value="" maxlength="4" class="join_input" style="width:50px;" />&nbsp;-&nbsp;
							<input type="text" name="tel3" value="" maxlength="4" class="join_input" style="width:50px;" />
						</td>
					</tr>
					<tr>
						<th><img src="../images/join_tit07.gif" /></th>
						<td>
							<input type="text" name="mobile1" value="" maxlength="3" class="join_input" style="width:50px;" />&nbsp;-&nbsp;
							<input type="text" name="mobile2" value="" maxlength="4" class="join_input" style="width:50px;" />&nbsp;-&nbsp;
							<input type="text" name="mobile3" value="" maxlength="4" class="join_input" style="width:50px;" /></td>
					</tr>
					<tr>
						<th><img src="../images/join_tit08.gif" /></th>
						<td>
 
	<input type="text" name="email_1" style="width:100px;height:20px;border:solid 1px #dadada;" value="" /> @ 
	<input type="text" name="email_2" style="width:150px;height:20px;border:solid 1px #dadada;" value="" readonly />
	<select name="last_email_check2" onChange="email_input(this);" class="pass" id="last_email_check2" >
		<option selected="" value="">선택해주세요</option>
		<option value="1" >직접입력</option>
        <option value="naver.com">naver.com</option>
        <option value="nate.com">nate.com</option>
        <option value="gmail.com">gmail.com</option>
        <option value="daum.net">daum.net</option>
        <option value="hanmail.net">hanmail.net</option>
	</select>
	 
						<input type="checkbox" name="open_email" value="1">
						<span>이메일 수신동의</span></td>
					</tr>
					<tr>
						<th><img src="../images/join_tit09.gif" /></th>
						<td>
						<input type="text" name="zipcode" value=""  class="join_input" style="width:100px;" /> <!-- &nbsp;-&nbsp; -->
						<!-- <input type="text" name="zip2" value=""  class="join_input" style="width:50px;" /> -->
						<a href="javascript:;" title="새 창으로 열림" onclick="zipFind('zipFind', '<?=$_Common[bbs_path]?>member_zipcode_find.php', 590, 500, 0);" onkeypress="">[우편번호검색]</a>
						<br/>
						
						<input type="text" name="addr1" value=""  class="join_input" style="width:550px; margin-top:5px;" /><br>
						<input type="text" name="addr2" value=""  class="join_input" style="width:550px; margin-top:5px;" />
						
						</td>
					</tr>
				</table>

				<p style="text-align:center; margin-bottom:20px">
				
					<input type="image" src="../images/btn01.gif" align="absmiddle"  onclick="location.href='rehistActionT.jsp'; alt="확인"/>
						&nbsp;&nbsp;
					<input type="image" src="../images/btn02.gif" alt="취소"/>

				<!-- <a href="join02.jsp">
				<img src="../images/btn01.gif" /></a>&nbsp;&nbsp;
				<a href="#">
				<img src="../images/btn02.gif" />
				</a> -->
				</p>
				
			</div>
		</div>
		<%@ include file="../include/quick.jsp" %>
	</div>
	

	<%@ include file="../include/footer.jsp" %>
	</center>
 </body>
</html>
