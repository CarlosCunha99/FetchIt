<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>FetchIt - Update Pet</title>
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

    <%@ include file="nav.html" %>

    <div class="col-md-8 offset-md-2 text-center">
        <div class="card text-center border-dark">
            <div class="card-header">Update Pet</div>
            <div class="card-body text-center">
                <form>
                    <div class="input-group mb-3">
                        <label class="input-group-text" for="selectSpecies">Species</label>
                        <select class="form-select" id="selectSpecies" aria-label="species_select" name="speciesInput">
                            <option selected>Open this select menu</option>
                            <option value="1">Cat</option>
                            <option value="2">Dog</option>
                            <option value="3">Other</option>
                          </select>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">Owner</span>
                        </div>
                        <input type="text" class="form-control" placeholder="NIF" aria-label="Owner" name="ownerInput">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">Pet Name</span>
                        </div>
                        <input type="text" class="form-control" placeholder="Name" aria-label="Pet" name="pet_nameInput">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">Pet Breed</span>
                        </div>
                        <input type="text" class="form-control" placeholder="Breed" aria-label="Breed" name="pet_breedInput">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">Pet Birth Date</span>
                        </div>
                        <input type="text" class="form-control" placeholder="dd/mm/aaaa" aria-label="birth" name="pet_birthInput">
                    </div>
                    <div class="input-group mb-3">
                        <label class="input-group-text" for="selectgender">Gender</label>
                        <select class="form-select" id="selectgender" aria-label="gender_select" name="GenderInput">
                            <option selected>Open this select menu</option>
                            <option value="1">Male</option>
                            <option value="2">Female</option>
                          </select>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">Pet Weight</span>
                        </div>
                        <input type="text" class="form-control" placeholder="weight in kg" aria-label="weight" name="weightInput">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">Pet Color</span>
                        </div>
                        <input type="text" class="form-control" placeholder="Ex: black/white" aria-label="color" name="colorInput">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text" id="basic-addon1">Responsible Vet</span>
                        </div>
                        <input type="text" class="form-control" placeholder="Responsible Vet ID" aria-label="vet" name="vetInput">
                    </div>
                    <input type="submit" class="btn btn-secondary" value="Create" name="submit">
                </form>
            </div>
            <div class="card-footer text-muted"><small>&copy; FetchIT 2021. Powered by Bootstrap</small></div>
        </div>
    </div>
</body>
</html>