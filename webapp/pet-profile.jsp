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
                    <div class="card-header"><h2>Pet Profile - ID <%= rs.getInt(1) %></h2></div>
                    <div class="card-body">
                        <div class="col-auto">
                            <label for="inputPassword6" class="col-form-label"><h4>Owner name</h4></label>
                            </div>
                            <div class="col-auto">
                            <span id="passwordHelpInline" class="form-text">
                                <h5><%= rs.getString(3) %></h5>
                            </span>
                            </div>
                            <hr style="height:2px;border-width:0;color:gray;background-color:gray">
                        <div class="col-auto">
                            <label for="inputPassword6" class="col-form-label"><h4>Pet Name</h4></label>
                          </div>
                          <div class="col-auto">
                            <span id="passwordHelpInline" class="form-text">
                               <h5><%= rs.getString(2) %></h5>
                            </span>
                          </div>
                          <hr style="height:2px;border-width:0;color:gray;background-color:gray">
                          <div class="row">
                            <div class="col">
                                <label for="inputPassword6" class="col-form-label"><h4>Species</h4></label>
                                <span id="passwordHelpInline" class="form-text">
                                    <h5><%= rs.getString(4) %></h5>
                                  </span>
                            </div>
                            <div class="col">
                                <label for="inputPassword6" class="col-form-label"><h4>Breed</h4></label>
                                <span id="passwordHelpInline" class="form-text">
                                    <h5><%= rs.getString(5) %></h5>
                                  </span>
                            </div>
                          </div>
                          <hr style="height:2px;border-width:0;color:gray;background-color:gray">
                          <div class="row">
                            <div class="col">
                                <label for="inputPassword6" class="col-form-label"><h4>Birth Date</h4></label>
                                <span id="passwordHelpInline" class="form-text">
                                    <h5><%= rs.getString(7) %></h5>
                                  </span>
                            </div>
                            <div class="col">
                                <label for="inputPassword6" class="col-form-label"><h4>Age</h4></label>
                                <span id="passwordHelpInline" class="form-text">
                                    <h5><%= rs.getString(6) %></h5>
                                  </span>
                          </div>
                          </div>
                          <hr style="height:2px;border-width:0;color:gray;background-color:gray">
                          <div class="col-auto">
                                <label for="inputPassword6" class="col-form-label"><h4>Weight</h4></label>
                                </div>
                                <div class="col-auto">
                                <span id="passwordHelpInline" class="form-text">
                                    <h5><%= rs.getString(9) %></h5>
                                </span>
                            </div>
                            <hr style="height:2px;border-width:0;color:gray;background-color:gray">

                            <div class="col-auto">
                                <label for="inputPassword6" class="col-form-label"><h4>Color</h4></label>
                                </div>
                                <div class="col-auto">
                                <span id="passwordHelpInline" class="form-text">
                                    <h5><%= rs.getString(10) %></h5>
                                </span>
                            </div>
                            <hr style="height:2px;border-width:0;color:gray;background-color:gray">
                            <div class="col-auto">
                                <label for="inputPassword6" class="col-form-label"><h4>Vet Name</h4></label>
                                </div>
                                <div class="col-auto">
                                <span id="passwordHelpInline" class="form-text">
                                    <h5><%= rs.getString(11) %></h5>
                                </span>
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