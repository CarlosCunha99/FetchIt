<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>FetchIT - Appointments</title>
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

    <%@ include file="nav.html" %>

    <div class="container" id="body">
        <div class="w-auto p-3" id="dogs table">
            <div class="row justify-content-md-center">
                <div class="col col-md-12">
                    <div class="card text-center border-dark">
                        <div class="card-header">List of Appointments</div>
                        <div class="card-body">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">Search</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Search for names..." id="searchInput" onkeyup="search()">
                                <a href="new-appointment.jsp" class="btn btn-outline-secondary">+ Create Appointment</a>
                            </div>
                            <table class="table table-striped table-bordered table-hover text-center">
                                <thead>
                                    <tr>
                                        <th scope="col">Appointment ID</th>
                                        <th scope="col">Type</th>
                                        <th scope="col">Vet Name</th>
                                        <th scope="col">Pet Name</th>
                                        <th scope="col">Owner Name</th>
                                        <th scope="col">Date</th>
                                        <th scope="col">Observations</th>
                                    </tr>
                                </thead>
                                <tbody id="tableBody">
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Vaccination</td>
                                        <td>John Walker</td>
                                        <td>Black Panter</td>
                                        <td>Steve Rogers</td>
                                        <td id="appointment_date">25/10/21</td>
                                        <td>Next dose is on 25/12/21</td>
                                      </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="card-footer text-muted"><small>&copy; FetchIT 2021. Powered by Bootstrap</small></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>