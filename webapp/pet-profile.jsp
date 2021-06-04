<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.fetchit.FetchIt.PetDao" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    ResultSet rs = PetDao.selectPetView(id);
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>FetchIT - Pet Profile</title>
</head>
<body>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

     <%@ include file="nav.html" %> 

    <div class="w-auto p-3" id="dogs table">
        <div class="row justify-content-md-center">
            <div class="col col-md-12">
<%
    try {
        if (rs != null) {
            while (rs.next()) {
%>
                <div class="card text-center border-dark">
                    <div class="card-header">Pet Profile - ID <%= rs.getInt(1) %></div>
                    <div class="card-body">
                        <div class="input-group mb-3">
                            <span class="input-group-text">Owner Name</span>
                            <input type="text" class="form-control" value="<%= rs.getString(2) %>" disabled>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">Pet Name</span>
                            <input type="text" class="form-control" value="<%= rs.getString(3) %>" disabled>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">Species</span>
                            <input type="text" class="form-control" value="<%= rs.getString(4) %>" disabled>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">Breed</span>
                            <input type="text" class="form-control" value="<%= rs.getString(5) %>" disabled>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">Age</span>
                            <input type="text" class="form-control" value="<%= rs.getInt(6) %>" disabled>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">Birth Date</span>
                            <input type="text" class="form-control" value="<%= rs.getDate(7) %>" disabled>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">Gender</span>
                            <input type="text" class="form-control" value="<%= rs.getString(8) %>" disabled>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">Weight</span>
                            <input type="text" class="form-control" value="<%= rs.getFloat(9) %>" disabled>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">Color</span>
                            <input type="text" class="form-control" value="<%= rs.getString(10) %>" disabled>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text">Vet Name</span>
                            <input type="text" class="form-control" value="<%= rs.getString(11) %>" disabled>
                        </div>
                    </div>
                    <div class="card-footer text-muted"><small>&copy; FetchIT 2021. Powered by Bootstrap</small></div>
                </div>
            </div>
<%
            }
            rs.close();
        }
    } catch (SQLException e) {
        e.printStackTrace();
    }
%>
        </div>
    </div>
</body>
</html>