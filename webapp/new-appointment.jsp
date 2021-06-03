<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>FetchIt - New Appointment</title>
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

    <%@ include file="nav.html" %>

    <div class="col-md-8 offset-md-2 text-center">
        <div class="card text-center border-dark">
            <div class="card-header">New Appointment</div>
            <div class="card-body">
                <form class="row g-3 needs-validation" novalidate>
                    <div class="col-md-6">
                        <label for="inputNIF" class="form-label">Owner's NIF</label>
                        <input type="text" class="form-control" id="inputNIF" placeholder="NIF" required>
                    </div>
                    <div class="col-md-6">
                        <!-- Select do nome do animal através do NIF do dono -->
                        <label for="selectPet">Pets</label>
                        <select class="form-control" id="selectPet">
                            <option>Nome A</option>
                            <option>Nome B</option>
                            <option>3</option>
                            <option>4</option>
                            <option>5</option>
                        </select>
                    </div>
                    <div class="input-group w-100 p-3">
                        <span class="input-group-text">Observações</span>
                        <textarea class="form-control" aria-label="With textarea" style="height: 100px;"></textarea>
                    </div>
                    <div class="col-md-12 w-25 p-3 text-center">
                        <input type="date">
                        <div class="p-3">
                            <select class="form-select"    name="hourPicker" id="newAppointmentHours">
                                <option value="9">09</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                                <option value="16">16</option>
                                <option value="17">17</option>
                                <option value="18">18</option>
                                <option value="19">19</option>
                            </select>
                            <select name="minutesPicker" id="newAppointmentMinutes">
                                <option value="0">00</option>
                                <option value="15">15</option>
                                <option value="30">30</option>
                                <option value="45">45</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12 w-100 p-3">
                        <input type="submit" class="btn btn-secondary" value="Submit" name="submit">
                    </div>
                </form>
            </div>
        </div>
        <div class="card-footer text-muted"><small>&copy; FetchIT 2021. Powered by Bootstrap</small></div>
    </div>
</body>
</html>