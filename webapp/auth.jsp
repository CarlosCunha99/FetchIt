<%@ page import="com.fetchit.FetchIt.LoginDao" %>
<jsp:useBean id="obj" class="com.fetchit.FetchIt.LoginBean"/>
<jsp:setProperty property="*" name="obj"/>

<%
    boolean status = LoginDao.validate(obj);
    if (status) {
        session.setAttribute("session","TRUE");
        response.sendRedirect("index.jsp");
    } else {
%>
<jsp:include page="login.jsp"></jsp:include>
<%
    }
%>