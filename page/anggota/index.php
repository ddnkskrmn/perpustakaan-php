<h1>Halaman Anggota</h1>
<!-- <a href="index.php?page=anggota/tambah.php" class="btn btn-sm btn-primary float-end">Tambah</a> -->
<table class="table">
    <tr>
        <th>Nama</th>
        <th>Email</th>
        <?php
        $query = mysqli_query($connection, "SELECT * FROM `user` LIMIT 0, 20");
        while ($model = mysqli_fetch_object($query)) :
        ?>
    <tr>
        <td><?= $model->username ?></td>
        <td><?= $model->email ?></td>
        <td>
            <a href="index.php?page=anggota/edit.php&id=<?= $model->id ?>" class="btn btn-sm btn-primary">Edit</a>
            <a href="index.php?page=anggota/hapus.php&id=<?= $model->id ?>" onclick="return confirm('Hapus data ini?')" class="btn btn-sm btn-danger">Hapus</a>
        </td>
    </tr>
<?php endwhile; ?>
</table>