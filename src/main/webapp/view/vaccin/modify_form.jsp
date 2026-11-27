<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../include/title.jsp" />

<link href="./res/css/vaccin/vaccin.css" rel="stylesheet">

<jsp:include page="../include/js/vaccin.jsp" />

</head>
<body>

	<jsp:include page="../include/header.jsp" />
	
	<jsp:include page="../include/nav.jsp" />
	
	<section>
		<div class="section_wrap">
			
			<h1>MODIFY FORM</h1>
			
			<form 
				action="<%= request.getContextPath() %>/injection_modify_confirm.vac"
				method="POST"
				name="modify_form">
			
				<input class="basic_input" type="text" name="fvp_name" value="${selectedVaccinDto.fvp_name}" placeholder="Input name">
				<br>
				<select class="basic_select" name="ss_number">
					<option value="">-- 선택 --</option>
					<option value="720520-1018547" 
						<c:if test="${selectedVaccinDto.ss_number eq '720520-1018547'}">selected</c:if>>720520-1******</option>
					<option value="710210-2084561" 
						<c:if test="${selectedVaccinDto.ss_number eq '710210-2084561'}">selected</c:if>>710210-2******</option>
					<option value="941230-1075214"
						<c:if test="${selectedVaccinDto.ss_number eq '941230-1075214'}">selected</c:if>>941230-1******</option>
					<option value="650215-2050128" 
						<c:if test="${selectedVaccinDto.ss_number eq '650215-2050128'}">selected</c:if>>650215-2******</option>
					<option value="800710-1025698" 
						<c:if test="${selectedVaccinDto.ss_number eq '800710-1025698'}">selected</c:if>>800710-1******</option>
				</select>
				<br>
				<input class="basic_input" type="email" name="fvp_mail" value="${selectedVaccinDto.fvp_mail}" placeholder="Input mail">
				<br>
				<input class="basic_input" type="text" name="fvp_phone" value="${selectedVaccinDto.fvp_phone}" placeholder="Input phone">
				<br>
				<select class="basic_select" name="fv_location_no">
					<option value="">-- 선택 --</option>
					<option value="1001">A접종처</option>
					<option value="1002">B접종처</option>
					<option value="1003">C접종처</option>
					<option value="1004">D접종처</option>		
					<option value="1005">E접종처</option>	
				</select>
				<br>
				<select class="basic_select" name="fv_type">
					<option value="">-- 선택 --</option>
					<option value="A">A</option>
					<option value="B">B</option>
					<option value="C">C</option>
					<option value="D">D</option>
					<option value="E">E</option>
				</select>
				<br>
				<input class="basic_button" type="button" value="MODIFY" onclick="modifyForm();">
				<input class="basic_button" type="reset" value="RESET">
			</form>
			
		</div>
	</section>
	
	<jsp:include page="../include/footer.jsp" />

</body>
</html>