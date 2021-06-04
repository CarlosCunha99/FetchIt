<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>FetchIt - New Pet</title>
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

    <%@ include file="nav.html" %>

    <div class="col-md-8 offset-md-2 text-center">
        <div class="card text-center border-dark">
            <div class="card-header">New Pet</div>
            <div class="card-body text-center">
                <form>
                    <div class="input-group mb-3">
                        <label class="input-group-text" for="selectSpecies">Species</label>
                        <select class="form-select" id="selectSpecies" aria-label="species_select" name="speciesInput">
                            <option selected value="Cão">Cão</option>
                            <option value="Gato">Gato</option>
                            <option value="Hamster">Hamster</option>
                          </select>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Owner ID</span>
                        </div>
                        <input type="text" class="form-control" placeholder="NIF" aria-label="Owner" aria-describedby="basic-addon1" name="ownerInput">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Pet Name</span>
                        </div>
                        <input type="text" class="form-control" placeholder="Name" aria-label="Pet" aria-describedby="basic-addon1" name="pet_nameInput">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Breed</span>
                        </div>
                        <input type="text" class="form-control" placeholder="Breed" aria-label="Breed" aria-describedby="basic-addon1" name="pet_breedInput">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Birth</span>
                        </div>
                        <input type="text" class="form-control" placeholder="dd/mm/aaaa" aria-label="birth" aria-describedby="basic-addon1" name="pet_birthInput">
                    </div>
                    <div class="input-group mb-3">
                        <label class="input-group-text" for="selectgender">Gender</label>
                        <select class="form-select" id="selectgender" aria-label="gender_select" name="GenderInput">
                            <option selected value="male">Male</option>
                            <option value="female">Female</option>
                          </select>
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Weight</span>
                        </div>
                        <input type="text" class="form-control" placeholder="E.g. 20.50" aria-label="weight" aria-describedby="basic-addon1" name="weightInput">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Color</span>
                        </div>
                        <input type="text" class="form-control" placeholder="E.g. white/cream" aria-label="color" aria-describedby="basic-addon1" name="colorInput">
                    </div>
                    <div class="input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="input-group-text">Veterinary ID</span>
                        </div>
                        <input type="text" class="form-control" placeholder="Veterinary responsible for the pet" aria-label="vet" aria-describedby="basic-addon1" name="vetInput">
                    </div>
                    <input type="submit" class="btn btn-secondary" value="Create" name="submit">
                </form>
            </div>
            <div class="card-footer text-muted"><small>&copy; FetchIT 2021. Powered by Bootstrap</small></div>
        </div>
    </div>
</body>
</html>