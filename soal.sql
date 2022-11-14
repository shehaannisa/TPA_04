-- Active: 1668151764243@@127.0.0.1@3306@toko_online
/* 1 pelanggan membeli 3 barang yang berbeda. */
INSERT INTO order_item (id_order, id_pelangganFK, tanggal_order, jumlah_bayar, jenis) VALUES
(111, 07, '2022-11-07', 270000, 'debit');
INSERT INTO detail_order (id_orderFK, id_barangFK, jumlah_beli, kategori_order) VALUES
(111, 107, 1, 'proses checkout');
INSERT INTO detail_order (id_orderFK, id_barangFK, jumlah_beli, kategori_order) VALUES
(111, 104, 2, 'proses checkout');
INSERT INTO detail_order (id_orderFK, id_barangFK, jumlah_beli, kategori_order) VALUES
(111, 102, 3, 'proses checkout');

/* Melihat 3 produk yang paling sering dibeli oleh pelanggan. */
SELECT detail_order.id_orderFK, detail_order.id_barangFK , detail_order.jumlah_beli,barang.nama_barang
FROM detail_order
INNER JOIN barang ON detail_order.id_barangFK= barang.id_barang
ORDER BY jumlah_beli DESC LIMIT 3 ;

/* Melihat Kategori barang yang paling banyak barangnya. */
SELECT nama_barang, jenis_barang, MAX(stock_barang) FROM barang;

/* Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir. */
SELECT ROUND(AVG(jumlah_bayar)) FROM order_item WHERE tanggal_order > (CURRENT_DATE() - interval 1 month);
