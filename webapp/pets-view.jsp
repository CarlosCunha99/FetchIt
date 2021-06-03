<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>FetchIT - PetPorfile</title>
</head>
<body>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

     <%@ include file="nav.html" %> 

    <div class="w-auto p-3" id="dogs table">
        <div class="row justify-content-md-center">
            <div class="col col-md-12">
                <div class="card text-center border-dark">
                    <div class="card-header">Pet - Porfile</div>
                    <div class="card-body">
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Pet-Name</span>
                            <input type="text" class="form-control" placeholder="Pet-name" aria-label="Username" aria-describedby="basic-addon1" disabled>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Owner-Name</span>
                            <input type="text" class="form-control" placeholder="Owner" aria-label="Owner-Name" aria-describedby="basic-addon1" disabled>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Species</span>
                            <input type="text" class="form-control" placeholder="Species" aria-label="Species" aria-describedby="basic-addon1" disabled>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Breed</span>
                            <input type="text" class="form-control" placeholder="Breed" aria-label="Breed" aria-describedby="basic-addon1" disabled>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Gender</span>
                            <input type="text" class="form-control" placeholder="Gender" aria-label="Gender" aria-describedby="basic-addon1" disabled>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Colour</span>
                            <input type="text" class="form-control" placeholder="Colour" aria-label="Colour" aria-describedby="basic-addon1" disabled>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Weight</span>
                            <input type="text" class="form-control" placeholder="Weight" aria-label="Weight" aria-describedby="basic-addon1" disabled>
                        </div>
                        <div class="input-group mb-3">
                            <span class="input-group-text" id="basic-addon1">Age</span>
                            <input type="text" class="form-control" placeholder="Age" aria-label="Age" aria-describedby="basic-addon1" disabled>
                        </div>
                    </div>
                    <div class="card-footer text-muted"><small>&copy; FetchIT 2021. Powered by Bootstrap</small></div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>