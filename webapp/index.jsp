<%@ page contentType="text/html;charset=UTF-8" %>
<%
    if (session.getAttribute("session") == "TRUE") {
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>FetchIT - <%= session.getAttribute("role") %> </title>
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

    <%@ include file="nav.html" %>

    <div class="container" id="Cards" >
        <div class="card-deck">
            <div class="card">
                <img src="img/appointment.png" class="card-img-top img-responsive" alt="Appointments" style="height: 150px;">
                <div class="card-body">
                    <h5 class="card-title card-link"><a href="appointments.jsp">Appointments</a></h5>
                    <p class="card-text">This is a longer card with supporting text below as a natural lead-in to
                        additional content. This content is a little bit longer.</p>
                </div>
            </div>
            <div class="card">
                <img src="img/animals.jpg" class="card-img-top img-responsive" alt="Animals" style="height: 150px;">
                <div class="card-body">
                    <h5 class="card-title card-link"><a href="dogs.jsp">Animals</a></h5>
                    <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                </div>
            </div>
            <div class="card">
                <img src="img/client.jpg" class="card-img-top img-responsive" alt="Owners" style="height:150px;">
                <div class="card-body">
                    <h5 class="card-title card-link"><a href="owners.jsp">Owners</a></h5>
                    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                        additional content. This card has even longer content than the first to show that equal height
                        action.</p>
                </div>
            </div>
            <div class="card">
                <img src="img/pet-shop.jpg" class="card-img-top img-responsive" alt="Shop" style="height: 150px;">
                <div class="card-body">
                    <h5 class="card-title card-link"><a href="#">Shop</a></h5>
                    <p class="card-text">Coming soon...</p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
<%
    } else {
        response.sendRedirect("login.jsp");
    }
%>