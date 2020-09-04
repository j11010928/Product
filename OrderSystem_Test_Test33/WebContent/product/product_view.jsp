<%@page import="product.vo.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 전달받은 request 객체에서 데이터 가져오기
	ProductBean productBean = (ProductBean)request.getAttribute("product");
	String nowPage = (String)request.getAttribute("page");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC 게시판</title>

</head>
<body>
	<!-- 게시판 글 조회 -->
	<section id="articleForm">
		<h2>상세보기</h2>
		<section id="basicInfoArea">
			상품이미지 : 
			<%if(productBean.getItem_img() != null) { %>
				<!-- 파일이름 클릭 시 새창에서 다운로드 작업 수행 -->	
<%-- 				<a href="BoardFileDown.bo?file_name=<%=productBean.getBoard_file()%>" target="blank"><%=article.getBoard_file() %></a> --%>
				<img src = "<%=productBean.getItem_img() %>">
			<%}%><br>
			상품이름 : <%=productBean.getItem_name() %><br>
			상품가격 : <%=productBean.getItem_price() %><br>
			카테고리 : <%=productBean.getItem_category() %><br>
			상품정보 : <%=productBean.getItem_info() %><br>
			칼로리 : <%=productBean.getItem_calorie() %><br>
			원산지 : <%=productBean.getItem_origin() %><br>	
			
			
		</section>
		
	</section>
	<section id="commandList">
		<a href="ProductModifyForm.po?item_num=<%=productBean.getItem_num()%>&page=<%=nowPage %>"><input type="button" value="수정" ></a>
		<a href="ProductDeleteForm.po?item_num=<%=productBean.getItem_num()%>&page=<%=nowPage %>"><input type="button" value="삭제" ></a>
		<a href="ProductList.po?page=<%=nowPage %>"><input type="button" value="목록" ></a>
	</section>
</body>
</html>


















