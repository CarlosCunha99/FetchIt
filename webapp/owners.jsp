<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>FetchIT - Owners</title>
</head>
<body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.1/dist/umd/popper.min.js" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.min.js" integrity="sha384-j0CNLUeiqtyaRmlzUHCPZ+Gy5fQu0dQ6eZ/xAww941Ai1SxSY+0EQqNXNE6DZiVc" crossorigin="anonymous"></script>

    <%@ include file="nav.html" %>

    <div class="container" id="body">
        <div class="w-auto p-3" id="owners table">
            <div class="row justify-content-md-center">
                <div class="col col-md-12">
                    <div class="card text-center border-dark">
                        <div class="card-header">List of Owners</div>
                        <div class="card-body">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">Search</span>
                                </div>
                                <input type="text" class="form-control" placeholder="Search for names..." id="searchInput" onkeyup="search()">
                                <a href="new-owner.jsp" class="btn btn-outline-secondary">+ Register Owner</a>
                            </div>
                            <table class="table table-striped table-bordered table-hover text-center">
                                <thead>
                                    <tr>
                                        <th scope="col">Client NIF</th>
                                        <th scope="col">Nome</th>
                                        <th scope="col">Contacto</th>
                                        <th scope="col">E-mail</th>
                                        <th scope="col">Morada</th>
                                        <th scope="col">Consult Pets</th>
                                    </tr>
                                </thead>
                                <tbody id="tableBody">
                                    <tr>
                                        <th scope="row">266547214</th>
                                        <td>F??bio Pereira</td>
                                        <td>916814684</td>
                                        <td>fabio@gmail.com</td>
                                        <td>Steve Rogers</td>
                                        <td><a href="#" class="btn btn-secondary">Pets</a></td>
                                    </tr>
                                    <tr>
                                        <th scope="row">266547214</th>
                                        <td>Carlos Cunha</td>
                                        <td>925062561</td>
                                        <td>carlos@gmail.com</td>
                                        <td>Rua dr engenheiro </td>
                                        <td><a href="#" class="btn btn-secondary">Pets</a></td>
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