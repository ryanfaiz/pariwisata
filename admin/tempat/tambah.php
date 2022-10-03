<?php
    session_start();
    require "../../script/auth.php";
    require "../../script/conn.php";

    if ( isset($_POST["submit"])) {
        $provinsi = htmlspecialchars($_POST["provinsi"]);
        $nama = htmlspecialchars($_POST["nama"]);
        $kategori = htmlspecialchars($_POST["kategori"]);
        $gmap = htmlspecialchars($_POST["gmap"]);
        $buka = htmlspecialchars($_POST["buka"]);
        $tutup = htmlspecialchars($_POST["tutup"]);
        $gambar1 = htmlspecialchars($_POST["gambar1"]);
        $gambar2 = htmlspecialchars($_POST["gambar2"]);
        $gambar3 = htmlspecialchars($_POST["gambar3"]);
        $youtube = htmlspecialchars($_POST["youtube"]);

        $insert = "INSERT INTO `tempat`(`id`, `provinsi`, `nama`, `kategori`, `gmap`, `buka`, `tutup`, `gambar1`, `gambar2`, `gambar3`, `youtube`) VALUES (NULL, '$provinsi', '$nama', '$kategori', '$gmap' ,'$buka', '$tutup', '$gambar1', '$gambar2', '$gambar3', '$youtube')";

        mysqli_query($conn, $insert);

        $_SESSION["type"] =  "data berhasil ditambah";
        $_SESSION["dst"] = "/admin/tempat";

        header("Location: /admin/berhasil.php");
        exit;
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Data | Kementerian Pariwisata</title>
    <link rel="stylesheet" href="/style/input.css">
    <link rel="icon" href="/favicon.ico">
</head>
<body>
    <h1>Tambah Data Tempat Wisata</h1>
    <form action="" method="post" enctype="multipart/form-data">
        <h3>Provinsi</h3>
        <input type="text" name="provinsi" id="provinsi" required autocomplete="off">

        <h3>Nama Tempat Wisata</h3>
        <input type="text" name="nama" id="nama" required autocomplete="off">

        <h3>Kategori Tempat Wisata</h3>
        <input type="text" name="kategori" id="kategori" required autocomplete="off">

        <h3>Link Google Maps</h3>
        <input type="url" name="gmap" id="gmap" required autocomplete="off">

        <h3>Jam Buka Operasional</h3>
        <input type="time" name="buka" id="buka" required autocomplete="off">

        <h3>Jam Tutup Operasional</h3>
        <input type="time" name="tutup" id="tutup" required autocomplete="off">
        
        <h3>Link Gambar 1</h3>
        <input type="url" name="gambar1" id="gambar1" required autocomplete="off">

        <h3>Link Gambar 2</h3>
        <input type="url" name="gambar2" id="gambar2" required autocomplete="off">

        <h3>Link Gambar 3</h3>
        <input type="url" name="gambar3" id="gambar3" required autocomplete="off">

        <h3>Link Video YouTube</h3>
        <input type="url" name="youtube" id="youtube" required autocomplete="off">

        <br><br>
        <button type="submit" name="submit">Tambahkan</button>
    </form>

</body>
</html>