<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mijn vloeren</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">
    </script>
</head>

<body>
    <h1>Mijnvloeren.nl</h1>
    <div class="container">
        <?php
            include 'config/database.php';

            $database = new Database();
            $db = $database->getConnection();

            //info uit product tabel
            $sql = "SELECT * FROM product";
            $result = $db->query($sql);
            while ($row = $result->fetch_assoc()) {

            //info uit categorie tabel
            $categorie_id = $row['categorie_id'];
            $sql = "SELECT `naam` FROM categorie WHERE id=$categorie_id";
            $test = $db->query($sql);
            $categorie_naam = $test->fetch_assoc();

            //info uit sub_categorie tabel
            $sub_categorie_id = $row['sub_categorie_id'];
            $sql = "SELECT `naam` FROM sub_categorie WHERE id=$sub_categorie_id";
            $test = $db->query($sql);
            $sub_categorie_naam = $test->fetch_assoc();
            
        ?>
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">ID</th>
                    <th scope="col">Naam</th>
                    <th scope="col">Beschrijving</th>
                    <th scope="col">Prijs</th>
                    <th scope="col">Dikte</th>
                    <th scope="col">Categorie</th>
                    <th scope="col">Materiaal</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th scope="row"><?= $row['id']; ?></th>
                    <td><?= $row['naam']; ?></td>
                    <td><?= $row['beschrijving']; ?></td>
                    <td>€<?= $row['prijs']; ?></td> 
                    <td><?= $row['dikte']; ?>mm</td>
                    <td><?= $categorie_naam['naam']; ?></td>
                    <td><?= $sub_categorie_naam['naam']; ?></td>
                </tr>
            </tbody>
        </table>
        <?php } ?>
    </div>
</body>

</html>