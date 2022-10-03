<?php
    require "../../script/conn.php";

    $id = $_GET["id"];

    $result = mysqli_query($conn, "SELECT * FROM acara WHERE id = $id");

    $row = mysqli_fetch_row($result);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $row[1]; ?> | Kementerian Pariwisata</title>
    <link rel="stylesheet" href="/style/home.css">
    <link rel="stylesheet" href="/style/event.css">
    <link rel="icon" href="/favicon.ico">
</head>
<body>
    <header>
        <div class="header-con">
            <a href="/"><img src="/asset/img/icon.webp" alt="" class="icon"></a>
            <div class="nav-con">
                <a href="/rekomendasi/"><button>Rekomendasi Tempat Wisata</button></a>
                <a href="/events/"> <button>Event di Indonesia</button> </a>
            </div>
        </div>
    </header>

    <article>
        <img src="<?= $row[4]; ?>" alt="">

        <h1><?= $row[1]; ?> | <?= $row[2]; ?></h1>


        <h2>Waktu Acara</h2>
        <p> <?= $row[3]; ?></p>

        <h2>Galeri Acara</h2>
        <img src="<?= $row[4]; ?>" alt="">

    </article>
    
</body>
</html>