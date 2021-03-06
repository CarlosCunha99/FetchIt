<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>FetchIt - New User</title>
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

    <%@ include file="nav.html" %>

    <div class="col-md-8 offset-md-2 text-center">
        <div class="card text-center border-dark">
            <div class="card-header">New User</div>
            <div class="card-body text-center">
                <form>
                    <div class="row g-3 p-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="UserName"  name="usernameInput">
                        </div>
                    </div>
                    <div class="row g-3 p-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Password" name="passwordInput">
                        </div>
                    </div>
                    <div class="row g-3 p-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Name" name="nameInput">
                        </div>
                    </div>
                    <div class="col form-floating">
                            <input type="text" class="form-control" placeholder="Age" name="ageInput">
                        </div>
                    <div class="row g-3 p-3">
                        <div class="col">
                            <input type="email" class="form-control" placeholder="E-mail" name="emailInput">
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Contacto" name="contactoInput">
                        </div>
                    </div> 
                    <div class="row g-3 p-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Morada" name="moradaInput">
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="ZIP Code" name="ZIPInput">
                        </div>
                    </div>
                    <div class="row g-3 p-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Role" name="roleInput">
                        </div>
                    </div>
                    <input type="submit" class="btn btn-secondary" value="Create" name="submit">
                </form>
            </div>
            <div class="card-footer text-muted"><small>&copy; FetchIT 2021. Powered by Bootstrap</small></div>
        </div>
    </div>
</body>
</html>