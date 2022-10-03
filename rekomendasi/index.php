<?php
    require "../script/conn.php";
    
    $result = mysqli_query($conn, "SELECT * FROM tempat");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tempat Wisata | Kementerian Pariwisata</title>
    <link rel="stylesheet" href="/style/home.css">
    <link rel="stylesheet" href="/style/multiple.css">
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

    <h1>Tempat Wisata di Indonesia</h1>
    <div class="centre">
        <article>
            <?php while ( $row = mysqli_fetch_row($result)) : ?>
            <div class="card">
                <a href="/article/tempat/index.php?id=<?= $row[0]; ?>"><img src="<?= $row[7]; ?>" alt=""></a>
                <div class="container">
                    <a href="/article/tempat/index.php?id=<?= $row[0]; ?>""><h2><b><?= $row[2]; ?></b></h2></a>
                    <a href="/article/tempat/index.php?id=<?= $row[0]; ?>""><h4><?= $row[1]; ?></h4></a>
                </div>
            </div>
            <?php endwhile; ?>
    
        </article>

    </div>
</body>
</html>