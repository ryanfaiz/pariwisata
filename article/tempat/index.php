<?php
    require "../../script/conn.php";

    $id = $_GET["id"];

    $result = mysqli_query($conn, "SELECT * FROM tempat WHERE id = $id");

    $row = mysqli_fetch_row($result);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $row[2]; ?> | Kementerian Pariwisata</title>
    <link rel="stylesheet" href="/style/home.css">
    <link rel="stylesheet" href="/style/single.css">
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
        <img src="<?= $row[7]; ?>" alt="">

        <h1><?= $row[2]; ?> | <?= $row[1]; ?></h1>

        <h2>Lokasi Tempat Wisata</h2>
        <div><div><iframe width="100%" height="500" id="gmap_canvas" src="<?= $row[4]; ?>" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><br><style>.mapouter{position:relative;text-align:right;height:500px;width:600px;}</style><style>.gmap_canvas {overflow:hidden;background:none!important;height:500px;width:600px;}</style></div></div>

        <h2>Jam Operasional Tempat Wisata</h2>
        <p>Jam Buka : <?= $row[5]; ?></p>
        <p>Jam Tutup : <?= $row[6]; ?></p>

        <h2>Galeri Tempat Wisata</h2>
        <img src="<?= $row[8]; ?>" alt="">
        <img src="<?= $row[9]; ?>" alt="">

        <h2>Video Tempat Wisata</h2>
        <iframe width="100%" height="315" src="<?= $row[10]; ?>" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </article>
    
</body>
</html>