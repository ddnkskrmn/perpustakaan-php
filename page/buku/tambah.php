<?php
if (isset($_POST['simpan'])) {
    $query = mysqli_query($connection, "INSERT INTO buku SET judul = '{$_POST['judul']}', penulis = '{$_POST['penulis']}', penerbit = '{$_POST['penerbit']}', tahun_terbit = '{$_POST['tahun_terbit']}', isbn = '{$_POST['isbn']}'");
    if ($query) {
        echo '<div class="alert alert-success" role="alert">Penambahan data berhasil !</div>';
    } else {
        echo '<div class="alert alert-danger" role="alert">Penambahan data gagal !</div>';
    }
}

$query = mysqli_query($connection, "SELECT * FROM buku WHERE id = '{$_GET['id']}'");
$model = mysqli_fetch_object($query);

?>
<div class="card">
    <div class="card-header">
        Edit Buku
    </div>
    <div class="card-body">
        <form action="" method="post">
            <div class="container">
                <div class="row">
                    <div class="col-6">
                        <div class="mb-3">
                            <label for="judul">Judul Buku</label>
                            <input type="text" class="form-control" name="judul" id="judul" value="<?= $model->judul ?>">
                        </div>
                        <div class="mb-3">
                            <label for="penulis">Penulis</label>
                            <input type="text" class="form-control" name="penulis" id="penulis" value="<?= $model->penulis ?>">
                        </div>
                        <div class="mb-3">
                            <label for="penerbit">Penerbit</label>
                            <input type="text" class="form-control" name="penerbit" id="penerbit" value="<?= $model->penerbit ?>">
                        </div>
                        <div class="mb-3">
                            <label for="tahun_terbit">Tahun Terbit</label>
                            <input type="text" class="form-control" name="tahun_terbit" id="tahun_terbit" value="<?= $model->tahun_terbit ?>">
                        </div>
                        <div class="mb-3">
                            <label for="isbn">ISBN</label>
                            <input type="text" class="form-control" name="isbn" id="isbn" value="<?= $model->isbn ?>">
                        </div>
                        <div class="d-flex align-items-start">
                            <div class="col-2">
                                <button type="submit" name="simpan" class="btn btn-primary">Simpan</button>
                            </div>
                            <div class="col-6">
                                <a href="index.php?page=buku/index.php" class="btn btn-outline-dark">Klik disini untuk kembali</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>