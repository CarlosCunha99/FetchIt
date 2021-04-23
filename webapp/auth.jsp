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
<jsp:include page="login.jsp"/>
<script>
    document.getElementById("loginError").innerHTML = "<hr class='my-4'><small class='text-danger'>Incorrect ID/Password combination.</small>"
</script>
<%
    }
%>