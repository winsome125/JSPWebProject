<%@page import="Regist.RegistDAO"%>
<%@page import="Regist.RegistDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 폼값받기
String id = request.getParameter("id");
String pass = request.getParameter("pass1");
String name = request.getParameter("name");
String telephon = request.getParameter("telephon");
String mobile = request.getParameter("mobile1")
				+"-"+request.getParameter("mobile2")
				+"-"+request.getParameter("mobile3");
String email = request.getParameter("email_1")+"@"+request.getParameter("email_2");
String open_email = request.getParameter("open_email");
String zipcode = request.getParameter("zipcode");
String addr1 = request.getParameter("addr1");
String addr2 = request.getParameter("addr2");


// DTO객체에 저장하기
RegistDTO dto = new RegistDTO();
dto.setId(id);
dto.setPass(pass);
dto.setName(name);
dto.setTelephon(telephon);
dto.setMobile(mobile);
dto.setEmail(email);
dto.setOpen_email(open_email);
dto.setZipcode(zipcode);
dto.setAddr1(addr1);
dto.setAddr2(addr2);


// DAO객체생성 및 insert처리
RegistDAO dao = new RegistDAO(application);
int result = dao.registInsert(dto);
if (result == 1) {
	out.println("입력성공");
}
else {
	out.println("입력실패");
}

%>