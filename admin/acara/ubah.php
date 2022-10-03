<?php
    session_start();
    require "../../script/auth.php";
    require "../../script/conn.php";

    $id = $_GET["id"];

    $result = mysqli_query($conn, "SELECT * FROM acara WHERE id = $id");

    $row = mysqli_fetch_row($result);
    var_dump($row);

    if ( isset($_POST["submit"])) {
        $id = $_POST["id"];
        $nama = htmlspecialchars($_POST["nama"]);
        $lokasi = htmlspecialchars($_POST["lokasi"]);
        $date = htmlspecialchars($_POST["date"]);
        $gambar = htmlspecialchars($_POST['gambar']);
        $utama = htmlspecialchars($_POST['utama']);

        $update = "UPDATE `acara` SET `id`='$id',`nama`='$nama',`lokasi`='$lokasi',`waktu`='$date',`gambar`='$gambar',`utama`='$utama' WHERE id = $id";

        $query = mysqli_query($conn, $update);

        $_SESSION["type"] =  "data berhasil diubah";
        $_SESSION["dst"] = "/admin/acara";

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
    <title>Ubah Data | Kementerian Pariwisata</title>
    <link rel="stylesheet" href="/style/input.css">
    <link rel="icon" href="/favicon.ico">
</head>
<body>
    <h1>Ubah Data Acara</h1>
    <form action="" method="post">
        <input type="hidden" name="id" id="id" value="<?= $row[0]; ?>">

        <h3>Nama Acara</h3>
        <input type="text" name="nama" id="nama" required autocomplete="off" value="<?= $row[1]; ?>">

        <h3>Lokasi Acara</h3>
        <input type="text" name="lokasi" id="lokasi" required autocomplete="off" value="<?= $row[2]; ?>">

        <h3>Waktu Acara</h3>
        <input type="date" name="date" id="date" required autocomplete="off" value="<?= $row[3]; ?>">

        <h3>Link Gambar Thumbnail Acara</h3>
        <input type="url" name="gambar" id="gambar" required autocomplete="off" value="<?= $row[4]; ?>">

        <select id="utama" name="utama">
            <option value="Tidak" <?php if($row[5] === "Tidak"){echo "selected";} ?>>Tidak</option>
            <option value="Iya" <?php if($row[5] === "Iya"){echo "selected";} ?>>Iya</option>
        </select>
        
        <br><br>
        <button type="submit" name="submit">Simpan Perubahan</button>
    </form>

</body>
</html>