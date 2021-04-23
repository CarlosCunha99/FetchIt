<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>FetchIT - Dogs</title>
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

    <%@ include file="nav.html" %>

    <div class="w-auto p-3" id="dogs table">
        <div class="row justify-content-md-center">
            <div class="col col-md-12">
                <div class="card text-center border-dark">
                    <div class="card-header">List of Dogs</div>
                    <div class="card-body">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <label for="searchInput"><span class="input-group-text" id="basic-addon1">Name</span></label>
                            </div>
                            <input type="text" class="form-control" placeholder="Search for names..." id="searchInput" onkeyup="search()">
                        </div>
                        <table class="table table-striped table-bordered table-hover text-center">
                            <thead>
                                <tr>
                                    <th scope="col">Pet ID</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Age</th>
                                    <th scope="col">Birth</th>
                                    <th scope="col">Breed</th>
                                    <th scope="col">Gender</th>
                                    <th scope="col">Weight</th>
                                    <th scope="col">Color</th>
                                    <th scope="col">Vet ID</th>
                                    <th scope="col">Owner ID</th>
                                </tr>
                            </thead>
                            <tbody id="tableBody">
                            <%
                                try {
                                    Class.forName("com.mysql.cj.jdbc.Driver");
                                } catch (ClassNotFoundException e) {
                                    e.printStackTrace();
                                }
                                try (
                                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fetchit","root","admin1234");
                                        Statement st = con.createStatement();
                                ){
                                    ResultSet rs = st.executeQuery("select * from dogs");
                                    while (rs.next()) {
                                        out.print("<tr><td scope='row'>"+rs.getInt(1)+"</td>");
                                        out.print("<td>"+rs.getString(2)+"</td><td>"+rs.getInt(3)+"</td>");
                                        out.print("<td>"+rs.getDate(4)+"</td><td>"+rs.getString(5)+"</td>");
                                        out.print("<td>"+rs.getString(6)+"</td><td>"+rs.getFloat(7)+"</td>");
                                        out.print("<td>"+rs.getString(8)+"</td>");
                                        out.print("<td>"+rs.getInt(9)+"</td><td>"+rs.getInt(10)+"</td></tr>");
                                    }
                                } catch (SQLException throwables) {
                                    throwables.printStackTrace();
                                }
                            %>
                            </tbody>
                        </table>
                    </div>
                    <div class="card-footer text-muted"><small>&copy; FetchIT 2021. Powered by Bootstrap</small></div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function search() {
            let input, filter, tb, tr, td, textValue;

            input = document.getElementById("searchInput")
            filter = input.value.toUpperCase()
            tb = document.getElementById("tableBody")
            tr = tb.getElementsByTagName("tr")

            for (let i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")
                textValue = td[1].innerText;
                if (textValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    </script>
</body>
</html>