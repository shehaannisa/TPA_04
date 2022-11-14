-- Active: 1667398424659@@127.0.0.1@3306@toko_online
UPDATE pelanggan SET alamat_pelanggan = 'Yogyakarta' WHERE nama_pelanggan = 'yoga';
UPDATE detail_order SET kategori_order = 'selesai' WHERE id_barangFK = 110;
UPDATE barang SET jenis_barang = 'Jajanan' WHERE nama_barang = 'Chitato';
UPDATE order_item SET jenis = 'debit' WHERE tanggal_order = '2022-09-09';