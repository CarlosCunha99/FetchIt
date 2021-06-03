<%@ page import="com.fetchit.FetchIt.LoginDao" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<jsp:useBean id="obj" class="com.fetchit.FetchIt.LoginBean"/>
<jsp:setProperty property="*" name="obj"/>

<%
    //    boolean status = LoginDao.validate(obj);
    ResultSet rs = LoginDao.validate(obj);
    try {
        if (rs.next()) {
            session.setAttribute("session","TRUE");
            try {
                session.setAttribute("role", rs.getString(4));
            } catch (SQLException e) {
                e.printStackTrace();
            }
            response.sendRedirect("index.jsp");
        } else {
    %>
    <jsp:include page="login.jsp"/>
    <script>
        document.getElementById("loginError").innerHTML =
            "<hr class='my-4'><small class='text-danger'>Incorrect ID/Password combination.</small>"
    </script>
    <%
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
