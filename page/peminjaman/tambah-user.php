<?php
if (isset($_POST['simpan'])) {
    $query = mysqli_query($connection, "INSERT INTO peminjaman SET nama = '{$_POST['nama']}', buku_id = '{$_POST['buku_id']}', tanggal_kembali = '{$_POST['tanggal_kembali']}', `status` = '{$_POST['status']}'");
    if ($query) {
        echo '<div class="alert alert-success" role="alert">Penambahan data berhasil !</div>';
    } else {
        echo '<div class="alert alert-danger" role="alert">Penambahan data gagal !</div>';
    }
}


$sql = "SELECT * FROM `buku` ";
$all_buku = mysqli_query($connection, $sql);
?>
<div class="card">
    <div class="card-header">
        Peminjaman
    </div>
    <div class="card-body">
        <form action="" method="post">
            <div class="container">
                <div class="row">
                    <div class="col-6">
                        <div class="mb-3">
                            <label for="nama">Nama</label>
                            <input type="text" class="form-control" name="nama" id="nama" value="<?= $model->nama ?>">
                        </div>
                        <div class="mb-3">
                            <label for="tanggal_kembali">tanggal_kembali</label>
                            <input type="date" class="form-control" name="tanggal_kembali" id="tanggal_kembali" value="<?= $model->tanggal_kembali ?>">
                        </div>
                        <div class="mb-3">
                            <label for="buku_id">Buku</label>
                            <select name="buku_id">
                                <?php while ($buku = mysqli_fetch_array($all_buku, MYSQLI_ASSOC)) :; ?>
                                    <option value="<?php echo $buku["buku_id"]; ?>">
                                        <?php echo $buku["judul"]; ?>
                                    </option>
                                <?php endwhile; ?>
                            </select>
                        </div>
                        <div class="d-flex align-items-start">
                            <div class="col-2">
                                <button type="submit" name="simpan" class="btn btn-primary">Simpan</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>