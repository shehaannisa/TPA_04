-- Active: 1668151764243@@127.0.0.1@3306@toko_online
INSERT INTO pelanggan (id_pelanggan, nama_pelanggan, alamat_pelanggan, jenis_kelamin) VALUES
(01, 'sheha', 'klaten, Jawa Tengah', 'Wanita'),
(02, 'adi mas', 'karang anyar, Jawa Tengah', 'Pria'),
(03, 'luthfi', 'DKI Jakarta', 'Wanita'),
(04, 'annisa', 'solo, Jawa Tengah', 'Wanita'),
(05, 'yoga', 'ngawi, Jawa Timur', 'Pria'),
(06, 'aziz', 'malang, Jawa Timur', 'Pria'),
(07, 'kevin', 'semarang, Jawa Tengah', 'Pria'),
(08, 'shafa', 'surabaya, Jawa Timur', 'Wanita'),
(09, 'nilam', 'sragen, Jawa Tengah', 'Wanita'),
(10, 'danar', 'kediri, Jawa Timur', 'Pria');

INSERT INTO order_item (id_order, id_pelangganFK, tanggal_order, jumlah_bayar, jenis) VALUES
(501, 01, '2022-10-01', 100000, 'debit'),
(502, 02, '2022-08-02', 75000, 'kredit'),
(503, 03, '2022-09-03', 1500000, 'kredit'),
(504, 04, '2022-10-04', 92500, 'debit'),
(505, 05, '2022-10-05', 274000, 'debit'),
(506, 06, '2022-09-06', 47800, 'kredit'),
(507, 07, '2022-09-08', 215000, 'debit'),
(508, 08, '2022-08-08', 50000, 'kredit'),
(509, 09, '2022-09-09', 297000, 'kredit'),
(510, 10, '2022-10-10', 65000, 'debit');

INSERT INTO barang (id_barang, nama_barang, jenis_barang, stock_barang, harga) VALUES
(101, 'Chimory', 'Minuman', 200, 10000),
(102, 'Kartu indosat', 'SIM Card', 150, 75000),
(103, 'Sapu', 'Alat kebersihan', 89, 30000),
(104, 'Realme c17', 'Barang elektronik', 35, 4000000),
(105, 'xiomay pro', 'Barang elektronik', 54, 2000000),
(106, 'Chitato', 'Makanan', 95, 12000),
(107, 'Laptop ASUS', 'Barang elektronik', 22, 10000000),
(108, 'Almari', 'Furniture', 10, 150000),
(109, 'Kemeja kotak-kotak', 'Pakaian', 30, 35000),
(110, 'Jersey Basket', 'Pakaian', 70, 120000);

INSERT INTO detail_order (id_orderFK, id_barangFK, jumlah_beli, kategori_order) VALUES
(501, 101, 2, 'dikemas'),
(502, 102, 5, 'selesai'),
(503, 103, 7, 'dikirim'),
(504, 104, 3, 'selesai'),
(505, 105, 10, 'dikemas'),
(506, 106, 4, 'dikemas'),
(507, 107, 6, 'dikirim'),
(508, 108, 9, 'selesai'),
(509, 109, 11, 'dikemas'),
(510, 110, 15, 'dikirim');