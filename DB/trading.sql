/*
Navicat MySQL Data Transfer

Source Server         : server
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : trading

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2013-08-31 10:10:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `aphistsaldoawalhutang`
-- ----------------------------
DROP TABLE IF EXISTS `aphistsaldoawalhutang`;
CREATE TABLE `aphistsaldoawalhutang` (
  `Nomor` char(5) NOT NULL,
  `SupID` varchar(10) NOT NULL,
  `NoBeli` varchar(20) NOT NULL,
  `Tgl` date DEFAULT NULL,
  `Jtgl` date DEFAULT NULL,
  `Val` varchar(5) DEFAULT NULL,
  `Tukar` decimal(18,8) DEFAULT NULL,
  `Saldo` decimal(28,8) DEFAULT NULL,
  `Ket` varchar(50) DEFAULT NULL,
  `UMuka` decimal(28,8) DEFAULT NULL,
  `Tglu` datetime DEFAULT NULL,
  `cabID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`Nomor`,`SupID`,`NoBeli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aphistsaldoawalhutang
-- ----------------------------

-- ----------------------------
-- Table structure for `apkartuhutang`
-- ----------------------------
DROP TABLE IF EXISTS `apkartuhutang`;
CREATE TABLE `apkartuhutang` (
  `bukti` varchar(20) NOT NULL,
  `nomor` varchar(5) NOT NULL,
  `jtran` varchar(3) NOT NULL,
  `company` varchar(10) DEFAULT NULL,
  `tgl` date DEFAULT NULL,
  `dk` varchar(1) DEFAULT NULL,
  `sup` varchar(10) DEFAULT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `nilai` decimal(28,8) DEFAULT NULL,
  `val` varchar(5) DEFAULT NULL,
  `tukar` decimal(18,8) DEFAULT NULL,
  `cabid` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`bukti`,`nomor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of apkartuhutang
-- ----------------------------
INSERT INTO `apkartuhutang` VALUES ('SLDAWLHTG1307001', '001', 'SAH', null, '2013-07-01', 'K', 'S000000001', '', '200000.00000000', 'ID', '1.00000000', '01');
INSERT INTO `apkartuhutang` VALUES ('SLDAWLHTG250813', '002', 'SAH', null, '2013-08-01', 'K', 'S000000002', null, '0.00000000', 'ID', '1.00000000', '01');

-- ----------------------------
-- Table structure for `apmutasihutang`
-- ----------------------------
DROP TABLE IF EXISTS `apmutasihutang`;
CREATE TABLE `apmutasihutang` (
  `SupID` varchar(10) NOT NULL,
  `ValID` varchar(5) NOT NULL,
  `Thn` year(4) NOT NULL,
  `Company` varchar(10) DEFAULT NULL,
  `Awal` decimal(28,8) DEFAULT '0.00000000',
  `Umuka` decimal(28,8) DEFAULT '0.00000000',
  `Giro` decimal(28,8) DEFAULT '0.00000000',
  `D1` decimal(28,8) DEFAULT '0.00000000',
  `D2` decimal(28,8) DEFAULT '0.00000000',
  `D3` decimal(28,8) DEFAULT '0.00000000',
  `D4` decimal(28,8) DEFAULT '0.00000000',
  `D5` decimal(28,8) DEFAULT '0.00000000',
  `D6` decimal(28,8) DEFAULT '0.00000000',
  `D7` decimal(28,8) DEFAULT '0.00000000',
  `D8` decimal(28,8) DEFAULT '0.00000000',
  `D9` decimal(28,8) DEFAULT '0.00000000',
  `D10` decimal(28,8) DEFAULT '0.00000000',
  `D11` decimal(28,8) DEFAULT '0.00000000',
  `D12` decimal(28,8) DEFAULT '0.00000000',
  `K1` decimal(28,8) DEFAULT '0.00000000',
  `K2` decimal(28,8) DEFAULT '0.00000000',
  `K3` decimal(28,8) DEFAULT '0.00000000',
  `K4` decimal(28,8) DEFAULT '0.00000000',
  `K5` decimal(28,8) DEFAULT '0.00000000',
  `K6` decimal(28,8) DEFAULT '0.00000000',
  `K7` decimal(28,8) DEFAULT '0.00000000',
  `K8` decimal(28,8) DEFAULT '0.00000000',
  `K9` decimal(28,8) DEFAULT '0.00000000',
  `K10` decimal(28,8) DEFAULT '0.00000000',
  `K11` decimal(28,8) DEFAULT '0.00000000',
  `K12` decimal(28,8) DEFAULT '0.00000000',
  `CabID` varchar(10) DEFAULT NULL,
  `NAkhir` decimal(28,8) DEFAULT '0.00000000',
  PRIMARY KEY (`SupID`,`ValID`,`Thn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of apmutasihutang
-- ----------------------------
INSERT INTO `apmutasihutang` VALUES ('S000000001', 'ID', '2012', null, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '10000000.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '01', '-10000000.00000000');
INSERT INTO `apmutasihutang` VALUES ('S000000001', 'ID', '2013', null, '-10000000.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '100000.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '200000.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '01', '-10300000.00000000');
INSERT INTO `apmutasihutang` VALUES ('S000000002', 'ID', '2013', null, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '01', '0.00000000');

-- ----------------------------
-- Table structure for `apnourut`
-- ----------------------------
DROP TABLE IF EXISTS `apnourut`;
CREATE TABLE `apnourut` (
  `TYPE` varchar(100) NOT NULL,
  `KODE` varchar(5) NOT NULL,
  `NOAKHIR` int(11) NOT NULL DEFAULT '0',
  `TGLU` datetime DEFAULT NULL,
  PRIMARY KEY (`TYPE`,`KODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of apnourut
-- ----------------------------
INSERT INTO `apnourut` VALUES ('Bayar Hutang', 'BH', '0', '2013-08-24 14:34:37');
INSERT INTO `apnourut` VALUES ('Invoice', 'IN', '0', '2013-08-24 14:34:37');
INSERT INTO `apnourut` VALUES ('Koreksi Hutang', 'KH', '0', '2013-08-24 14:34:37');
INSERT INTO `apnourut` VALUES ('Purchase Order', 'PO', '0', '2013-08-24 14:34:37');
INSERT INTO `apnourut` VALUES ('Retur Invoice', 'RI', '0', '2013-08-24 14:34:37');
INSERT INTO `apnourut` VALUES ('Saldo Awal Hutang', 'SH', '0', '2013-08-24 14:36:25');
INSERT INTO `apnourut` VALUES ('Uang Muka', 'UM', '0', '2013-08-24 14:34:37');

-- ----------------------------
-- Table structure for `apnourutketerangan`
-- ----------------------------
DROP TABLE IF EXISTS `apnourutketerangan`;
CREATE TABLE `apnourutketerangan` (
  `JTRAN` varchar(5) NOT NULL,
  `NOTRANS` varchar(20) NOT NULL,
  `TGLU` datetime DEFAULT NULL,
  PRIMARY KEY (`JTRAN`,`NOTRANS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of apnourutketerangan
-- ----------------------------

-- ----------------------------
-- Table structure for `apposisihutang`
-- ----------------------------
DROP TABLE IF EXISTS `apposisihutang`;
CREATE TABLE `apposisihutang` (
  `supid` varchar(10) NOT NULL,
  `hutang` decimal(28,8) NOT NULL,
  `Valid` varchar(5) NOT NULL,
  PRIMARY KEY (`supid`,`Valid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of apposisihutang
-- ----------------------------
INSERT INTO `apposisihutang` VALUES ('S000000001', '200000.00000000', 'ID');
INSERT INTO `apposisihutang` VALUES ('S000000002', '0.00000000', 'ID');

-- ----------------------------
-- Table structure for `apsaldoawalhutang`
-- ----------------------------
DROP TABLE IF EXISTS `apsaldoawalhutang`;
CREATE TABLE `apsaldoawalhutang` (
  `Nomor` char(5) NOT NULL,
  `SupID` varchar(10) NOT NULL,
  `NoBeli` varchar(20) NOT NULL,
  `Tgl` date DEFAULT NULL,
  `Jtgl` date DEFAULT NULL,
  `Val` varchar(5) DEFAULT NULL,
  `Tukar` decimal(18,8) DEFAULT NULL,
  `Saldo` decimal(28,8) DEFAULT NULL,
  `Ket` varchar(50) DEFAULT NULL,
  `UMuka` decimal(28,8) DEFAULT NULL,
  `Tglu` datetime DEFAULT NULL,
  `cabID` varchar(10) DEFAULT NULL,
  `LACC` char(1) DEFAULT 'F' COMMENT 'Jika LACC sudah True maka tidak bisa dilakukan perubahan ataupun dihapus',
  `LACC_Tgl` datetime DEFAULT NULL,
  `LACC_By` varchar(50) DEFAULT NULL COMMENT 'Untuk menyimpan informasi Acc oleh user yang bersangkutan',
  PRIMARY KEY (`Nomor`,`SupID`,`NoBeli`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of apsaldoawalhutang
-- ----------------------------
INSERT INTO `apsaldoawalhutang` VALUES ('001', 'S000000001', 'SLDAWLHTG1307001', '2013-07-01', '2013-07-08', 'ID', '1.00000000', '200000.00000000', '', '0.00000000', '2013-08-25 22:54:32', '01', 'T', '2013-08-25 22:54:32', 'ADMINISTRATO');

-- ----------------------------
-- Table structure for `apsupplier`
-- ----------------------------
DROP TABLE IF EXISTS `apsupplier`;
CREATE TABLE `apsupplier` (
  `SUPID` varchar(10) NOT NULL,
  `CabID` varchar(10) NOT NULL DEFAULT '',
  `Nama` varchar(30) DEFAULT NULL,
  `AL1` varchar(30) DEFAULT NULL,
  `AL2` varchar(30) DEFAULT NULL,
  `Telp` varchar(30) DEFAULT NULL,
  `Contact_Perso` varchar(30) DEFAULT NULL,
  `NPWP` varchar(15) DEFAULT NULL,
  `Term` smallint(6) DEFAULT '0',
  `Klink` varchar(10) DEFAULT NULL,
  `valID` varchar(5) DEFAULT NULL,
  `TglU` datetime DEFAULT NULL,
  `wilID` varchar(10) DEFAULT NULL,
  `Fax` varchar(30) DEFAULT NULL,
  `LNOAktif` char(1) DEFAULT 'N' COMMENT 'N : Aktif | Y : Non Aktif',
  PRIMARY KEY (`SUPID`,`CabID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of apsupplier
-- ----------------------------
INSERT INTO `apsupplier` VALUES ('S000000001', '01', 'AFES OKTAVIANUS', 'JL. MANYAR KARTIKA GG 8 NO 44', 'SURABAYA', '-', '', '-', '7', '', 'ID', '2013-08-25 09:35:20', '01', '-', 'F');
INSERT INTO `apsupplier` VALUES ('S000000002', '01', 'RETNO WATI', 'JL. MANYAR KARTIKA 8 NO. 44', 'SURABAYA TIMUR', '-', null, '-', '7', null, 'ID', '2013-08-25 11:35:11', '', '-', 'F');

-- ----------------------------
-- Table structure for `apsuppliercontact`
-- ----------------------------
DROP TABLE IF EXISTS `apsuppliercontact`;
CREATE TABLE `apsuppliercontact` (
  `ContacID` varchar(10) NOT NULL,
  `SupID` varchar(10) NOT NULL DEFAULT '0.00000000',
  `Nama` varchar(50) DEFAULT NULL,
  `Tglu` datetime DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ContacID`,`SupID`),
  KEY `SupID` (`SupID`),
  CONSTRAINT `apsuppliercontact_ibfk_1` FOREIGN KEY (`SupID`) REFERENCES `apsupplier` (`SUPID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of apsuppliercontact
-- ----------------------------

-- ----------------------------
-- Table structure for `apsupplierrekening`
-- ----------------------------
DROP TABLE IF EXISTS `apsupplierrekening`;
CREATE TABLE `apsupplierrekening` (
  `norekID` varchar(50) NOT NULL,
  `supID` varchar(10) NOT NULL,
  `ket` varchar(50) DEFAULT NULL,
  `tglU` datetime DEFAULT NULL,
  `Bank` varchar(50) NOT NULL,
  PRIMARY KEY (`supID`,`Bank`),
  CONSTRAINT `apsupplierrekening_ibfk_1` FOREIGN KEY (`supID`) REFERENCES `apsupplier` (`SUPID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of apsupplierrekening
-- ----------------------------

-- ----------------------------
-- Table structure for `aptpodtl`
-- ----------------------------
DROP TABLE IF EXISTS `aptpodtl`;
CREATE TABLE `aptpodtl` (
  `NOPO` varchar(20) NOT NULL,
  `Nomor` smallint(6) NOT NULL,
  `BrgID` varchar(30) NOT NULL,
  `Stn` varchar(1) DEFAULT NULL,
  `Qty` decimal(18,8) DEFAULT NULL,
  `HSatuan` decimal(28,8) DEFAULT NULL,
  `Disc1` decimal(18,8) DEFAULT NULL,
  `Disc2` decimal(18,8) DEFAULT NULL,
  `Disc3` decimal(18,8) DEFAULT NULL,
  `Disc4` decimal(18,8) DEFAULT NULL,
  `Disc5` decimal(18,8) DEFAULT NULL,
  `NDisc1` decimal(28,8) DEFAULT NULL,
  `NDisc2` decimal(28,8) DEFAULT NULL,
  `NDisc3` decimal(28,8) DEFAULT NULL,
  `NDisc4` decimal(28,8) DEFAULT NULL,
  `NDisc5` decimal(28,8) DEFAULT NULL,
  `Harga` decimal(28,8) DEFAULT NULL,
  `Terima` decimal(18,8) DEFAULT NULL COMMENT 'Untuk mengetahui jumlah barang diterima',
  `TglTerima` datetime DEFAULT NULL,
  `BackOrder` decimal(18,8) DEFAULT '0.00000000' COMMENT 'Untuk mengetahui jumlah yang tidak datang atau diterima',
  `NSTN` varchar(5) DEFAULT NULL,
  `NOBELI` varchar(20) DEFAULT NULL COMMENT 'Untuk mengetahui Bukti Pembelian',
  `GolID` varchar(10) DEFAULT NULL,
  `JenisID` varchar(10) DEFAULT NULL,
  `MerekID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`NOPO`,`Nomor`,`BrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aptpodtl
-- ----------------------------

-- ----------------------------
-- Table structure for `aptpohdr`
-- ----------------------------
DROP TABLE IF EXISTS `aptpohdr`;
CREATE TABLE `aptpohdr` (
  `NOPO` varchar(20) NOT NULL,
  `SupID` varchar(10) NOT NULL,
  `Tgl` date NOT NULL,
  `Company` varchar(10) DEFAULT NULL,
  `Status_` varchar(1) DEFAULT '1',
  `ValID` varchar(5) DEFAULT NULL,
  `Tukar` decimal(18,8) DEFAULT NULL,
  `Bayar_` varchar(1) DEFAULT NULL,
  `TglKirim1` date DEFAULT NULL,
  `TglKirim2` date DEFAULT NULL,
  `TukarPPn` decimal(28,8) DEFAULT '0.00000000',
  `Bruto` decimal(28,8) DEFAULT '0.00000000',
  `Netto` decimal(28,8) DEFAULT '0.00000000',
  `Ekspedisi` varchar(20) DEFAULT NULL,
  `TKirim` varchar(30) DEFAULT NULL,
  `AKirim` varchar(30) DEFAULT NULL,
  `Disc1` decimal(18,8) DEFAULT '0.00000000',
  `NDisc1` decimal(28,8) DEFAULT '0.00000000',
  `PPn1` decimal(18,8) DEFAULT '0.00000000',
  `NPPn1` decimal(18,8) DEFAULT '0.00000000',
  `NOPR` varchar(10) DEFAULT NULL,
  `Term` smallint(6) DEFAULT '0',
  `Create_ID` varchar(10) DEFAULT NULL,
  `Create_Tgl` datetime DEFAULT NULL,
  `Modify_ID` varchar(10) DEFAULT NULL,
  `Modify_Tgl` datetime DEFAULT NULL,
  `CabID` varchar(5) DEFAULT NULL,
  `Ket` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`NOPO`,`SupID`,`Tgl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of aptpohdr
-- ----------------------------

-- ----------------------------
-- Table structure for `arnourut`
-- ----------------------------
DROP TABLE IF EXISTS `arnourut`;
CREATE TABLE `arnourut` (
  `TYPE` varchar(100) NOT NULL,
  `KODE` varchar(5) NOT NULL,
  `NOAKHIR` int(11) NOT NULL DEFAULT '0',
  `TGLU` datetime DEFAULT NULL,
  PRIMARY KEY (`TYPE`,`KODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of arnourut
-- ----------------------------

-- ----------------------------
-- Table structure for `arnourutketerangan`
-- ----------------------------
DROP TABLE IF EXISTS `arnourutketerangan`;
CREATE TABLE `arnourutketerangan` (
  `JTRAN` varchar(5) NOT NULL,
  `NOTRANS` varchar(20) NOT NULL,
  `TGLU` datetime DEFAULT NULL,
  PRIMARY KEY (`JTRAN`,`NOTRANS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of arnourutketerangan
-- ----------------------------

-- ----------------------------
-- Table structure for `inbarang`
-- ----------------------------
DROP TABLE IF EXISTS `inbarang`;
CREATE TABLE `inbarang` (
  `BRGID` varchar(30) NOT NULL,
  `Nama1` varchar(100) DEFAULT NULL,
  `Nama2` varchar(100) DEFAULT NULL,
  `Jenis` varchar(10) DEFAULT NULL,
  `Stn1` varchar(5) NOT NULL,
  `Stn2` varchar(5) NOT NULL,
  `Stn3` varchar(5) NOT NULL,
  `Maxi` decimal(18,8) DEFAULT '0.00000000',
  `Mini` decimal(18,8) DEFAULT '0.00000000',
  `Isi1` decimal(18,8) DEFAULT '1.00000000',
  `Isi2` decimal(18,8) DEFAULT '1.00000000',
  `Hpp` decimal(28,8) DEFAULT '0.00000000',
  `hbeli` decimal(28,8) DEFAULT '0.00000000',
  `hjual1` decimal(28,8) DEFAULT '0.00000000',
  `hjual2` decimal(28,8) DEFAULT '0.00000000',
  `hjual3` decimal(28,8) DEFAULT '0.00000000',
  `lks` varchar(10) NOT NULL,
  `sup` varchar(10) NOT NULL,
  `gol` varchar(10) DEFAULT NULL,
  `merek` varchar(10) DEFAULT NULL,
  `type` varchar(10) NOT NULL,
  `model` varchar(5) DEFAULT NULL,
  `klink` varchar(5) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `barcode` varchar(50) NOT NULL,
  `namabar` varchar(30) NOT NULL,
  `berat` decimal(28,8) DEFAULT '0.00000000',
  `vol` decimal(28,8) DEFAULT '0.00000000',
  `slevel` decimal(28,8) DEFAULT '0.00000000',
  `kuali` varchar(10) DEFAULT NULL,
  `wrn` varchar(10) DEFAULT NULL,
  `mtf` varchar(10) DEFAULT NULL,
  `size` varchar(10) DEFAULT NULL,
  `tglu` datetime NOT NULL,
  `lNonkonsinyasi` char(2) DEFAULT NULL,
  `lAktif` char(2) DEFAULT NULL,
  `cab` varchar(10) DEFAULT NULL,
  `lstatAll` bit(1) DEFAULT b'0',
  PRIMARY KEY (`BRGID`),
  KEY `FKType` (`type`),
  KEY `FKGolongan` (`gol`),
  KEY `FKJenis` (`Jenis`),
  KEY `FKMerek` (`merek`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inbarang
-- ----------------------------
INSERT INTO `inbarang` VALUES ('TESTNON-B001', 'TESTER BARANG', 'TESTER', 'NON', '', '', 'PCS', '0.00000000', '0.00000000', '1.00000000', '1.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', 'NON', 'NON', '03', null, '', '0', 'TESTNON-B001', '', '0.00000000', '0.00000000', '0.00000000', null, '02', null, null, '2013-08-31 07:45:56', null, null, '01', '');
INSERT INTO `inbarang` VALUES ('TLKANGIN-15ML', 'TOLAK ANGIN', 'OBAT HERBAL UNTUK MASUK ANGIN + MADU', 'NON', 'BOX', 'PAK', 'PCS', '0.00000000', '0.00000000', '2.00000000', '24.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '', 'NON', 'NON', '03', null, '', '0', 'TLKANGIN-15ML', '', '0.00000000', '0.00000000', '0.00000000', null, null, null, null, '2013-08-31 07:45:58', null, null, '01', '');

-- ----------------------------
-- Table structure for `inbarangfifo`
-- ----------------------------
DROP TABLE IF EXISTS `inbarangfifo`;
CREATE TABLE `inbarangfifo` (
  `CabID` varchar(3) NOT NULL,
  `GdgID` varchar(2) NOT NULL,
  `BrgID` varchar(30) NOT NULL,
  `Tgl` datetime NOT NULL,
  `QM` decimal(18,8) DEFAULT '0.00000000' COMMENT 'Untuk Keterangan Qty Masuk',
  `QK` decimal(18,8) DEFAULT '0.00000000' COMMENT 'Untuk Keterangan Qty Keluar',
  `Hrg` decimal(28,8) DEFAULT NULL COMMENT 'Untuk HPP Per PCS dengan Rumus \r\n(Netto Bersih setelah dikurangi disc Nota / Jumlah Pembelian Per PCS)  +  Beban Per Pcs (Hpp Netto)',
  `ValID` varchar(5) DEFAULT NULL COMMENT 'Valuta ID yang dipake untuk pembelian/Opname/Penjualan',
  `Tukar` decimal(18,8) DEFAULT NULL,
  `Bukti` varchar(10) DEFAULT NULL COMMENT 'No. transaksi',
  `Create_Tgl` datetime DEFAULT NULL,
  `Create_Id` varchar(10) DEFAULT NULL,
  `Modify_Tgl` datetime DEFAULT NULL,
  `Modify_Id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`CabID`,`GdgID`,`BrgID`,`Tgl`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inbarangfifo
-- ----------------------------
INSERT INTO `inbarangfifo` VALUES ('01', '01', 'TESTNON-B001', '2013-08-31 00:00:00', '10.00000000', '0.00000000', '1000.00000000', 'ID', '1.00000000', 'SO', '2013-08-31 09:33:59', 'afes', '0000-00-00 00:00:00', null);
INSERT INTO `inbarangfifo` VALUES ('01', '01', 'TLKANGIN-15ML', '2013-08-31 00:00:00', '10.00000000', '0.00000000', '1000.00000000', 'ID', '1.00000000', 'SO', '2013-08-31 09:33:59', 'afes', '0000-00-00 00:00:00', null);

-- ----------------------------
-- Table structure for `inbaranggambar`
-- ----------------------------
DROP TABLE IF EXISTS `inbaranggambar`;
CREATE TABLE `inbaranggambar` (
  `BrgID` varchar(30) NOT NULL,
  `Keterangan` text,
  `PathGbr` varchar(255) DEFAULT NULL,
  `Tglu` datetime DEFAULT NULL,
  PRIMARY KEY (`BrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inbaranggambar
-- ----------------------------
INSERT INTO `inbaranggambar` VALUES ('TESTNON-B001', null, null, '2013-06-08 00:04:51');
INSERT INTO `inbaranggambar` VALUES ('TLKANGIN-15ML', null, null, '2013-06-08 01:23:07');

-- ----------------------------
-- Table structure for `inbaranggudang`
-- ----------------------------
DROP TABLE IF EXISTS `inbaranggudang`;
CREATE TABLE `inbaranggudang` (
  `BRGID` varchar(30) NOT NULL,
  `GDGID` varchar(10) NOT NULL,
  `CabID` varchar(10) NOT NULL DEFAULT '',
  `MIN` decimal(18,8) DEFAULT '0.00000000',
  `MAX` decimal(18,8) DEFAULT '0.00000000',
  `TglU` datetime DEFAULT NULL,
  PRIMARY KEY (`BRGID`,`GDGID`,`CabID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inbaranggudang
-- ----------------------------
INSERT INTO `inbaranggudang` VALUES ('TESTNON-B001', '01', '01', '10.00000000', '50.00000000', '2013-06-08 00:11:47');

-- ----------------------------
-- Table structure for `inbaranggudangrak`
-- ----------------------------
DROP TABLE IF EXISTS `inbaranggudangrak`;
CREATE TABLE `inbaranggudangrak` (
  `BRGID` varchar(30) NOT NULL,
  `GDGID` varchar(10) NOT NULL,
  `RAKID` varchar(10) NOT NULL DEFAULT '',
  `CabID` varchar(10) NOT NULL DEFAULT '',
  `TglU` datetime DEFAULT NULL,
  PRIMARY KEY (`BRGID`,`GDGID`,`RAKID`,`CabID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inbaranggudangrak
-- ----------------------------
INSERT INTO `inbaranggudangrak` VALUES ('TESTNON-B001', '01', '01', '01', '2013-06-22 10:11:12');
INSERT INTO `inbaranggudangrak` VALUES ('TLKANGIN-15ML', '01', '01', '01', '2013-06-22 10:11:12');

-- ----------------------------
-- Table structure for `inbaranghbeli`
-- ----------------------------
DROP TABLE IF EXISTS `inbaranghbeli`;
CREATE TABLE `inbaranghbeli` (
  `BrgID` varchar(30) NOT NULL,
  `cabID` varchar(10) NOT NULL DEFAULT '',
  `hbeli` decimal(28,8) DEFAULT '0.00000000',
  `hpp` decimal(28,8) DEFAULT '0.00000000',
  `tglu` datetime DEFAULT NULL,
  PRIMARY KEY (`BrgID`,`cabID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inbaranghbeli
-- ----------------------------
INSERT INTO `inbaranghbeli` VALUES ('TESTNON-B001', '01', '1000.00000000', '1000.00000000', '2013-08-31 07:44:12');
INSERT INTO `inbaranghbeli` VALUES ('TLKANGIN-15ML', '01', '1000.00000000', '1000.00000000', '2013-08-31 07:44:21');

-- ----------------------------
-- Table structure for `inbaranghjual`
-- ----------------------------
DROP TABLE IF EXISTS `inbaranghjual`;
CREATE TABLE `inbaranghjual` (
  `CabID` varchar(10) NOT NULL,
  `HrgID` varchar(5) NOT NULL,
  `BrgID` varchar(30) NOT NULL,
  `Hpp` decimal(28,8) DEFAULT '0.00000000',
  `Profit` decimal(18,8) DEFAULT '0.00000000',
  `Profitnilai` decimal(28,8) DEFAULT '0.00000000',
  `H1` decimal(28,8) DEFAULT '0.00000000',
  `H2` decimal(28,8) DEFAULT '0.00000000',
  `H3` decimal(28,8) DEFAULT '0.00000000',
  `Create_id` varchar(10) DEFAULT NULL,
  `Create_Tgl` datetime DEFAULT NULL,
  `Modify_id` varchar(10) DEFAULT NULL,
  `Modify_Tgl` datetime DEFAULT NULL,
  PRIMARY KEY (`CabID`,`HrgID`,`BrgID`),
  KEY `IDXCAB` (`CabID`),
  KEY `IDXBRG` (`BrgID`),
  KEY `IDXHRG` (`HrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of inbaranghjual
-- ----------------------------
INSERT INTO `inbaranghjual` VALUES ('01', '01', 'TESTNON-B001', '100000.00000000', '12.50000000', '12500.00000000', '112500.00000000', '112500.00000000', '112500.00000000', 'afes', '2013-06-08 02:34:26', 'afes', '2013-06-08 02:34:43');
INSERT INTO `inbaranghjual` VALUES ('01', '01', 'TLKANGIN-15ML', '50000.00000000', '10.00000000', '5000.00000000', '2880000.00000000', '1440000.00000000', '60000.00000000', 'afes', '2013-06-08 02:06:55', 'afes', '2013-06-08 02:48:18');
INSERT INTO `inbaranghjual` VALUES ('01', '02', 'TESTNON-B001', '100000.00000000', '10.00000000', '10000.00000000', '110000.00000000', '110000.00000000', '110000.00000000', 'afes', '2013-06-08 02:34:29', 'afes', '2013-06-08 02:34:43');
INSERT INTO `inbaranghjual` VALUES ('01', '02', 'TLKANGIN-15ML', '50000.00000000', '7.50000000', '3750.00000000', '2640000.00000000', '1320000.00000000', '55000.00000000', 'afes', '2013-06-08 02:07:05', 'afes', '2013-06-08 02:48:18');
INSERT INTO `inbaranghjual` VALUES ('01', '03', 'TESTNON-B001', '100000.00000000', '12.50000000', '12500.00000000', '112500.00000000', '112500.00000000', '112500.00000000', 'afes', '2013-06-08 02:34:31', 'afes', '2013-06-08 02:34:43');
INSERT INTO `inbaranghjual` VALUES ('01', '03', 'TLKANGIN-15ML', '50000.00000000', '10.00000000', '5000.00000000', '2880000.00000000', '1440000.00000000', '60000.00000000', 'afes', '2013-06-08 02:07:07', 'afes', '2013-06-08 02:48:18');

-- ----------------------------
-- Table structure for `inbaranghjualmin`
-- ----------------------------
DROP TABLE IF EXISTS `inbaranghjualmin`;
CREATE TABLE `inbaranghjualmin` (
  `CabID` varchar(10) COLLATE ascii_bin NOT NULL,
  `BRGID` varchar(30) COLLATE ascii_bin NOT NULL,
  `HPP` decimal(28,8) DEFAULT NULL,
  `H1` decimal(28,8) DEFAULT NULL,
  `H2` decimal(28,8) DEFAULT NULL,
  `H3` decimal(28,8) DEFAULT NULL,
  `Create_ID` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `Create_Tgl` datetime DEFAULT NULL,
  `Modify_ID` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `Modify_Tgl` datetime DEFAULT NULL,
  PRIMARY KEY (`CabID`,`BRGID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- ----------------------------
-- Records of inbaranghjualmin
-- ----------------------------

-- ----------------------------
-- Table structure for `inbarangkrtstock`
-- ----------------------------
DROP TABLE IF EXISTS `inbarangkrtstock`;
CREATE TABLE `inbarangkrtstock` (
  `TGL` datetime NOT NULL,
  `BUKTI` varchar(10) NOT NULL,
  `NOMOR` smallint(6) NOT NULL,
  `NOF` int(11) NOT NULL,
  `JTRAN` varchar(3) NOT NULL,
  `MK` varchar(1) NOT NULL,
  `BRGID` varchar(30) NOT NULL,
  `GDGID` varchar(2) NOT NULL,
  `CabID` varchar(5) NOT NULL DEFAULT '',
  `SO` varchar(2) DEFAULT NULL,
  `PO` varchar(2) DEFAULT NULL,
  `CUSTID` varchar(10) DEFAULT NULL,
  `SUPID` varchar(10) DEFAULT NULL,
  `DISC1` decimal(28,8) DEFAULT NULL,
  `DISC11` decimal(28,8) DEFAULT NULL,
  `Disc2` decimal(18,8) DEFAULT NULL,
  `Disc22` decimal(28,8) DEFAULT NULL,
  `Disc3` decimal(18,8) DEFAULT NULL,
  `Disc33` decimal(28,8) DEFAULT NULL,
  `Disc4` decimal(18,8) DEFAULT NULL,
  `Disc44` decimal(28,8) DEFAULT NULL,
  `Disc5` decimal(18,8) DEFAULT NULL,
  `Disc55` decimal(28,8) DEFAULT NULL,
  `VALID` varchar(5) DEFAULT NULL,
  `TUKAR` decimal(18,8) DEFAULT NULL,
  `STNID` varchar(5) DEFAULT NULL,
  `KETERANGAN` varchar(30) DEFAULT NULL,
  `QTY` decimal(18,8) DEFAULT NULL,
  `HPOKOK` decimal(28,8) DEFAULT NULL,
  `HJUAL` decimal(28,8) DEFAULT NULL,
  `HBELI` decimal(28,8) DEFAULT NULL,
  `REF` varchar(10) DEFAULT NULL,
  `GOLID` varchar(10) DEFAULT NULL,
  `JENISID` varchar(10) DEFAULT NULL,
  `MEREKID` varchar(10) DEFAULT NULL,
  `Create_id` varchar(10) DEFAULT NULL,
  `Create_tgl` datetime DEFAULT NULL,
  `Modify_id` varchar(10) DEFAULT NULL,
  `Modify_tgl` datetime DEFAULT NULL,
  PRIMARY KEY (`BUKTI`,`NOMOR`,`NOF`,`JTRAN`,`MK`,`BRGID`,`GDGID`,`CabID`,`TGL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inbarangkrtstock
-- ----------------------------
INSERT INTO `inbarangkrtstock` VALUES ('2013-08-31 00:00:00', 'SO', '1', '0', 'SO', 'M', 'TESTNON-B001', '01', '01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ID', '1.00000000', 'PCS', null, '10.00000000', '1000.00000000', null, null, null, 'NON', 'NON', 'NON', 'afes', '2013-08-31 09:33:59', 'afes', '2013-08-31 09:36:07');
INSERT INTO `inbarangkrtstock` VALUES ('2013-08-31 00:00:00', 'SO', '1', '0', 'SO', 'M', 'TLKANGIN-15ML', '01', '01', null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'ID', '1.00000000', 'PCS', null, '10.00000000', '1000.00000000', null, null, null, 'NON', 'NON', 'NON', 'afes', '2013-08-31 09:33:59', 'programmer', '2013-08-31 09:36:15');

-- ----------------------------
-- Table structure for `inbarangmutasi`
-- ----------------------------
DROP TABLE IF EXISTS `inbarangmutasi`;
CREATE TABLE `inbarangmutasi` (
  `GDGID` varchar(2) NOT NULL,
  `BRGID` varchar(30) NOT NULL,
  `THN` int(11) NOT NULL,
  `CabID` varchar(10) NOT NULL DEFAULT '',
  `QAWAL` decimal(18,4) DEFAULT '0.0000',
  `NAWAL` decimal(28,8) DEFAULT '0.00000000',
  `QM1` decimal(18,4) DEFAULT '0.0000',
  `QM2` decimal(18,4) DEFAULT '0.0000',
  `QM3` decimal(18,4) DEFAULT '0.0000',
  `QM4` decimal(18,4) DEFAULT '0.0000',
  `QM5` decimal(18,4) DEFAULT '0.0000',
  `QM6` decimal(18,4) DEFAULT '0.0000',
  `QM7` decimal(18,4) DEFAULT '0.0000',
  `QM8` decimal(18,4) DEFAULT '0.0000',
  `QM9` decimal(18,4) DEFAULT '0.0000',
  `QM10` decimal(18,4) DEFAULT '0.0000',
  `QM11` decimal(18,4) DEFAULT '0.0000',
  `QM12` decimal(18,4) DEFAULT '0.0000',
  `NM1` decimal(28,8) DEFAULT '0.00000000',
  `NM2` decimal(28,8) DEFAULT '0.00000000',
  `NM3` decimal(28,8) DEFAULT '0.00000000',
  `NM4` decimal(28,8) DEFAULT '0.00000000',
  `NM5` decimal(28,8) DEFAULT '0.00000000',
  `NM6` decimal(28,8) DEFAULT '0.00000000',
  `NM7` decimal(28,8) DEFAULT '0.00000000',
  `NM8` decimal(28,8) DEFAULT '0.00000000',
  `NM9` decimal(28,8) DEFAULT '0.00000000',
  `NM10` decimal(28,8) DEFAULT '0.00000000',
  `NM11` decimal(28,8) DEFAULT '0.00000000',
  `NM12` decimal(28,8) DEFAULT '0.00000000',
  `QK1` decimal(18,4) DEFAULT '0.0000',
  `QK2` decimal(18,4) DEFAULT '0.0000',
  `QK3` decimal(18,4) DEFAULT '0.0000',
  `QK4` decimal(18,4) DEFAULT '0.0000',
  `QK5` decimal(18,4) DEFAULT '0.0000',
  `QK6` decimal(18,4) DEFAULT '0.0000',
  `QK7` decimal(18,4) DEFAULT '0.0000',
  `QK8` decimal(18,4) DEFAULT '0.0000',
  `QK9` decimal(18,4) DEFAULT '0.0000',
  `QK10` decimal(18,4) DEFAULT '0.0000',
  `QK11` decimal(18,4) DEFAULT '0.0000',
  `QK12` decimal(18,4) DEFAULT '0.0000',
  `NK1` decimal(28,8) DEFAULT '0.00000000',
  `NK2` decimal(28,8) DEFAULT '0.00000000',
  `NK3` decimal(28,8) DEFAULT '0.00000000',
  `NK4` decimal(28,8) DEFAULT '0.00000000',
  `NK5` decimal(28,8) DEFAULT '0.00000000',
  `NK6` decimal(28,8) DEFAULT '0.00000000',
  `NK7` decimal(28,8) DEFAULT '0.00000000',
  `NK8` decimal(28,8) DEFAULT '0.00000000',
  `NK9` decimal(28,8) DEFAULT '0.00000000',
  `NK10` decimal(28,8) DEFAULT '0.00000000',
  `NK11` decimal(28,8) DEFAULT '0.00000000',
  `NK12` decimal(28,8) DEFAULT '0.00000000',
  `QAKHIR` decimal(18,4) DEFAULT '0.0000',
  `NAKHIR` decimal(28,8) DEFAULT '0.00000000',
  PRIMARY KEY (`GDGID`,`BRGID`,`THN`,`CabID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inbarangmutasi
-- ----------------------------
INSERT INTO `inbarangmutasi` VALUES ('01', 'TESTNON-B001', '2013', '01', '0.0000', '0.00000000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '10000.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '10.0000', '10000.00000000');
INSERT INTO `inbarangmutasi` VALUES ('01', 'TLKANGIN-15ML', '2013', '01', '0.0000', '0.00000000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '10.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '10000.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '10.0000', '10000.00000000');

-- ----------------------------
-- Table structure for `inbarangopname`
-- ----------------------------
DROP TABLE IF EXISTS `inbarangopname`;
CREATE TABLE `inbarangopname` (
  `GDGID` varchar(2) NOT NULL,
  `BRGID` varchar(30) NOT NULL,
  `CabID` varchar(10) NOT NULL,
  `NOMOR` smallint(6) NOT NULL AUTO_INCREMENT,
  `STN` varchar(1) DEFAULT NULL,
  `NSTN` varchar(5) DEFAULT NULL,
  `HPOKOK` decimal(28,8) DEFAULT '0.00000000',
  `QTY` decimal(18,8) DEFAULT '0.00000000',
  `POSISI` date DEFAULT NULL,
  `Create_id` varchar(10) DEFAULT NULL,
  `Create_tgl` datetime DEFAULT NULL,
  `Modify_id` varchar(10) DEFAULT NULL,
  `modify_tgl` datetime DEFAULT NULL,
  `bukti` varchar(5) DEFAULT NULL,
  `lacc` char(1) DEFAULT 'F',
  `Create_IdAcc` varchar(10) DEFAULT NULL,
  `Create_TglAcc` datetime DEFAULT NULL,
  PRIMARY KEY (`NOMOR`,`GDGID`,`BRGID`,`CabID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of inbarangopname
-- ----------------------------
INSERT INTO `inbarangopname` VALUES ('01', 'TESTNON-B001', '01', '1', '3', 'PCS', '1000.00000000', '10.00000000', '2013-08-31', 'afes', '2013-08-31 09:33:59', 'afes', '2013-08-31 09:35:18', 'SO', 'T', 'programmer', '2013-08-31 09:36:07');
INSERT INTO `inbarangopname` VALUES ('01', 'TLKANGIN-15ML', '01', '1', '3', 'PCS', '1000.00000000', '10.00000000', '2013-08-31', 'afes', '2013-08-31 09:33:59', 'programmer', '2013-08-31 09:36:07', 'SO', 'T', 'programmer', '2013-08-31 09:36:15');

-- ----------------------------
-- Table structure for `inbarangstock`
-- ----------------------------
DROP TABLE IF EXISTS `inbarangstock`;
CREATE TABLE `inbarangstock` (
  `GDGID` varchar(2) NOT NULL,
  `BrgID` varchar(30) NOT NULL,
  `Qty` decimal(18,8) DEFAULT '0.00000000',
  PRIMARY KEY (`GDGID`,`BrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inbarangstock
-- ----------------------------
INSERT INTO `inbarangstock` VALUES ('01', 'TESTNON-B001', '10.00000000');
INSERT INTO `inbarangstock` VALUES ('01', 'TLKANGIN-15ML', '10.00000000');

-- ----------------------------
-- Table structure for `inhisbaranggudang`
-- ----------------------------
DROP TABLE IF EXISTS `inhisbaranggudang`;
CREATE TABLE `inhisbaranggudang` (
  `BRGID` varchar(30) NOT NULL,
  `GDGID` varchar(10) NOT NULL,
  `CabID` varchar(10) NOT NULL DEFAULT '',
  `MIN` decimal(18,8) DEFAULT '0.00000000',
  `MAX` decimal(18,8) DEFAULT '0.00000000',
  `TglU` datetime DEFAULT NULL,
  PRIMARY KEY (`BRGID`,`GDGID`,`CabID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inhisbaranggudang
-- ----------------------------

-- ----------------------------
-- Table structure for `inhisbaranggudangrak`
-- ----------------------------
DROP TABLE IF EXISTS `inhisbaranggudangrak`;
CREATE TABLE `inhisbaranggudangrak` (
  `BRGID` varchar(30) NOT NULL,
  `GDGID` varchar(10) NOT NULL,
  `RAKID` varchar(10) NOT NULL DEFAULT '',
  `CabID` varchar(10) NOT NULL DEFAULT '',
  `TglU` datetime DEFAULT NULL,
  PRIMARY KEY (`BRGID`,`GDGID`,`RAKID`,`CabID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inhisbaranggudangrak
-- ----------------------------

-- ----------------------------
-- Table structure for `inhisbaranghbeli`
-- ----------------------------
DROP TABLE IF EXISTS `inhisbaranghbeli`;
CREATE TABLE `inhisbaranghbeli` (
  `BrgID` varchar(30) NOT NULL,
  `cabID` varchar(10) NOT NULL DEFAULT '',
  `hbeli` decimal(28,8) DEFAULT '0.00000000',
  `hpp` decimal(28,8) DEFAULT '0.00000000',
  `tglu` datetime DEFAULT NULL,
  PRIMARY KEY (`BrgID`,`cabID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of inhisbaranghbeli
-- ----------------------------

-- ----------------------------
-- Table structure for `inhisbaranghjual`
-- ----------------------------
DROP TABLE IF EXISTS `inhisbaranghjual`;
CREATE TABLE `inhisbaranghjual` (
  `CabID` varchar(10) NOT NULL,
  `HrgID` varchar(5) NOT NULL,
  `BrgID` varchar(30) NOT NULL,
  `Hpp` decimal(28,8) DEFAULT '0.00000000',
  `Profit` decimal(18,8) DEFAULT '0.00000000',
  `Profitnilai` decimal(28,8) DEFAULT '0.00000000',
  `H1` decimal(28,8) DEFAULT '0.00000000',
  `H2` decimal(28,8) DEFAULT '0.00000000',
  `H3` decimal(28,8) DEFAULT '0.00000000',
  `Create_id` varchar(10) DEFAULT NULL,
  `Create_Tgl` datetime DEFAULT NULL,
  `Modify_id` varchar(10) DEFAULT NULL,
  `Modify_Tgl` datetime DEFAULT NULL,
  PRIMARY KEY (`CabID`,`HrgID`,`BrgID`),
  KEY `IDXCAB` (`CabID`),
  KEY `IDXBRG` (`BrgID`),
  KEY `IDXHRG` (`HrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of inhisbaranghjual
-- ----------------------------

-- ----------------------------
-- Table structure for `inhisbaranghjualmin`
-- ----------------------------
DROP TABLE IF EXISTS `inhisbaranghjualmin`;
CREATE TABLE `inhisbaranghjualmin` (
  `CabID` varchar(10) COLLATE ascii_bin NOT NULL,
  `BRGID` varchar(30) COLLATE ascii_bin NOT NULL,
  `HPP` decimal(28,8) DEFAULT NULL,
  `H1` decimal(28,8) DEFAULT NULL,
  `H2` decimal(28,8) DEFAULT NULL,
  `H3` decimal(28,8) DEFAULT NULL,
  `Create_ID` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `Create_Tgl` datetime DEFAULT NULL,
  `Modify_ID` varchar(10) COLLATE ascii_bin DEFAULT NULL,
  `Modify_Tgl` datetime DEFAULT NULL,
  PRIMARY KEY (`CabID`,`BRGID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- ----------------------------
-- Records of inhisbaranghjualmin
-- ----------------------------

-- ----------------------------
-- Table structure for `inhisbarangopname`
-- ----------------------------
DROP TABLE IF EXISTS `inhisbarangopname`;
CREATE TABLE `inhisbarangopname` (
  `GDGID` varchar(2) NOT NULL,
  `BRGID` varchar(30) NOT NULL,
  `CabID` varchar(10) NOT NULL,
  `NOMOR` smallint(6) NOT NULL AUTO_INCREMENT,
  `STN` varchar(1) DEFAULT NULL,
  `NSTN` varchar(5) DEFAULT NULL,
  `HPOKOK` decimal(28,8) DEFAULT '0.00000000',
  `QTY` decimal(18,8) DEFAULT '0.00000000',
  `POSISI` date DEFAULT NULL,
  `Create_id` varchar(10) DEFAULT NULL,
  `Create_tgl` datetime DEFAULT NULL,
  `Modify_id` varchar(10) DEFAULT NULL,
  `modify_tgl` datetime DEFAULT NULL,
  `bukti` varchar(5) DEFAULT NULL,
  `lacc` char(1) DEFAULT 'F',
  `Create_IdAcc` varchar(10) DEFAULT NULL,
  `Create_TglAcc` datetime DEFAULT NULL,
  PRIMARY KEY (`NOMOR`,`GDGID`,`BRGID`,`CabID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of inhisbarangopname
-- ----------------------------

-- ----------------------------
-- Table structure for `innourut`
-- ----------------------------
DROP TABLE IF EXISTS `innourut`;
CREATE TABLE `innourut` (
  `TYPE` varchar(100) NOT NULL,
  `KODE` varchar(5) NOT NULL,
  `NOAKHIR` int(11) NOT NULL DEFAULT '0',
  `TGLU` datetime DEFAULT NULL,
  PRIMARY KEY (`TYPE`,`KODE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of innourut
-- ----------------------------

-- ----------------------------
-- Table structure for `innourutketerangan`
-- ----------------------------
DROP TABLE IF EXISTS `innourutketerangan`;
CREATE TABLE `innourutketerangan` (
  `JTRAN` varchar(5) NOT NULL,
  `NOTRANS` varchar(20) NOT NULL,
  `TGLU` datetime DEFAULT NULL,
  PRIMARY KEY (`JTRAN`,`NOTRANS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of innourutketerangan
-- ----------------------------

-- ----------------------------
-- Table structure for `pxcabang`
-- ----------------------------
DROP TABLE IF EXISTS `pxcabang`;
CREATE TABLE `pxcabang` (
  `CABID` varchar(10) NOT NULL,
  `Keterangan` varchar(50) DEFAULT NULL,
  `tglU` datetime DEFAULT NULL,
  PRIMARY KEY (`CABID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pxcabang
-- ----------------------------
INSERT INTO `pxcabang` VALUES ('01', 'CABANG UTAMA', '2013-05-16 20:59:41');

-- ----------------------------
-- Table structure for `pxgolongan`
-- ----------------------------
DROP TABLE IF EXISTS `pxgolongan`;
CREATE TABLE `pxgolongan` (
  `GolID` varchar(10) NOT NULL,
  `Keterangan` varchar(30) DEFAULT NULL,
  `TglU` datetime DEFAULT NULL,
  PRIMARY KEY (`GolID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pxgolongan
-- ----------------------------
INSERT INTO `pxgolongan` VALUES ('NON', 'NONE', '2013-06-08 09:35:04');

-- ----------------------------
-- Table structure for `pxgroupmenu`
-- ----------------------------
DROP TABLE IF EXISTS `pxgroupmenu`;
CREATE TABLE `pxgroupmenu` (
  `GroupID` varchar(10) NOT NULL,
  `MenuID` varchar(255) NOT NULL,
  `Status_` char(1) DEFAULT 'T',
  PRIMARY KEY (`GroupID`,`MenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pxgroupmenu
-- ----------------------------

-- ----------------------------
-- Table structure for `pxgroupuser`
-- ----------------------------
DROP TABLE IF EXISTS `pxgroupuser`;
CREATE TABLE `pxgroupuser` (
  `GroupID` varchar(10) COLLATE ascii_bin NOT NULL,
  `Description` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `Insert` char(1) COLLATE ascii_bin DEFAULT NULL,
  `Change` char(1) COLLATE ascii_bin DEFAULT NULL,
  `Delete` char(1) COLLATE ascii_bin DEFAULT NULL,
  `Browse` char(1) COLLATE ascii_bin DEFAULT NULL,
  `Access` char(1) COLLATE ascii_bin DEFAULT NULL,
  `Print` char(1) COLLATE ascii_bin DEFAULT NULL,
  `Print2` char(1) COLLATE ascii_bin DEFAULT NULL,
  `Print3` char(1) COLLATE ascii_bin DEFAULT NULL,
  `Change_StatusAP` char(1) COLLATE ascii_bin DEFAULT NULL,
  `Change_StatusAR` char(1) COLLATE ascii_bin DEFAULT NULL,
  `Change_StatusIN` char(1) COLLATE ascii_bin DEFAULT NULL,
  `LACC_SO` char(1) COLLATE ascii_bin DEFAULT 'N' COMMENT 'Y = DI Izinkan untuk memberikan Acc SO N = Tidak dI Izinkan untuk memberikan Acc SO',
  `LACC_SLD_Hutang` char(1) COLLATE ascii_bin DEFAULT 'N' COMMENT 'Y = DI Izinkan untuk memberikan Acc Saldo Awal Hutang N = Tidak dI Izinkan untuk memberikan Acc Saldo Awal Hutang',
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- ----------------------------
-- Records of pxgroupuser
-- ----------------------------
INSERT INTO `pxgroupuser` VALUES ('99', 'ADMINISTRATOR', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'N', 'N');
INSERT INTO `pxgroupuser` VALUES ('ADMINISTRA', 'ADMINISTRATOR', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'Y', 'Y');
INSERT INTO `pxgroupuser` VALUES ('DEMO', 'DEMO', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', 'N', 'N');

-- ----------------------------
-- Table structure for `pxgudang`
-- ----------------------------
DROP TABLE IF EXISTS `pxgudang`;
CREATE TABLE `pxgudang` (
  `GdgID` varchar(3) NOT NULL,
  `Keterangan` varchar(30) DEFAULT NULL,
  `TglU` datetime DEFAULT NULL,
  PRIMARY KEY (`GdgID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pxgudang
-- ----------------------------
INSERT INTO `pxgudang` VALUES ('01', 'GUDANG UTAMA', '2013-05-16 20:59:54');

-- ----------------------------
-- Table structure for `pxharga`
-- ----------------------------
DROP TABLE IF EXISTS `pxharga`;
CREATE TABLE `pxharga` (
  `HrgID` varchar(5) NOT NULL,
  `Keterangan` varchar(50) DEFAULT NULL,
  `ValID` varchar(5) DEFAULT NULL,
  `Presen_` decimal(18,8) DEFAULT '0.00000000',
  `Presen_nilai` decimal(28,8) DEFAULT '0.00000000',
  `Tglu` datetime DEFAULT NULL,
  PRIMARY KEY (`HrgID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pxharga
-- ----------------------------
INSERT INTO `pxharga` VALUES ('01', 'HARGA ECERAN', 'ID', '10.00000000', '0.00000000', '2013-05-16 21:00:35');
INSERT INTO `pxharga` VALUES ('02', 'HARGA GROSIR', 'ID', '0.00000000', '0.00000000', '2013-06-02 12:22:09');
INSERT INTO `pxharga` VALUES ('03', 'HARGA STANDARD', 'ID', '0.00000000', '0.00000000', '2013-06-02 12:22:43');

-- ----------------------------
-- Table structure for `pxjenis`
-- ----------------------------
DROP TABLE IF EXISTS `pxjenis`;
CREATE TABLE `pxjenis` (
  `JenisID` varchar(10) NOT NULL,
  `Keterangan` varchar(30) DEFAULT NULL,
  `TGLU` datetime DEFAULT NULL,
  PRIMARY KEY (`JenisID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pxjenis
-- ----------------------------
INSERT INTO `pxjenis` VALUES ('NON', 'NONE', '2013-05-14 19:13:15');

-- ----------------------------
-- Table structure for `pxkategori`
-- ----------------------------
DROP TABLE IF EXISTS `pxkategori`;
CREATE TABLE `pxkategori` (
  `KategID` varchar(10) NOT NULL,
  `Keterangan` varchar(30) DEFAULT NULL,
  `TGLU` datetime DEFAULT NULL,
  PRIMARY KEY (`KategID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pxkategori
-- ----------------------------
INSERT INTO `pxkategori` VALUES ('01', 'CAT', '2013-05-13 21:53:05');
INSERT INTO `pxkategori` VALUES ('02', 'TINNER', '2013-05-13 21:53:20');
INSERT INTO `pxkategori` VALUES ('03', 'CLEAR', '2013-05-13 21:57:14');

-- ----------------------------
-- Table structure for `pxkode`
-- ----------------------------
DROP TABLE IF EXISTS `pxkode`;
CREATE TABLE `pxkode` (
  `Type` varchar(100) DEFAULT NULL,
  `lBrg` varchar(1) DEFAULT '0',
  `lBeli` varchar(1) DEFAULT '0',
  `lJual` varchar(1) DEFAULT '0',
  `Jtran` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pxkode
-- ----------------------------
INSERT INTO `pxkode` VALUES ('Masuk Keluar', 'Y', 'T', 'T', 'MK');
INSERT INTO `pxkode` VALUES ('Barang Rakitan', 'Y', 'T', 'T', 'BR');
INSERT INTO `pxkode` VALUES ('Barang Titipan', 'Y', 'T', 'T', 'BT');
INSERT INTO `pxkode` VALUES ('Penerimaan Barang', 'Y', 'T', 'T', 'PB');
INSERT INTO `pxkode` VALUES ('Purchase Order', 'T', 'Y', 'T', 'PO');
INSERT INTO `pxkode` VALUES ('Invoice', 'T', 'Y', 'T', 'IV');
INSERT INTO `pxkode` VALUES ('Koreksi Hutang', 'T', 'Y', 'T', 'KH');
INSERT INTO `pxkode` VALUES ('Bayar Hutang', 'T', 'Y', 'T', 'BH');
INSERT INTO `pxkode` VALUES ('Retur Invoice', 'T', 'Y', 'T', 'RB');
INSERT INTO `pxkode` VALUES ('Uang Muka', 'T', 'Y', 'T', 'UMB');
INSERT INTO `pxkode` VALUES ('Surat Jalan', 'T', 'T', 'Y', 'SJ');
INSERT INTO `pxkode` VALUES ('Faktur', 'T', 'T', 'Y', 'FT');
INSERT INTO `pxkode` VALUES ('Stock Opname', 'Y', 'T', 'T', 'SO');
INSERT INTO `pxkode` VALUES ('Koreksi Piutang', 'T', 'T', 'Y', 'KP');
INSERT INTO `pxkode` VALUES ('Bayar Piutang', 'T', 'T', 'Y', 'BP');
INSERT INTO `pxkode` VALUES ('Retur Jual', 'T', 'T', 'Y', 'RJ');
INSERT INTO `pxkode` VALUES ('Retur Surat Jalan', 'T', 'T', 'Y', 'RS');
INSERT INTO `pxkode` VALUES ('Uang Muka', 'T', 'T', 'Y', 'UMJ');
INSERT INTO `pxkode` VALUES ('Tagihan', 'T', 'T', 'Y', 'TGH');
INSERT INTO `pxkode` VALUES ('Saldo Awal Hutang', 'T', 'Y', 'T', 'SAH');
INSERT INTO `pxkode` VALUES ('Saldo Awal Piutang', 'T', 'T', 'Y', 'SAP');
INSERT INTO `pxkode` VALUES ('Sales Order', 'T', 'T', 'Y', 'SLO');

-- ----------------------------
-- Table structure for `pxmenu`
-- ----------------------------
DROP TABLE IF EXISTS `pxmenu`;
CREATE TABLE `pxmenu` (
  `MenuID` varchar(255) COLLATE ascii_bin NOT NULL,
  `Description` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `ExeName` varchar(50) COLLATE ascii_bin DEFAULT '',
  `Status_` char(1) COLLATE ascii_bin DEFAULT NULL,
  PRIMARY KEY (`MenuID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- ----------------------------
-- Records of pxmenu
-- ----------------------------
INSERT INTO `pxmenu` VALUES ('aCopy', 'COPY', '', 'T');
INSERT INTO `pxmenu` VALUES ('aCustomer', 'Customer', '', 'T');
INSERT INTO `pxmenu` VALUES ('aCut', 'CUT', '', 'T');
INSERT INTO `pxmenu` VALUES ('aEdit', 'EDIT', '', 'T');
INSERT INTO `pxmenu` VALUES ('aExit', 'EXIT', '', 'T');
INSERT INTO `pxmenu` VALUES ('aFILE', 'FILE', '', 'T');
INSERT INTO `pxmenu` VALUES ('aFind', 'FIND', '', 'T');
INSERT INTO `pxmenu` VALUES ('aLOGIN', 'LOGIN', '', 'T');
INSERT INTO `pxmenu` VALUES ('aLOGOUT', 'LOGOUT', '', 'T');
INSERT INTO `pxmenu` VALUES ('aMaster', 'MASTER', '', 'T');
INSERT INTO `pxmenu` VALUES ('aMonitoringPurchase', 'Monitoring Purchase', '', 'T');
INSERT INTO `pxmenu` VALUES ('aMonitoringSales', 'Monitoring Sales', '', 'T');
INSERT INTO `pxmenu` VALUES ('aMutasiHutang', 'Histori Hutang', '', 'T');
INSERT INTO `pxmenu` VALUES ('aPAGESETUP', 'PAGE SETUP', '', 'T');
INSERT INTO `pxmenu` VALUES ('aPOS', 'POS', '', 'T');
INSERT INTO `pxmenu` VALUES ('aPRINTSETUP', 'PRINT SETUP', '', 'T');
INSERT INTO `pxmenu` VALUES ('aPaste', 'PASTE', '', 'T');
INSERT INTO `pxmenu` VALUES ('aPasteSpecial', 'PASTE SPECIAL', '', 'T');
INSERT INTO `pxmenu` VALUES ('aPurchaseOrder', 'Purchase Order', '', 'T');
INSERT INTO `pxmenu` VALUES ('aPurchaseRequest', 'Purchase Request', '', 'T');
INSERT INTO `pxmenu` VALUES ('aPurchaseReturn', 'Purchase Return', '', 'T');
INSERT INTO `pxmenu` VALUES ('aReceiving', 'Receiving', '', 'T');
INSERT INTO `pxmenu` VALUES ('aReplace', 'REPLACE', '', 'T');
INSERT INTO `pxmenu` VALUES ('aReporting', 'REPORTING', '', 'T');
INSERT INTO `pxmenu` VALUES ('aSaldo', 'SALDO', '', 'T');
INSERT INTO `pxmenu` VALUES ('aSaldoAwalBarang', 'SALDO AWAL BARANG', '', 'T');
INSERT INTO `pxmenu` VALUES ('aSaldoAwalHutang', 'SALDO AWAL HUTANG', 'Hutang.exe', 'T');
INSERT INTO `pxmenu` VALUES ('aSaldoAwalPiutang', 'SALDO AWAL PIUTANG', '', 'T');
INSERT INTO `pxmenu` VALUES ('aSales', 'Sales', '', 'T');
INSERT INTO `pxmenu` VALUES ('aSalesOrder', 'Sales Order', '', 'T');
INSERT INTO `pxmenu` VALUES ('aSalesRequest', 'Sales Request', '', 'T');
INSERT INTO `pxmenu` VALUES ('aSalesReturn', 'Sales Return', '', 'T');
INSERT INTO `pxmenu` VALUES ('aSetting', 'SETTING', '', 'T');
INSERT INTO `pxmenu` VALUES ('aShipment', 'Shipment', '', 'T');
INSERT INTO `pxmenu` VALUES ('aSupplier', 'Supplier', '', 'T');
INSERT INTO `pxmenu` VALUES ('aTransaction', 'TRANSACTION', '', 'T');
INSERT INTO `pxmenu` VALUES ('aWilayahPurchase', 'Wilayah Purchase', '', 'T');
INSERT INTO `pxmenu` VALUES ('aWilayahSupplier', 'Wilayah Supplier', '', 'T');
INSERT INTO `pxmenu` VALUES ('aWindow', 'WINDOW', '', 'T');

-- ----------------------------
-- Table structure for `pxmerek`
-- ----------------------------
DROP TABLE IF EXISTS `pxmerek`;
CREATE TABLE `pxmerek` (
  `MRKID` varchar(10) NOT NULL,
  `KETERANGAN` varchar(30) DEFAULT NULL,
  `TGLU` datetime DEFAULT NULL,
  PRIMARY KEY (`MRKID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pxmerek
-- ----------------------------
INSERT INTO `pxmerek` VALUES ('NON', 'NONE', '2013-06-07 23:51:42');

-- ----------------------------
-- Table structure for `pxmodel`
-- ----------------------------
DROP TABLE IF EXISTS `pxmodel`;
CREATE TABLE `pxmodel` (
  `MODELID` varchar(10) NOT NULL,
  `KETERANGAN` varchar(30) DEFAULT NULL,
  `TGLU` datetime DEFAULT NULL,
  PRIMARY KEY (`MODELID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pxmodel
-- ----------------------------

-- ----------------------------
-- Table structure for `pxmotif`
-- ----------------------------
DROP TABLE IF EXISTS `pxmotif`;
CREATE TABLE `pxmotif` (
  `MTFID` varchar(10) NOT NULL,
  `KETERANGAN` varchar(30) DEFAULT NULL,
  `TGLU` datetime DEFAULT NULL,
  PRIMARY KEY (`MTFID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pxmotif
-- ----------------------------

-- ----------------------------
-- Table structure for `pxrak`
-- ----------------------------
DROP TABLE IF EXISTS `pxrak`;
CREATE TABLE `pxrak` (
  `RakID` varchar(10) NOT NULL,
  `Keterangan` varchar(30) DEFAULT NULL,
  `TglU` datetime DEFAULT NULL,
  PRIMARY KEY (`RakID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pxrak
-- ----------------------------
INSERT INTO `pxrak` VALUES ('01', 'RAK A', '2013-06-08 09:42:40');
INSERT INTO `pxrak` VALUES ('02', 'RAK B', '2013-05-13 22:04:49');
INSERT INTO `pxrak` VALUES ('03', 'RAK C', '2013-05-13 22:04:54');
INSERT INTO `pxrak` VALUES ('04', 'RAK D', '2013-05-13 22:04:59');
INSERT INTO `pxrak` VALUES ('05', 'RAK E', '2013-05-13 22:05:04');

-- ----------------------------
-- Table structure for `pxsize`
-- ----------------------------
DROP TABLE IF EXISTS `pxsize`;
CREATE TABLE `pxsize` (
  `SIZEID` varchar(10) NOT NULL,
  `KETERANGAN` varchar(30) DEFAULT NULL,
  `TGLU` datetime DEFAULT NULL,
  PRIMARY KEY (`SIZEID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pxsize
-- ----------------------------

-- ----------------------------
-- Table structure for `pxsystem`
-- ----------------------------
DROP TABLE IF EXISTS `pxsystem`;
CREATE TABLE `pxsystem` (
  `ConfigID` smallint(6) NOT NULL AUTO_INCREMENT,
  `SatID` varchar(3) COLLATE ascii_bin DEFAULT NULL COMMENT 'Untuk Default Satuan Utama',
  `GDGID` varchar(5) COLLATE ascii_bin DEFAULT NULL COMMENT 'Untuk Default Gudang Utama',
  `CABID` varchar(5) COLLATE ascii_bin DEFAULT NULL COMMENT 'Untuk Default Cabang Utama',
  `VALID` varchar(5) COLLATE ascii_bin DEFAULT NULL COMMENT 'Untuk Valuta Default Utama',
  `HRGID` varchar(5) COLLATE ascii_bin DEFAULT NULL COMMENT 'Untuk Harga Default Utama untuk Penjualan',
  `METODE` char(1) COLLATE ascii_bin DEFAULT '1' COMMENT 'Metode yang dipake, Jika nilai 1 = Fifo dan nilai 2 = Average',
  `DISCTINGKAT` smallint(6) DEFAULT '1' COMMENT 'Untuk Default Nilai Discont Berapa Tingkat Saat ditampilkan di Penjualan Maupun Pembelian',
  `Profit_` bit(1) DEFAULT b'1' COMMENT 'Untuk memperhitungkan harga jual 3 + profit yang berada ditable PXHarga, Jika nilai 1 maka akan diperhitungkan Jika nilai 2 maka tidak akan diperhitungkan',
  `Vertion_` smallint(1) DEFAULT NULL COMMENT '0 = Basic\r\n1 = Standart\r\n2 = Premium\r\n3 = Profesional\r\n4 = Enterprice\r\n5 = Unlimited',
  `GOLID` varchar(5) COLLATE ascii_bin DEFAULT NULL,
  `JNSID` varchar(5) COLLATE ascii_bin DEFAULT NULL,
  `MRKID` varchar(5) COLLATE ascii_bin DEFAULT NULL,
  `TYPE` varchar(5) COLLATE ascii_bin DEFAULT NULL,
  `SUPID` char(1) COLLATE ascii_bin DEFAULT 'N' COMMENT 'Y = Kode Automatis N = Kode Manual',
  `CUSTID` char(1) COLLATE ascii_bin DEFAULT 'N' COMMENT 'Y = Kode Automatis N = Kode Manual',
  `BRGID` char(1) COLLATE ascii_bin DEFAULT 'N' COMMENT 'Y = Kode Automatis N = Kode Manual',
  `LYears` char(1) COLLATE ascii_bin DEFAULT 'N' COMMENT 'Y = Tahun Digunakan N = Tahun Tidak Digunakan, Yang digunakan 2 karakter terakhir',
  `LMonth` char(1) COLLATE ascii_bin DEFAULT 'N' COMMENT 'Y = Bulan Digunakan N = Bulan Tidak Digunakan, Yang digunakan 2 karakter terakhir',
  `LDay` char(1) COLLATE ascii_bin DEFAULT 'N' COMMENT 'Y = Hari Digunakan  N = Hari Tidak Digunakan, Yang digunakan 2 karakter terakhir',
  `LengthBRGID_` smallint(6) DEFAULT '30' COMMENT 'Digunakan untuk pembatasan panjang karakter, jika diisi lebih dari 30 tidak diperbolahkan',
  `TimeTrial_` smallint(6) DEFAULT '30' COMMENT 'Digunakan untuk pembatasan pemakaian aplikasi, jika diisi lebih dari 30 tidak diperbolahkan',
  `TimeTrialRunning_` smallint(6) DEFAULT '0' COMMENT 'Digunakan untuk pencatatan pemakaian aplikasi, default = 0',
  `Install_` date DEFAULT NULL COMMENT 'Digunakan untuk menyimpan informasi installasi',
  `LengthSUPPID_` smallint(6) DEFAULT '10' COMMENT 'Digunakan untuk pembatasan panjang karakter, jika diisi lebih dari 10 tidak diperbolahkan',
  `LengthCUSTID_` smallint(6) DEFAULT '10' COMMENT 'Digunakan untuk pembatasan panjang karakter, jika diisi lebih dari 10 tidak diperbolahkan',
  PRIMARY KEY (`ConfigID`),
  KEY `FKGudang` (`GDGID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- ----------------------------
-- Records of pxsystem
-- ----------------------------
INSERT INTO `pxsystem` VALUES ('1', 'PCS', '01', '01', 'ID', '01', '2', '5', '', '3', 'NON', 'NON', 'NON', 'NORMA', 'Y', 'N', 'N', 'N', 'N', 'N', '30', '30', '0', null, '10', '10');

-- ----------------------------
-- Table structure for `pxtype`
-- ----------------------------
DROP TABLE IF EXISTS `pxtype`;
CREATE TABLE `pxtype` (
  `TypeID` varchar(10) NOT NULL,
  `Keterangan` varchar(30) DEFAULT NULL,
  `TglU` datetime DEFAULT NULL,
  PRIMARY KEY (`TypeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pxtype
-- ----------------------------
INSERT INTO `pxtype` VALUES ('01', 'KONFIGURASI', '2013-05-18 09:58:02');
INSERT INTO `pxtype` VALUES ('02', 'BONUS', '2013-05-18 09:58:07');
INSERT INTO `pxtype` VALUES ('03', 'NORMAL', '2013-05-18 09:58:16');

-- ----------------------------
-- Table structure for `pxuser`
-- ----------------------------
DROP TABLE IF EXISTS `pxuser`;
CREATE TABLE `pxuser` (
  `GroupUser` varchar(10) NOT NULL,
  `userID` varchar(10) NOT NULL DEFAULT '',
  `pass` varchar(50) DEFAULT NULL,
  `Nm_user` varchar(30) DEFAULT NULL,
  `lnoaktif` char(1) DEFAULT '0',
  PRIMARY KEY (`GroupUser`,`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii;

-- ----------------------------
-- Records of pxuser
-- ----------------------------
INSERT INTO `pxuser` VALUES ('99', 'afes', '05000000D43FABB640610ED72305162026A7B8C205', 'AFES OKTAVIANUS', '0');
INSERT INTO `pxuser` VALUES ('ADMINISTRA', 'programmer', '05000000D43FABB640610ED72305162026A7B8C205', 'ADMINISTRATOR', '0');
INSERT INTO `pxuser` VALUES ('DEMO', 'demo', '05000000D43FABB640610ED72305162026A7B8C205', 'DEMO', '0');

-- ----------------------------
-- Table structure for `pxvaluta`
-- ----------------------------
DROP TABLE IF EXISTS `pxvaluta`;
CREATE TABLE `pxvaluta` (
  `VALID` varchar(5) COLLATE ascii_bin NOT NULL,
  `KETERANGAN` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `TGLU` datetime DEFAULT NULL,
  `Status_` char(2) COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Nilai dari status ini adalah untuk menentukan valuta ini akan dipakai dimana',
  PRIMARY KEY (`VALID`,`Status_`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- ----------------------------
-- Records of pxvaluta
-- ----------------------------
INSERT INTO `pxvaluta` VALUES ('ID', 'RUPIAH', '2013-05-17 23:01:03', 'AP');
INSERT INTO `pxvaluta` VALUES ('ID', 'RUPIAH', '2013-05-17 23:01:35', 'AR');

-- ----------------------------
-- Table structure for `pxvalutatukar`
-- ----------------------------
DROP TABLE IF EXISTS `pxvalutatukar`;
CREATE TABLE `pxvalutatukar` (
  `TUKARID` smallint(5) NOT NULL AUTO_INCREMENT,
  `VALID` varchar(5) COLLATE ascii_bin NOT NULL,
  `TUKAR` decimal(28,8) DEFAULT NULL,
  `TGL1` date DEFAULT NULL COMMENT 'Digunakan untuk filter dipenjualan dan pembelian kode tukar ini akan digunakan sampai kapan',
  `TGL2` date DEFAULT NULL COMMENT 'Digunakan untuk filter dipenjualan dan pembelian kode tukar ini akan digunakan sampai kapan',
  `TglU` datetime DEFAULT NULL,
  `Stat_` smallint(6) DEFAULT '0' COMMENT '0 : Aktif | 1 : Non Aktif',
  PRIMARY KEY (`TUKARID`,`VALID`),
  KEY `FKValuta` (`VALID`),
  CONSTRAINT `FKValuta` FOREIGN KEY (`VALID`) REFERENCES `pxvaluta` (`VALID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- ----------------------------
-- Records of pxvalutatukar
-- ----------------------------
INSERT INTO `pxvalutatukar` VALUES ('1', 'ID', '1.00000000', '2013-05-01', '2013-05-31', '2013-05-16 21:09:19', '0');

-- ----------------------------
-- Table structure for `pxwarna`
-- ----------------------------
DROP TABLE IF EXISTS `pxwarna`;
CREATE TABLE `pxwarna` (
  `WRNID` varchar(10) NOT NULL,
  `Keterangan` varchar(30) DEFAULT NULL,
  `TGLU` datetime DEFAULT NULL,
  PRIMARY KEY (`WRNID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pxwarna
-- ----------------------------
INSERT INTO `pxwarna` VALUES ('01', 'MERAH', '2013-05-18 10:36:04');
INSERT INTO `pxwarna` VALUES ('02', 'BIRU', '2013-05-18 10:36:08');
INSERT INTO `pxwarna` VALUES ('03', 'PUTIH', '2013-05-18 10:36:12');

-- ----------------------------
-- Table structure for `pxwilpurchase`
-- ----------------------------
DROP TABLE IF EXISTS `pxwilpurchase`;
CREATE TABLE `pxwilpurchase` (
  `WilayahID` varchar(3) NOT NULL,
  `Keterangan` varchar(30) DEFAULT NULL,
  `TglU` datetime DEFAULT NULL,
  PRIMARY KEY (`WilayahID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of pxwilpurchase
-- ----------------------------

-- ----------------------------
-- Table structure for `pxwilsales`
-- ----------------------------
DROP TABLE IF EXISTS `pxwilsales`;
CREATE TABLE `pxwilsales` (
  `WilayahID` varchar(5) COLLATE ascii_bin NOT NULL,
  `Description` varchar(50) COLLATE ascii_bin DEFAULT NULL,
  `TglU` datetime DEFAULT NULL,
  PRIMARY KEY (`WilayahID`)
) ENGINE=InnoDB DEFAULT CHARSET=ascii COLLATE=ascii_bin;

-- ----------------------------
-- Records of pxwilsales
-- ----------------------------

-- ----------------------------
-- View structure for `vbaranghbeli`
-- ----------------------------
DROP VIEW IF EXISTS `vbaranghbeli`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vbaranghbeli` AS select `b`.`BRGID` AS `BRGID`,`b`.`Nama1` AS `NAMA1`,`b`.`Stn3` AS `STN3`,`h`.`hbeli` AS `HBeli`,`b`.`Jenis` AS `Jenis`,`pxjenis`.`Keterangan` AS `KetJenis`,`b`.`gol` AS `gol`,`pxgolongan`.`Keterangan` AS `KetGol`,`b`.`merek` AS `merek`,`pxmerek`.`KETERANGAN` AS `KetMerek` from ((((`inbarang` `b` join `inbaranghbeli` `h` on(((`b`.`BRGID` = `h`.`BrgID`) and (`b`.`cab` = `h`.`cabID`)))) join `pxjenis` on((`b`.`Jenis` = `pxjenis`.`JenisID`))) join `pxmerek` on((`b`.`merek` = `pxmerek`.`MRKID`))) join `pxgolongan` on((`b`.`gol` = `pxgolongan`.`GolID`))) ;

-- ----------------------------
-- View structure for `vbarangsatuan`
-- ----------------------------
DROP VIEW IF EXISTS `vbarangsatuan`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vbarangsatuan` AS select `inbarang`.`BRGID` AS `BRGID`,`inbarang`.`Stn3` AS `Stn`,1 AS `ISI`,3 AS `NStn` from `inbarang` where (`inbarang`.`Stn3` <> '') union all select `inbarang`.`BRGID` AS `BRGID`,`inbarang`.`Stn2` AS `Stn`,`inbarang`.`Isi2` AS `Isi2`,2 AS `2` from `inbarang` where (`inbarang`.`Stn2` <> '') union all select `inbarang`.`BRGID` AS `BRGID`,`inbarang`.`Stn1` AS `Stn`,`inbarang`.`Isi1` AS `Isi1`,1 AS `1` from `inbarang` where (`inbarang`.`Stn1` <> '') ;

-- ----------------------------
-- Procedure structure for `PX_Find_Barang`
-- ----------------------------
DROP PROCEDURE IF EXISTS `PX_Find_Barang`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PX_Find_Barang`(IN Nama_ varchar(50))
BEGIN
	#Routine body goes here...	
  DECLARE Metode_ SMALLINT;
  Select Metode Into Metode_ FROM pxsystem;
	Select IFNULL(B.BRGID,'') As Nama, B.Stn1, B.Stn2, B.Stn3, B.Isi1, B.Isi2,
  (CASE Metode_ WHEN 1 THEN H.HBeli When 2 THEN H.Hpp End) as HPP_  From inbarang as B 
  Inner JOIN inbaranghbeli as H On B.BrgID = H.BrgID
  WHERE
	(B.BRGID =Nama_) or (B.Nama1 =Nama_);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `px_find_table`
-- ----------------------------
DROP PROCEDURE IF EXISTS `px_find_table`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `px_find_table`(in brgID_ varchar(30), in CabID_ varchar(10), in GdgID_ varchar(10), in Table_ varchar(50))
BEGIN
	#Routine body goes here...
	Declare hasil varchar(1000);
	IF Table_ ='inbarangopname' THEN
		Set hasil =	(select BrgID as Nama from inbarangopname where GDGID=GdgID_
								 and brgID =brgID_ and cabID =cabiD_);
  End IF;

	IF Table_ = 'pxsystem' THEN
		set Hasil =(Select CabID As Nama From pxcabang where EXISTS(select CabId from pxsystem));
  End IF;

  IF Table_ = 'inbarangGudang' THEN
    set Hasil = (select brgID as nama from inbaranggudang WHERE GDGID=GdgID_
								 and brgID =brgID_ and cabID =cabiD_);
  End If;

  IF Table_ = 'inbarangHBeli' THEN
    set Hasil = (select brgID as nama from inbarangHbeli WHERE brgID =brgID_ and cabID =cabiD_);
  End If;

	IF Table_ = 'inbarangHJual' THEN
    set Hasil = (select brgID as nama from inbarangHJual WHERE brgID =brgID_ and cabID =cabiD_ and HRGID = GDGID_);
  End IF;

  IF Table_ = 'inbarangHJualmin' THEN
		set Hasil = (select brgID as nama from inbaranghjualmin WHERE brgID =brgID_ and cabID =cabiD_ );
  End IF;

	IF Table_ = 'inbarangGudangRAK' THEN
		set Hasil = (select brgID as nama from inbaranggudangrak WHERE brgID =brgID_ and cabID =cabiD_ and GDGID = GDGID_);
  End IF;

	IF Table_ = 'APSupplier' THEN
		set Hasil = (select SupID as nama from apsupplier WHERE SUPID =BRgid_ and cabID =cabiD_ );
  End IF;
	
	IF isnull(hasil) THEN set hasil =''; end if;
  Select Hasil; 
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_cek_harga_jual`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_cek_harga_jual`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cek_harga_jual`(IN kode_ Varchar(30))
BEGIN
	#Routine body goes here...
  Declare HitProfit_ Smallint;
   -- Cari Nilai Hitung Profit Di PXSystem
  Set HitProfit_ =  (Select Count(Profit_) From pxsystem where profit_ = 1);
  # 
  If HitProfit_ = 1 Then
     /* signal sqlstate '45000' set message_text = kode_;  
     Update  INBarang Set HJual1 = (select H1 From INBarangHJual where BrgID = kode_), HJual2 = (select H2 From INBarangHJual where BrgID = kode_), 
     HJual3 = (select H3 From INBarangHJual where BrgID = kode_) Where BrgID = kode_;
     */
		select H1, H2, H3 From INBarangHJual where BrgID = kode_ ;
   End If;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_delete_all`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_delete_all`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_delete_all`(IN Table_ varchar(50), IN Stat_ smallint, IN BRGID_ Varchar(50), IN GDGID_ Varchar(5))
BEGIN	
  #Jika memilih dihapus semua
  if Table_ ='inbarangGudang' THEN
    if stat_ = 1 Then
			Delete From inbaranggudang where GDGID = GDGID_;
		ELSE
			Delete From inbaranggudang where GDGID = GDGID_ And BrgID = BrgID_;
    END IF;
  ELSEIF Table_ ='inbarangopname' THEN
    if stat_ = 1 Then
			Delete From inbarangopname where GDGID = GDGID_;
		ELSE
			Delete From inbarangopname where GDGID = GDGID_ And BrgID = BrgID_;
    END IF;
	ELSEIF Table_ ='inbarangHBeli' THEN
    if stat_ = 1 Then
			Delete From inbaranghbeli where CabID = GDGID_;
		ELSE
			Delete From inbaranghbeli where CabId = GDGID_ And BrgID = BrgID_;
    END IF;
	ELSEIF Table_ ='APSupplier' THEN
    if stat_ = 1 Then
			Delete From apsupplier where CabID = GDGID_;
		ELSE
			Delete From apsupplier where CabId = GDGID_ And Supid = BrgID_;
    END IF;
  End If;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_Fifo`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_Fifo`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_Fifo`(IN GdgID_ varchar(10), in brgID_ varchar(30), in cabId_ varchar(10), 
in tgl_ datetime, in hpokok_ decimal(28,8), in stn_ varchar(1), in qty_ decimal(18,8), in Qtyold_ decimal(18,8), in id_ varchar(10), in kodetran_ varchar(10))
BEGIN
	Declare cekfifo integer;            -- 			  Cek Barang Fifo
  Declare oldstoktemp decimal(28,8);  -- 				Cek Stock Fifo       
  Declare newstoktemp decimal(28,8);  -- 			  Stock Baru        
  Declare oldqmtemp decimal(28,8);    --        Declare cekposbrg integer;
  Declare hasiltemp decimal(28,8);    -- 				Hasil Akhir Stock
  Declare isitemp decimal(18,8);  
  Declare isi2temp decimal(18,8);
	DECLARE  valid_ varchar(10);
  Declare tukarSys DECIMAL(28,8); 
	-- mencari nilai isi dari masing2 satuan	
	
	Set valid_=(Select ValID from PXSystem);
	Set tukarsys=(select tukar from PXValutaTukar where valID=valid_ and Tglu <= tgl_ order by TukarID desc);
	

	if stn_ = '1' then
			 set isitemp  = '0';
			 set isitemp  = (select isi1 from INbarang where brgID=brgID_);
			 set isi2temp = isitemp * qty_;
	elseif stn_ = '2' then
			set isitemp ='0';
			set isitemp  = (select isi2 from INBarang where brgID=brgID_);
			set isi2temp = isitemp * qty_;
	end if;   
	-- table fifo / average
	set cekfifo=(Select Count(*) from inbarangFifo where GdgID=gdgID_ and brgID=brgID_ and cabID=CabID_ and tgl=tgl_);
  if cekfifo = 0 then 
     insert into inbarangFifo(cabID, gdgID, brgID, tgl, qm, hrg, valID, tukar, bukti, create_id, create_tgl) values
      (CabID_, gdgID_, brgID_, tgl_, qty_, hpokok_*tukarsys, valID_, tukarsys, kodetran_,ID_, now());

  Else
		 Set oldqmtemp = qtyold_;
		 Set oldstoktemp =(select qm from inbarangfifo where GdgID=gdgID_ and brgID=brgID_ and cabID=cabID_  );
		 set newstoktemp = qty_;
		 set hasiltemp = (oldstoktemp - oldqmtemp) + newstoktemp;
     Update inbarangFifo set qm=qty_, hrg=hpokok_*tukarsys, valID=valID_, tukar=tukarsys, bukti=kodetran_, modify_tgl=now(), modify_tgl=ID_
       where cabID=CabID_ and brgID=brgID_ and GdgID=gdgID_ and tgl=tgl_;        
  end if;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_find_Gudang_Min_Max`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_find_Gudang_Min_Max`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_find_Gudang_Min_Max`(IN BrgIDAwal varchar(30), IN BrgIDAkhir varchar(30), IN GDGIDTemp varchar(5), IN StatAll smallint, in cari varchar(30))
BEGIN
	DECLARE Metode_ VARCHAR(1);
	SET metode_= (Select Metode from pxsystem);  
	 
	  if statall = 0 THEN
						SELECT M.BRGID, M.GDGID, M.CabID, M.MIN, M.MAX
						FROM inbaranggudang M Inner Join inbarang b on m.BRGID = b.BRGID WHERE M.GDGID = GDGIDTEMP
				UNION ALL
						select m.BRGID, Nama1 as Nama, (Select CabId From pxsystem) As Cabang, 0 As Mini, 0 As Maxi
            from inbarang m Where M.BRGID not In (SELECT BRGID From inbaranggudang Where GdgID=GdgIDTemp);
		ELSE
				 if Cari ='BRGID' THEN
							 SELECT M.BRGID, M.GDGID, M.CabID, M.MIN, M.MAX
						FROM inbaranggudang M Inner Join inbarang b on m.BRGID = b.BRGID WHERE M.GDGID = GDGIDTEMP AND
               b.BRGID>=BRGIDAwal and b.BRGID<=BRGIDakhir							 
						 UNION ALL
							 select m.BRGID, Nama1 as Nama, (Select CabId From pxsystem) As Cabang, 0 As Mini, 0 As Maxi
               from inbarang m Where M.BRGID not In (SELECT BRGID From inbaranggudang Where GdgID=GdgIDTemp)
               and m.BRGID>=BRGIDAwal and m.BRGID<=BRGIDakhir;
         End IF; 

			 	 if Cari ='Jns' THEN
								SELECT M.BRGID, M.GDGID, M.CabID, M.MIN, M.MAX
								FROM inbaranggudang M Inner Join inbarang b on m.BRGID = b.BRGID WHERE M.GDGID = GDGIDTEMP 
                AND b.Jenis>=BRGIDAwal and b.Jenis<=BRGIDakhir
						UNION
								select m.BRGID, Nama1 as Nama, (Select CabId From pxsystem) As Cabang, 0 As Mini, 0 As Maxi
                from inbarang m Where M.BRGID not In (SELECT BRGID From inbaranggudang Where GdgID=GdgIDTemp) 
                and m.Jenis>=BRGIDAwal and m.Jenis<=BRGIDakhir;
				 End If;
	
		     if Cari ='Gol' THEN
  							SELECT M.BRGID, M.GDGID, M.CabID, M.MIN, M.MAX
								FROM inbaranggudang M Inner Join inbarang b on m.BRGID = b.BRGID WHERE M.GDGID = GDGIDTEMP 
                And b.gol>=BRGIDAwal and b.gol<=BRGIDakhir
						 UNION
  							select m.BRGID, Nama1 as Nama, (Select CabId From pxsystem) As Cabang, 0 As Mini, 0 As Maxi
                from inbarang m Where M.BRGID not In (SELECT BRGID From inbaranggudang Where GdgID=GdgIDTemp)
                and m.gol>=BRGIDAwal and m.gol<=BRGIDakhir;
          End If;

			    If Cari ='Mrk' THEN
								SELECT M.BRGID, M.GDGID, M.CabID, M.MIN, M.MAX
								FROM inbaranggudang M Inner Join inbarang b on m.BRGID = b.BRGID WHERE M.GDGID = GDGIDTEMP AND
                b.merek>=BRGIDAwal and b.merek<=BRGIDakhir
							UNION
								select m.BRGID, Nama1 as Nama, (Select CabId From pxsystem) As Cabang, 0 As Mini, 0 As Maxi
                from inbarang m Where M.BRGID not In (SELECT BRGID From inbaranggudang Where GdgID=GdgIDTemp)
                and m.merek>=BRGIDAwal and m.merek<=BRGIDakhir;
					End if;
		End IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_find_Gudang_Rak`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_find_Gudang_Rak`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_find_Gudang_Rak`(IN GDGTemp varchar(2), In brgawal varchar(30), in brgAkhir varchar(30), in statall varchar(1), in cari varchar(3))
    DETERMINISTIC
BEGIN
	


































#Routine body goes here...
	
		if statall = '0' THEN
						SELECT M.BRGID, M.GDGID, M.RakID, M.cabID
						FROM inbaranggudangrak M LEFT Outer Join inbarang b on m.BRGID = b.brgID
						where GDGID=gdgtemp
				UNION
						select m.BRGID, '' as gdg, '' as rak, cab AS cab from inbarang m where BRGID not in
						(select BRGID from inbaranggudangrak WHERE gdgID=gdgtemp order by m.BRGID);
		ELSE
			 IF cari ='Brg' THEN
						SELECT M.BRGID, M.GDGID, M.RakID, M.cabID
						FROM inbaranggudangrak M LEFT Outer Join inbarang b on m.BRGID = b.brgID
						where GDGID=gdgtemp and b.BRGID>=brgawal and b.brgID<=brgakhir
				UNION
						select m.BRGID, '' as gdg, '' as rak, cab AS cab from inbarang m where BRGID not in
						(select BRGID from inbaranggudangrak WHERE gdgID=gdgtemp order by m.BRGID) and m.brgID>=brgawal and m.brgID<=brgakhir;
			 end IF;
	     IF cari ='Jns' THEN
		  			SELECT M.BRGID, M.GDGID, M.RakID, M.cabID
						FROM inbaranggudangrak M LEFT Outer Join inbarang b on m.BRGID = b.brgID
						where GDGID=gdgtemp and b.Jenis>=brgawal and b.Jenis<=brgakhir
				UNION
						select m.BRGID, '' as gdg, '' as rak, cab AS cab from inbarang m where BRGID not in
						(select BRGID from inbaranggudangrak WHERE gdgID=gdgtemp order by m.BRGID) and m.Jenis>=brgawal and m.Jenis<=brgakhir;
			 end IF;
	     IF cari ='Gol' THEN
		  			SELECT M.BRGID, M.GDGID, M.RakID, M.cabID
						FROM inbaranggudangrak M LEFT Outer Join inbarang b on m.BRGID = b.brgID
						where GDGID=gdgtemp and b.gol>=brgawal and b.gol<=brgakhir
				UNION
						select m.BRGID, '' as gdg, '' as rak, cab AS cab from inbarang m where BRGID not in
						(select BRGID from inbaranggudangrak WHERE gdgID=gdgtemp order by m.BRGID) and m.gol>=brgawal and m.gol<=brgakhir;
			 end IF;
			 IF cari ='Mrk' THEN
						SELECT M.BRGID, M.GDGID, M.RakID, M.cabID
						FROM inbaranggudangrak M LEFT Outer Join inbarang b on m.BRGID = b.brgID
						where GDGID=gdgtemp and b.merek>=brgawal and b.merek<=brgakhir
				UNION
						select m.BRGID, '' as gdg, '' as rak, cab AS cab from inbarang m where BRGID not in
						(select BRGID from inbaranggudangrak WHERE gdgID=gdgtemp order by m.BRGID) and m.merek>=brgawal and m.merek<=brgakhir;
			 end IF;/*#*/
		END IF;	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_find_Harga_Beli`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_find_Harga_Beli`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_find_Harga_Beli`(IN BrgIDAwal varchar(30), IN BrgIDAkhir varchar(30), IN GDGIDTemp varchar(5), IN StatAll smallint, in cari varchar(30))
BEGIN
	DECLARE Metode_ VARCHAR(1);
	SET metode_= (Select Metode from pxsystem);  
	 
	  if statall = 0 THEN
						SELECT M.BRGID, M.CabID, M.HBeli, M.HPP
						FROM inbaranghbeli M Inner Join inbarang b on m.BRGID = b.BRGID
				UNION ALL
						select m.BRGID, (Select CabId From pxsystem) As Cabang, 0 As hbeli, 0 As hpp
            from inbarang m Where M.BRGID not In (SELECT BRGID From inbaranghbeli);
		ELSE
				 if Cari ='BRGID' THEN
							 SELECT M.BRGID, M.CabID, M.HBeli, M.HPP
						   FROM inbaranghbeli M Inner Join inbarang b on m.BRGID = b.BRGID WHERE b.BRGID>=BRGIDAwal and b.BRGID<=BRGIDakhir							 
						 UNION ALL
							 select m.BRGID, (Select CabId From pxsystem) As Cabang, 0 As hbeli, 0 As hpp
               from inbarang m Where M.BRGID not In (SELECT BRGID From inbaranghbeli)
               and m.BRGID>=BRGIDAwal and m.BRGID<=BRGIDakhir;
         End IF; 

			 	 if Cari ='Jns' THEN
								SELECT M.BRGID, M.CabID, M.HBeli, M.HPP
						    FROM inbaranghbeli M Inner Join inbarang b on m.BRGID = b.BRGID WHERE b.Jenis>=BRGIDAwal and b.Jenis<=BRGIDakhir
						UNION
								select m.BRGID, (Select CabId From pxsystem) As Cabang, 0 As hbeli, 0 As hpp
                from inbarang m Where M.BRGID not In (SELECT BRGID From inbaranghbeli)
                and m.Jenis>=BRGIDAwal and m.Jenis<=BRGIDakhir;
				 End If;
	
		     if Cari ='Gol' THEN
  							SELECT M.BRGID, M.CabID, M.HBeli, M.HPP
						    FROM inbaranghbeli M Inner Join inbarang b on m.BRGID = b.BRGID WHERE b.gol>=BRGIDAwal and b.gol<=BRGIDakhir
						 UNION
  							select m.BRGID, (Select CabId From pxsystem) As Cabang, 0 As hbeli, 0 As hpp
                from inbarang m Where M.BRGID not In (SELECT BRGID From inbaranghbeli)
                and m.gol>=BRGIDAwal and m.gol<=BRGIDakhir;
          End If;

			    If Cari ='Mrk' THEN
								SELECT M.BRGID, M.CabID, M.HBeli, M.HPP
						    FROM inbaranghbeli M Inner Join inbarang b on m.BRGID = b.BRGID WHERE 
                b.merek>=BRGIDAwal and b.merek<=BRGIDakhir
							UNION
								select m.BRGID, (Select CabId From pxsystem) As Cabang, 0 As hbeli, 0 As hpp
                from inbarang m Where M.BRGID not In (SELECT BRGID From inbaranghbeli)
                and m.merek>=BRGIDAwal and m.merek<=BRGIDakhir;
					End if;
		End IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_find_Harga_Jual`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_find_Harga_Jual`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_find_Harga_Jual`(In brgtemp varchar(30))
BEGIN
	 
	  		SELECT M.CabID, M.HrgID, m.BrgID, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3
				FROM inbaranghjual M Inner Join inbaranghbeli b on m.brgID = b.brgID  and b.brgID=brgtemp
		UNION
				select m.cabID, H.HRGID, m.BrgID as BRG, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3 
        from inbaranghbeli m Cross JOIN pxharga as H where m.BrgID not in
				(select BRGID from inbaranghjual order by m.BRGID) and m.brgID=brgtemp ;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_find_Harga_Jual_ALL`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_find_Harga_Jual_ALL`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_find_Harga_Jual_ALL`(IN BrgIDAwal varchar(30), IN BrgIDAkhir varchar(30), IN HrgID_ varchar(5), IN StatAll smallint, in cari varchar(30))
BEGIN

	  if statall = 0 THEN
						SELECT M.CabID, M.HrgID, m.BrgID, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3
						FROM inbaranghjual M Inner Join inbaranghbeli b on m.brgID = b.brgID where M.HrgID=HrgID_
				UNION
						select m.cabID, H.HRGID, m.BrgID as BRG, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3 
						from inbaranghbeli m Cross JOIN pxharga as H where m.BrgID not in
						(select BRGID from inbaranghjual order by m.BRGID) and H.HrgID = HRGID_;
		ELSE
				 if Cari ='BRGID' THEN
							 SELECT M.CabID, M.HrgID, m.BrgID, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3
							 FROM inbaranghjual M Inner Join inbaranghbeli b on m.brgID = b.brgID  Where M.HrgID=HrgID_ AND
							 b.BRGID>=BRGIDAwal and b.BRGID<=BRGIDakhir							 
						 UNION
							 select m.cabID, H.HRGID, m.BrgID as BRG, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3 
							 from inbaranghbeli m Cross JOIN pxharga as H where m.BrgID not in
							 (select BRGID from inbaranghjual order by m.BRGID) and H.HrgID=HrgID_
               and m.BRGID>=BRGIDAwal and m.BRGID<=BRGIDakhir;
         End IF; 

			 	 if Cari ='Jns' THEN
								SELECT M.CabID, M.HrgID, m.BrgID, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3
							  FROM inbaranghjual M Inner Join inbaranghbeli b on m.brgID = b.brgID  Where M.HrgID=HrgID_ 
                AND b.Jenis>=BRGIDAwal and b.Jenis<=BRGIDakhir
						UNION
								select m.cabID, H.HRGID, m.BrgID as BRG, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3 
							  from inbaranghbeli m Cross JOIN pxharga as H where m.BrgID not in
							  (select BRGID from inbaranghjual order by m.BRGID) and H.HrgID=HrgID_
                and m.Jenis>=BRGIDAwal and m.Jenis<=BRGIDakhir;
				 End If;
	
		     if Cari ='Gol' THEN
  							 SELECT M.CabID, M.HrgID, m.BrgID, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3
							   FROM inbaranghjual M Inner Join inbaranghbeli b on m.brgID = b.brgID  Where M.HrgID=HrgID_ And 
                 b.gol>=BRGIDAwal and b.gol<=BRGIDakhir
						 UNION
  							 select m.cabID, H.HRGID, m.BrgID as BRG, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3 
							   from inbaranghbeli m Cross JOIN pxharga as H where m.BrgID not in
							   (select BRGID from inbaranghjual order by m.BRGID) and H.HrgID=HrgID_
                 and m.gol>=BRGIDAwal and m.gol<=BRGIDakhir;
          End If;

			    If Cari ='Mrk' THEN
									 SELECT M.CabID, M.HrgID, m.BrgID, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3
									 FROM inbaranghjual M Inner Join inbaranghbeli b on m.brgID = b.brgID  Where M.HrgID=HrgID_ And
									 b.merek>=BRGIDAwal and b.merek<=BRGIDakhir
							UNION
									 select m.cabID, H.HRGID, m.BrgID as BRG, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3 
									 from inbaranghbeli m Cross JOIN pxharga as H where m.BrgID not in
									 (select BRGID from inbaranghjual order by m.BRGID) and H.HrgID=HrgID_
									 and m.merek>=BRGIDAwal and m.merek<=BRGIDakhir;
					End if;
		End IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_find_harga_Jual_Minimal`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_find_harga_Jual_Minimal`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_find_harga_Jual_Minimal`(In brgtempakhir varchar(30), in brgtempawal varchar(30), in statAll smallint, in cari varchar(3))
BEGIN
   If StatAll = 0 THEN
				SELECT M.CabID, m.BrgID, b.hbeli, m.Hpp, m.H1, m.H2, m.H3
				FROM inbaranghjualmin M LEFT Outer Join inbaranghbeli b on m.BRGID = b.brgID 
			UNION
				select m.cabID, m.BRGID, m.hbeli, m.Hpp, 0 as hjual1, 0 as hjual2, 0 as hjual3 from inbaranghbeli m where BRGID not in
				(select BRGID from inbaranghjualmin B order by B.BRGID) ; 
	 ELSE
			if cari ='Brg' THEN
				 SELECT M.CabID, m.BrgID, b.hbeli, m.Hpp, m.H1, m.H2, m.H3
				 FROM inbaranghjualmin M LEFT Outer Join inbaranghbeli b on m.BRGID = b.brgID
				 Where b.BRGID>=brgtempawal and b.BRGID<=brgtempakhir
			UNION
				 select m.cabID, m.BRGID, m.hbeli, m.Hpp, 0 as hjual1, 0 as hjual2, 0 as hjual3 from inbaranghbeli m where BRGID not in
				 (select BRGID from inbaranghjualmin B order by B.BRGID)
				 and m.BRG>=brgtempawal and m.BRG<=brgtempakhir ;	
			END IF;
      IF Cari ='Jns' THEN
				 SELECT M.CabID, m.BrgID, b.hbeli, m.Hpp, m.H1, m.H2, m.H3
				 FROM inbaranghjualmin M LEFT Outer Join inbaranghbeli b on m.BRGID = b.brgID INNER JOIN inbarang c on m.BRGID = c.BRGID
				 Where c.Jenis>=brgtempawal and c.Jenis<=brgtempakhir
			UNION
				 select m.cabID, m.BRGID, m.hbeli, m.Hpp, 0 as hjual1, 0 as hjual2, 0 as hjual3 from inbaranghbeli m 
				 inner JOIN inbarang c on m.BRGID = c.BRGID where BRGID not in
				 (select BRGID from inbaranghjualmin B order by B.BRGID) and c.Jenis>=brgtempawal and c.Jenis<=brgtempakhir ;
			END If;
			IF Cari ='Gol' THEN
				 SELECT M.CabID, m.BrgID, b.hbeli, m.Hpp, m.H1, m.H2, m.H3
				 FROM inbaranghjualmin M LEFT Outer Join inbaranghbeli b on m.BRGID = b.brgID INNER JOIN inbarang c on m.BRGID = c.BRGID
				 Where b.gol>=brgtempawal and b.gol<=brgtempakhir
			UNION
				 select m.cabID, m.BRGID, m.hbeli, m.Hpp, 0 as hjual1, 0 as hjual2, 0 as hjual3 from inbaranghbeli m 
				 inner JOIN inbarang c on m.BRGID = c.BRGID where BRGID not in
				 (select BRGID from inbaranghjualmin B order by B.BRGID) and m.gol>=brgtempawal and m.gol<=brgtempakhir ;	
			End IF;
			IF Cari ='Mrk' THEN
				 SELECT M.CabID, m.BrgID, b.hbeli, m.Hpp, m.H1, m.H2, m.H3
				 FROM inbaranghjualmin M LEFT Outer Join inbaranghbeli b on m.BRGID = b.brgID INNER JOIN inbarang c on m.BRGID = c.BRGID
				 Where b.gol>=brgtempawal and b.gol<=brgtempakhir
			UNION
			   Select m.cabID, m.BRGID, m.hbeli, m.Hpp, 0 as hjual1, 0 as hjual2, 0 as hjual3 from inbaranghbeli m 
				 inner JOIN inbarang c on m.BRGID = c.BRGID where BRGID not in
				 (select BRGID from inbaranghjualmin B order by B.BRGID) and m.merek>=brgtempawal and m.merek<=brgtempakhir ;
			End IF;
	 End IF;		
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_find_opname`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_find_opname`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_find_opname`(IN BrgIDAwal varchar(30), IN BrgIDAkhir varchar(30), IN GDGIDTemp varchar(5), IN StatAll smallint, in cari varchar(30))
BEGIN
	DECLARE Metode_ VARCHAR(1);
	SET metode_= (Select Metode from pxsystem);  
	 
	  if statall = 0 THEN
						SELECT M.NOMOR, M.BRGID, M.NSTN, M.HPOKOK, M.QTY, M.POSISI, M.GDGID, M.lacc
						FROM inbarangopname M LEFT Outer Join inbaranghbeli b on m.BRGID = b.BRGID where M.GDGID = GDGIDTemp
				UNION ALL
						select 1 as nomor, m.BRGID, b.Stn3, CASE metode_
            WHEN '0' THEN M.hbeli 
            ELSE M.hpp END AS HPokok, 0 as QTY, Curdate() as Posisi,b.Nama1 as Nama, '' as acc
            from inbaranghbeli m LEFT OUTER JOIN inbarang as b on m.BrgID = b.BRGID where M.BRGID not in
						(select BRGID from inbarangopname where GDGID = GDGIDTemp order by m.BRGID );
		ELSE
				 if Cari ='BRGID' THEN
							 SELECT M.NOMOR,M.BRGID, M.NSTN, M.HPOKOK, M.QTY, M.POSISI, M.GDGID, M.lacc
							 FROM inbarangopname M LEFT Outer Join inbaranghbeli b on m.BRGID = b.BRGID where M.GDGID = GDGIDTemp
						 UNION
							 select 0 as nomor, m.BRGID, b.Stn3, CASE metode_
							 WHEN '0' THEN M.hbeli 
							 ELSE M.hpp END AS HPokok, 0 as QTY, Curdate() as Posisi, b.Nama1 as Nama, '' as acc
							 from inbaranghbeli m LEFT OUTER JOIN inbarang as b on m.BrgID = b.BRGID where M.BRGID not in
							 (select BRGID from inbarangopname order by m.BRGID) and m.BRGID>=BRGIDAwal and m.BRGID<=BRGIDakhir;
         End IF; 

			 	 if Cari ='Jns' THEN
								SELECT M.NOMOR,M.BRGID, M.NSTN, M.HPOKOK, M.QTY, M.POSISI, M.GDGID, M.lacc
								FROM inbarangopname M LEFT Outer Join inbaranghbeli b on m.BRGID = b.BRGID where M.GDGID = GDGIDTemp
						UNION
								select 0 as nomor, m.BRGID, b.Stn3, CASE metode_
								WHEN '0' THEN M.hbeli 
								ELSE M.hpp END AS HPokok, 0 as QTY, Curdate() as Posisi, b.Nama1 as Nama, '' as acc
								from inbaranghbeli m LEFT OUTER JOIN inbarang as b on m.BrgID = b.BRGID where M.BRGID not in
								(select BRGID from inbarangopname order by m.BRGID) and b.Jns>=BRGIDAwal and b.Jns<=BRGIDakhir;
				 End If;
	
		     if Cari ='Gol' THEN
  							SELECT M.NOMOR,M.BRGID, M.NSTN, M.HPOKOK, M.QTY, M.POSISI, M.GDGID, m.lacc
	    					FROM inbarangopname M LEFT Outer Join inbaranghbeli b on m.BRGID = b.BRGID where M.GDGID = GDGIDTemp
						 UNION
  							select 0 as nomor, m.BRGID, b.Stn3, CASE metode_
	  						WHEN '0' THEN M.hbeli 
		  					ELSE M.hpp END AS HPokok, 0 as QTY, Curdate() as Posisi, b.Nama1 as Nama, '' as acc
			  				from inbaranghbeli m LEFT OUTER JOIN inbarang as b on m.BrgID = b.BRGID where M.BRGID not in
				  			(select BRGID from inbarangopname  order by m.BRGID) and b.gol>=BRGIDAwal and b.gol<=BRGIDakhir;
          End If;

			    If Cari ='Mrk' THEN
								SELECT M.NOMOR,M.BRGID, M.NSTN, M.HPOKOK, M.QTY, M.POSISI, M.GDGID, m.lacc
								FROM inbarangopname M LEFT Outer Join inbaranghbeli b on m.BRGID = b.BRGID Where m.GDGID =GDGIDtemp
							UNION
								select 0 as nomor, m.BRGID, b.Stn3, CASE metode_
								WHEN '0' THEN M.hbeli 
								ELSE M.hpp END AS HPokok, 0 as QTY, Curdate() as Posisi, b.Nama1 as Nama, '' as acc
								from inbaranghbeli m LEFT OUTER JOIN inbarang as b on m.BrgID = b.BRGID where M.BRGID not in
								(select BRGID from inbarangopname  order by m.BRGID) and b.gol>=BRGIDAwal and b.gol<=BRGIDakhir;
					End if;
		End IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_find_satuan`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_find_satuan`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_find_satuan`(IN BRGID_ varchar(30))
BEGIN
	#Routine body goes here...
	/*
  select (Select GdgID From pxgudang where GDGID =:kode) as Gudang, 
  BRGID, ISNULL(stn3,''), ISNULL(stn2,''), ISNULL(stn1,''), ISNULL(Isi2,0), ISNULL(isi1,0), 
  hbeli, hpp, hpokokbeli, hpokokhpp from vw_satuanBRGID where gdg =:kode and BRGID=:kdBRGID
	order by BRGID asc
  */

  select `inbarang`.`BRGID` AS `BRGID`, `inbarang`.`Stn3` AS `stn`, 1 AS ISI, 1 as stn_ from `inbarang` where BRGID=BRGID_ group by `inbarang`.`BRGID` 
  union all 
  select `inbarang`.`BRGID` AS `BRGID`, `inbarang`.`Stn2` AS `Stn2`, `inbarang`.`Isi2` AS `Isi2`, 2 as stn_ from `inbarang` where (`inbarang`.`Stn2` <> '') and 
  BRGID=BRGID_ group by `inbarang`.`BRGID` 
  union all 
  select `inbarang`.`BRGID` AS `BRGID`, `inbarang`.`Stn1` AS `stn1`, `inbarang`.`Isi1` AS `Isi1`, 3 as stn_ from `inbarang` where (`inbarang`.`Stn1` <> '') and 
  BRGID=BRGID_ group by `inbarang`.`BRGID`;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_find_satuan_`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_find_satuan_`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_find_satuan_`(IN BRGID_ varchar(30), IN stn_ varchar(5))
BEGIN
	#Routine body goes here...
  select `inbarang`.`BRGID` AS `BRGID`, `inbarang`.`Stn3` AS `stn`, 1 AS ISI, 1 as stn_ from `inbarang` where BRGID=BRGID_ and Stn3=stn_ group by `inbarang`.`BRGID` 
  union all 
  select `inbarang`.`BRGID` AS `BRGID`, `inbarang`.`Stn2` AS `Stn`, `inbarang`.`Isi2` AS `Isi2`, 2 as stn_ from `inbarang` where (`inbarang`.`Stn2` <> '') and 
  BRGID=BRGID_ and Stn2=stn_ group by `inbarang`.`BRGID` 
  union all 
  select `inbarang`.`BRGID` AS `BRGID`, `inbarang`.`Stn1` AS `stn`, `inbarang`.`Isi1` AS `Isi1`, 3 as stn_ from `inbarang` where (`inbarang`.`Stn1` <> '') and 
  BRGID=BRGID_ and Stn1=stn_ group by `inbarang`.`BRGID`;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_input_gambar`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_input_gambar`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_input_gambar`(in pathtemp varchar(255), in tempketerangan varchar(255),  in tempbrgID varchar(30))
BEGIN
	 update inbaranggambar set PathGbr=pathtemp, Keterangan=tempketerangan WHERE BRGID=tempBRGID;
-- call sp_nomorOpname(tempGDGID, tempCABID, tempposisi, tempBRGID);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_input_temp_harga_beli`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_input_temp_harga_beli`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_input_temp_harga_beli`(in cabID_ varchar(5), in hbeli_ decimal(28,8), in hpp_ decimal(18,8), in brgID_ varchar(30), in stattransaksi varchar(10))
BEGIN
  IF (hbeli_ > 0) or (hpp_ > 0) THEN
		if stattransaksi ='tambah' THEN
		INSERT INTO inbaranghbeli(BrgID,CabID,HBeli,HPP) VALUES(brgID_, CabID_, HBeli_, HPP_);
		ELSE
			 update inbaranghbeli set HBeli=HBeli_, HPP=HPP_, CabID=CabID_ WHERE brgID=BrgID_;
		end if;
	end IF;
-- call sp_nomorOpname(tempGDGID, tempCABID, tempposisi, tempBRGID);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_input_temp_harga_jual`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_input_temp_harga_jual`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_input_temp_harga_jual`(IN BrgID_ varchar(30), IN HRGID_ Varchar(10), IN CABID_ Varchar(5), IN Profit_ Decimal(18,8), IN ProfitNilai_ Decimal(28,8), IN H1_ Decimal(28,8), IN H2_ Decimal(28,8), IN H3_ Decimal(28,8), IN ID_ Varchar(10), IN StatTransaksi Varchar(255), IN HPP_ Decimal(28,8))
BEGIN
	IF (H1_ > 0) or (H2_ > 0) or (H3_ > 0) THEN
		if stattransaksi ='tambah' THEN
        -- HPP diambil dari table inbaranghbeli
				INSERT INTO inbaranghjual(cabID, hrgID, brgID, HPP, Profit, Profitnilai,H1,H2,H3,Create_ID, create_tgl)  
                           VALUES(CabID_, HRGID_, BRGID_, HPP_, Profit_, ProfitNilai_, H1_, H2_, H3_, ID_, NOW());
		ELSE
			 update inbaranghjual set hpp=HPP_, h1=H1_, 
							h2=H2_, h3=H3_, profit=Profit_, profitnilai=Profitnilai_, Modify_Tgl=NOW(), Modify_id = ID_ 
       WHERE brgID=BrgID_ and hrgID=HrgID_ and cabID=CabID_ ;
		end if;
	End IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_input_temp_harga_jual_min`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_input_temp_harga_jual_min`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_input_temp_harga_jual_min`(IN brgID_ varchar(30), in HPP_ decimal(28.8), in stattransaksi varchar(20), in CabID_ varchar(10), in H1_ decimal(28,8), in H2_ decimal(28,8), in H3_ decimal(28,8), In ID_ varchar(10))
BEGIN
	IF (H1_ > 0) or (H2_ > 0) or (H3_ > 0) THEN
		if stattransaksi ='tambah' THEN
					INSERT INTO inbaranghjualmin(cabid, brgid, hpp, h1,h2,h3,Create_ID, Create_TGL) 
					VALUES(CabID_, BrgID_, HPP_, H1_, H2_, H3_, ID_, now());
		ELSE
			 update inbaranghjualmin set hpp=hpp_, h1=h1_, 
							h2=h2_, h3=h3_, Modify_ID=ID_, Modify_Tgl = NOW() WHERE brgID=BrgID_ and cabID=CabID_ ;
		end if;
	End If;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_input_Temp_lokasi_rak`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_input_Temp_lokasi_rak`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_input_Temp_lokasi_rak`(IN tempgdg varchar(2),IN tempbrg varchar(30), in temprak varchar(10), in stattransaksi varchar(20), in tempcab varchar(10))
BEGIN
If temprak <> '' Then
		if stattransaksi ='tambah' THEN
				INSERT INTO inbaranggudangrak(BrgID, GDGID, RAKID, TGLU, CABID) VALUES(tempbrg, tempgdg, temprak, now(), tempcab);
		ELSE
			 update inbaranggudangrak set RAKID=temprak WHERE brgID=tempbrg and gdgID=tempgdg;
		end if;
End IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_input_temp_min_max`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_input_temp_min_max`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_input_temp_min_max`(in tempgdgID varchar(2), in tempcabID varchar(5), in tempMin decimal(18,8), in tempMax decimal(18,8), in tempbrgID varchar(30), in stattransaksi varchar(10))
BEGIN
  IF (tempMin > 0) or (tempMax > 0) THEN
		if stattransaksi ='tambah' THEN
			INSERT INTO inbaranggudang(BrgID,GdgID, MIN,Max,Tglu,CabID) VALUES(tempbrgID, tempgdgID, tempmin, tempmax, now(), tempcabID);
		ELSE
			 update inbaranggudang set min=tempmin, max=tempmax, CabID=tempCabID WHERE brgID=tempbrgID and gdgID=tempgdgID;
		end if;
	end IF;
-- call sp_nomorOpname(tempGDGID, tempCABID, tempposisi, tempBRGID);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_input_temp_opname`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_input_temp_opname`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_input_temp_opname`(in tempgdgID varchar(2), in tempcabID varchar(5), in tempnstn varchar(5), in temphpokok decimal(28,8), in tempqty decimal(18,8), in tempposisi datetime, in tempcreateid varchar(10), in tempcreatetgl datetime, in tempmodify_id varchar(10), in tempmodify_tgl datetime, in tempbrgID varchar(30), in stattransaksi varchar(10), in tempnomor integer)
BEGIN
		DECLARE stntemp VARCHAR(1);
		Declare stn1temp varchar(10);
		Declare stn2temp varchar(10);
		Declare stn3temp varchar(10);
		Declare nomor integer;

		Set stn1temp =(select stn1 from inbarang where BRGID = tempBRGID);
		Set stn2temp =(select stn2 from inbarang where BRGID = tempBRGID);
		Set stn3temp =(select stn3 from inbarang where BRGID = tempBRGID);

		IF tempnstn = stn1temp THEN
			Set stntemp ='1';
		elseif tempnstn = stn2temp THEN
			set stntemp ='2';
		elseif tempnstn = stn3temp THEN
			set stntemp ='3';
		end if;

		if stattransaksi ='tambah' THEN    
				INSERT INTO inbarangopname(GDGID, CABID, STN, NSTN, HPOKOK, QTY, Posisi, Create_ID, Create_Tgl, bukti, nomor, BRGID)
				VALUES(tempGDGID, tempCABID,stntemp, tempnstn, temphpokok, tempqty, tempposisi, tempcreateid, NOW(), 'SO', tempnomor, tempBRGID );
				
		ELSE
			 update inbarangopname set stn=stntemp, NSTN=tempnstn, 
							HPOKOK=temphpokok, POSISI=tempposisi, Modify_id=tempmodify_id, modify_tgl=NOW(), QTY = tempqty WHERE BRGID=tempBRGID and GDGID=tempGDGID and CABID=tempCABID ;
		end if; 
-- call sp_nomorOpname(tempGDGID, tempCABID, tempposisi, tempBRGID);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_input_temp_supplier`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_input_temp_supplier`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_input_temp_supplier`(IN SupID_ varchar(10),IN CABID_ varchar(5),In AL1_ varchar(50),IN AL2_ varchar(50), In Telp_ varchar(20),In NPWP_ varchar(50), In TERM_ integer, In VALID_ varchar(5),in WILID_ varchar(5),in FAX_ varchar(20),in LNOAKTIF_ char(1), in stattransaksi varchar(1000),  IN Nama_ varchar(50))
BEGIN		
	
		if stattransaksi ='tambah' THEN    
				INSERT INTO apsupplier(SUPID, CABID, Nama, AL1, AL2, TELP, NPWP, TERM, VALID, WIlID, FAX, LNOAKTIF)
				VALUES(SupID_, CABID_, Nama_, AL1_, AL2_, Telp_, NPWP_, TERM_, VALID_, WILID_, FAX_, LNOAKTIF_ );
				
		ELSE
			 update apsupplier set Nama=NAMA_, AL1=AL1_, 
							AL2=AL2_, Telp=Telp_, NPWP=NPWP_, Term=Term_, ValID = valID, wilID = wilID_, Fax = Fax_ , LNOAktif =LNOAktif_ 
							WHERE SUPID=SUPID_ and CABID=CABID_ ;
		end if; 
-- call sp_nomorOpname(tempGDGID, tempCABID, tempposisi, tempBRGID);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_kartuhutang`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_kartuhutang`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_kartuhutang`(IN `NoBeli_` varchar(20),IN `Sup_` varchar(10),
IN `Tgl_` date,IN `Saldo_` numeric(28,8),IN `Val_` varchar(5),
IN `Tukar_` numeric(18,8),IN `CabID_` varchar(5),IN `Ket_` varchar(50), 
In Nomer_ Varchar(5), In OLDSaldo_ NUMERIC(28,8), In Trans_ SMALLINT)
BEGIN
  # Create by Afes 
	# tgl 24 Agustus 2013
  # Tujuan untuk membuat kartu hutang
	Declare oldNilaiSaldo_ DECIMAL(28,8);
	Declare hasiltemp_ DECIMAL(28,8);
	# Trans = 0 ( saldo Awal Hutang ) || 1 = Pembelian || 2 = Pembayaran	
  Case Trans_ 
			When 0 THEN						
					IF Not EXISTS (SELECT 1 From apkartuhutang Where Sup=Sup_ and Bukti=Nobeli_ and Nomor = Nomer_ and cabid=cabid_ LIMIT 1) THEN						 						
						 # Simpan data kedalam table Kartu Hutang  
						 Insert into apkartuhutang(bukti, nomor, jtran, DK, Sup, Ket, NIlai, val, tukar, cabID, tgl)
										VALUES(NoBeli_, Nomer_ ,
													(Select JTran From PXKode Where Type IN (Select Type From apnourut Where Type ='Saldo Awal Hutang')) ,
													'K', Sup_, Ket_, saldo_, Val_, Tukar_, CabID_, Tgl_);
					ELSE						 						 
						 Set oldNilaiSaldo_ = (select Nilai from apkartuhutang where Sup=Sup_ and Bukti=Nobeli_ and Nomor = Nomer_ and cabid=cabid_);
						 set hasiltemp_ = (oldNilaiSaldo_ - OldSaldo_) + Saldo_ ;
						 -- SIGNAL SQLSTATE '45000' set Message_Text ='Test';
						 Update apkartuhutang set nilai=hasiltemp_
										where Sup=Sup_ and Bukti=Nobeli_ and Nomor = Nomer_ and cabid=cabid_;  
					End IF;
      When 1 THEN						
					IF Not EXISTS (SELECT 1 From apkartuhutang Where Sup=Sup_ and Bukti=Nobeli_ and Nomor = Nomer_ and cabid=cabid_ LIMIT 1) THEN						 						
						 # Simpan data kedalam table Kartu Hutang  
						 Insert into apkartuhutang(bukti, nomor, jtran, DK, Sup, Ket, NIlai, val, tukar, cabID, tgl)
										VALUES(NoBeli_, Nomer_ ,
													(Select JTran From PXKode Where Type IN (Select Type From apnourut Where Type ='Saldo Awal Hutang')) ,
													'K', Sup_, Ket_, saldo_, Val_, Tukar_, CabID_, Tgl_);
					ELSE						 						 
						 Set oldNilaiSaldo_ = (select Nilai from apkartuhutang where Sup=Sup_ and Bukti=Nobeli_ and Nomor = Nomer_ and cabid=cabid_);
						 set hasiltemp_ = (oldNilaiSaldo_ - OldSaldo_) + Saldo_ ;
						 -- signal sqlstate '01000' set message_text = hasiltemp;
						 Update apkartuhutang set nilai=hasiltemp_
										where Sup=Sup_ and Bukti=Nobeli_ and Nomor = Nomer_ and cabid=cabid_;  
					End IF;
	End CASE;
End
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_kartustock`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_kartustock`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_kartustock`(IN BrgID_ varchar(30), IN GdgID_ Varchar(10), In Qty_ decimal(18,8), 
in QtyOld_ Decimal(18,8), in Posisi_ datetime, in Bukti_ varchar(10), in cabid_ varchar(10), in stnid_ varchar(5), in id_ varchar(10),
in hpokok_ decimal(28,8), in nomor_ smallint, in kodetran_ VARCHAR(10))
BEGIN
			-- 27 Juni 2013
      -- Created By Afes Oktavianus
			-- Tujuan Untuk mencatat in/out Stock di table inbarangkrtstock
			DECLARE Brg_ SMALLINT;
			declare oldstoktemp decimal(18,8);
			declare hasiltemp decimal(18,8);
			DECLARE  valid_ varchar(10);
			Declare tukarSys DECIMAL(28,8); 
			Declare goltemp varchar(10);
      Declare jentemp varchar(10);
      Declare mrktemp varchar(10); 
			
			Set goltemp=(select gol from INBarang where brgID=brgid_);
			Set jentemp=(select jenis from InBarang where brgID=brgid_);
			Set mrktemp=(select merek from INBarang where brgid=brgid_);
			Set valid_=(Select ValID from PXSystem);
			Set tukarsys=(select tukar from PXValutaTukar where valID=valid_ and Tglu <= Posisi_ order by TukarID desc);

			Select IFNULL(1,'0') INTO Brg_ FROM inbarangkrtStock where BrgID IN (Select BrgID FROM inbarangkrtstock where tgl=posisi_ and bukti=bukti_ and brgid=brgId_ and gdgid=gdgId_);
			if ISNULL(brg_) then set Brg_ = 0; END if;
		  IF Brg_ = 0 THEN
						 insert into inbarangkrtStock(cabid, tgl, jtran, mk, brgid, gdgid, valid, tukar, stnid, qty, hpokok, golid, jenisid, merekid, create_id, create_tgl, bukti, nomor)
									values(cabid_, posisi_, kodetran_, 'M', brgID_, gdgid_, valID_, tukarsys, stnid_, qty_, hpokok_*tukarsys, goltemp, jentemp, mrktemp,id_, now(), bukti_, nomor_);         

			Else        						
						Set oldstoktemp =(select qty from inbarangkrtStock where cabid=cabid_ and brgid=brgid_ and gdgid=gdgId_);
						-- set QMTemp =  qty_;
						set hasiltemp = (oldstoktemp - qtyOld_) + Qty_;
						--  signal sqlstate '01000' set message_text = hasiltemp;
						Update inbarangkrtStock set mk='M', qty=hasiltemp, hpokok=hpokok_*tukarsys, valid=valID_, 
						tukar=tukarsys, stnid=stnid_,  modify_tgl=now(), modify_id=id_, bukti =bukti_
						where cabid=cabid_ and brgid=brgid_ and gdgid=gdgid_;  
		 end if;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_kode_auto`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_kode_auto`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_kode_auto`(in table_ smallint, in Notemp varchar(10))
BEGIN
		DECLARE isi integer;
		Declare ltahun VARCHAR(1);
		Declare lbulan VARCHAR(1);
		Declare ltanggal VARCHAR(1);
		declare hasil VARCHAR(255);
		DECLARE bulan SMALLINT;
		DECLARE tahun YEAR;
		DECLARE hari SMALLINT;
		DECLARE xxhasil varchar(5);

		Set ltahun	=(Select lYears FROM pxsystem);
		Set lbulan	=(Select lMonth FROM pxsystem);
		Set ltanggal=(Select lday FROM pxsystem);
	  
    -- -----------------------------------------------------------------------------------------------------------
		IF Table_ = 0 THEN -- Untuk Kode Automatic ID Barang
		 BEGIN				
				DECLARE length_ SMALLINT;
				Declare NOL_ Varchar(30);
				DECLARE BRGID_ Char(1);
				-- Jika Ltahun bernilai Y dan LBulan bernilai Y dan Tanggal Bernilai N
				if (ltahun = 'Y') and (lbulan ='Y') and (ltanggal ='N') and Notemp <> '' THEN
				BEGIN
					DECLARE thn int(2);
					DECLARE kodetemp varchar(5);  

					set tahun=YEAR(now());
					set thn = RIGHT(tahun,2);
					set kodetemp=(Select kode from INnourut where kode=notemp); 

					if LENGTH(kodetemp) = 2 THEN
						 SET kodetemp= CONCAT(kodetemp,'000');
					elseif LENGTH(kodetemp)= 3 THEN
							 SET kodetemp = CONCAT(kodetemp,'00');
					elseif LENGTH(kodetemp)= 4 THEN
							 SET kodetemp = CONCAT(kodetemp,'0');
					elseif LENGTH(kodetemp)= 5 THEN
							 SET kodetemp= CONCAT(kodetemp,'');
					end if;
				End;
				End IF;
				-- Jika Ltahun bernilai N dan LBulan bernilai Y dan Tanggal Bernilai Y
				if (ltahun = 'N') and (lbulan ='Y') and (ltanggal ='Y') and Notemp <> ''THEN
				BEGIN
					Declare month_ INT;
					DECLARE day_ int;
					DECLARE kodetemp varchar(5);  

					set day_=DAY(now());
					set month_ = month(NOW());			
					set kodetemp=(Select kode from INnourut where kode=notemp); 

					if LENGTH(kodetemp) = 2 THEN
						 SET kodetemp= CONCAT(kodetemp,'000');
					elseif LENGTH(kodetemp)= 3 THEN
							 SET kodetemp = CONCAT(kodetemp,'00');
					elseif LENGTH(kodetemp)= 4 THEN
							 SET kodetemp = CONCAT(kodetemp,'0');
					elseif LENGTH(kodetemp)= 5 THEN
							 SET kodetemp= CONCAT(kodetemp,'');
					end if;
				End;
				End IF;
				-- Jika Ltahun bernilai Y dan LBulan bernilai Y dan Tanggal Bernilai Y
				if (ltahun = 'Y') and (lbulan ='Y') and (ltanggal ='Y') and Notemp <> ''THEN
				BEGIN
					Declare month_ INT;
					DECLARE day_ int;
					DECLARE thn int(2);
					DECLARE kodetemp varchar(5);  

					set day_=DAY(now());
					set month_ = month(NOW());
					set tahun=YEAR(now());
					set thn = RIGHT(tahun,2);
					set kodetemp=(Select kode from INnourut where kode=notemp); 

					if LENGTH(kodetemp) = 2 THEN
						 SET kodetemp= CONCAT(kodetemp,'000');
					elseif LENGTH(kodetemp)= 3 THEN
							 SET kodetemp = CONCAT(kodetemp,'00');
					elseif LENGTH(kodetemp)= 4 THEN
							 SET kodetemp = CONCAT(kodetemp,'0');
					elseif LENGTH(kodetemp)= 5 THEN
							 SET kodetemp= CONCAT(kodetemp,'');
					end if;
				End;
				End IF;
				-- Cek Status BrgID = Y atau N di PXSystem, Jika Y maka kode Automatis, Jika N kode Tidak Automatis
        Select BRGID into BRGID_ From pxsystem;
				If BRGID_ = 'Y' THEN
				BEGIN
						Select LengthBRGID_ into Length_ FROM pxsystem;
						IF length_ = 30 THEN Set length_ = length_ - 1; End IF;
						IF length_ = 1 THEN SET NOL_  ='0';
						ELSEIF length_ = 2 THEN SET NOL_  ='00';
						ELSEIF length_ = 3 THEN SET NOL_  ='000';
						ELSEIF length_ = 4 THEN SET NOL_  ='0000';
						ELSEIF length_ = 5 THEN SET NOL_  ='00000';
						ELSEIF length_ = 6 THEN SET NOL_  ='000000';
						ELSEIF length_ = 7 THEN SET NOL_  ='0000000';
						ELSEIF length_ = 8 THEN SET NOL_  ='00000000';
						ELSEIF length_ = 9 THEN SET NOL_  ='000000000';
						ELSEIF length_ = 10 THEN SET NOL_ ='0000000000';
						ELSEIF length_ = 11 THEN SET NOL_ ='00000000000';
						ELSEIF length_ = 12 THEN SET NOL_ ='000000000000';
						ELSEIF length_ = 13 THEN SET NOL_ ='0000000000000';
						ELSEIF length_ = 14 THEN SET NOL_ ='00000000000000';
						ELSEIF length_ = 15 THEN SET NOL_ ='000000000000000';
						ELSEIF length_ = 16 THEN SET NOL_ ='0000000000000000';
						ELSEIF length_ = 17 THEN SET NOL_ ='00000000000000000';
						ELSEIF length_ = 18 THEN SET NOL_ ='000000000000000000';	
						ELSEIF length_ = 19 THEN SET NOL_ ='0000000000000000000';
						ELSEIF length_ = 20 THEN SET NOL_ ='00000000000000000000';
						ELSEIF length_ = 21 THEN SET NOL_ ='000000000000000000000';
						ELSEIF length_ = 22 THEN SET NOL_ ='0000000000000000000000';
						ELSEIF length_ = 23 THEN SET NOL_ ='00000000000000000000000';
						ELSEIF length_ = 24 THEN SET NOL_ ='000000000000000000000000';
						ELSEIF length_ = 25 THEN SET NOL_ ='0000000000000000000000000';
						ELSEIF length_ = 26 THEN SET NOL_ ='00000000000000000000000000';
						ELSEIF length_ = 27 THEN SET NOL_ ='000000000000000000000000000';
						ELSEIF length_ = 18 THEN SET NOL_ ='0000000000000000000000000000';
						ELSEIF length_ = 29 THEN SET NOL_ ='00000000000000000000000000000';
						End IF;
						Set isi=(Select IFNULL(MAX(RIGHT(BrgID, length_)),NOL_) as Nourut
										 from
										 inbarang where LEFT(BRGID,1) = 'B'
										 order by BrGID Desc);				
						if isi = 0 THEN
							set hasil =  1;
						else 
							set hasil = isi + 1;
						end if;
						Set hasil = CONCAT('B',NOL_,hasil);
				End; 
				ELSE
					Set Hasil = '';
				End IF;
		 End;
		End IF;

		IF Table_ = 1 THEN -- Untuk Kode Automatic ID Supplier
		 BEGIN
				DECLARE length_ SMALLINT;
				Declare NOL_ Varchar(30);
				DECLARE SUPID_ Char(1);
				-- Jika Ltahun bernilai Y dan LBulan bernilai Y dan Tanggal Bernilai N
				if (ltahun = 'Y') and (lbulan ='Y') and (ltanggal ='N') and Notemp <> ''THEN
				BEGIN
					DECLARE thn int(2);
					DECLARE kodetemp varchar(5);  

					set tahun=YEAR(now());
					set thn = RIGHT(tahun,2);
					set kodetemp=(Select kode from apnourut where kode=notemp); 

					if LENGTH(kodetemp) = 2 THEN
						 SET kodetemp= CONCAT(kodetemp,'000');
					elseif LENGTH(kodetemp)= 3 THEN
							 SET kodetemp = CONCAT(kodetemp,'00');
					elseif LENGTH(kodetemp)= 4 THEN
							 SET kodetemp = CONCAT(kodetemp,'0');
					elseif LENGTH(kodetemp)= 5 THEN
							 SET kodetemp= CONCAT(kodetemp,'');
					end if;
				End;
				End IF;
				-- Jika Ltahun bernilai N dan LBulan bernilai Y dan Tanggal Bernilai Y
				if (ltahun = 'N') and (lbulan ='Y') and (ltanggal ='Y') and Notemp <> '' THEN
				BEGIN
					Declare month_ INT;
					DECLARE day_ int;
					DECLARE kodetemp varchar(5);  

					set day_=DAY(now());
					set month_ = month(NOW());			
					set kodetemp=(Select kode from apnourut where kode=notemp); 

					if LENGTH(kodetemp) = 2 THEN
						 SET kodetemp= CONCAT(kodetemp,'000');
					elseif LENGTH(kodetemp)= 3 THEN
							 SET kodetemp = CONCAT(kodetemp,'00');
					elseif LENGTH(kodetemp)= 4 THEN
							 SET kodetemp = CONCAT(kodetemp,'0');
					elseif LENGTH(kodetemp)= 5 THEN
							 SET kodetemp= CONCAT(kodetemp,'');
					end if;
				End;
				End IF;
				-- Jika Ltahun bernilai Y dan LBulan bernilai Y dan Tanggal Bernilai Y
				if (ltahun = 'Y') and (lbulan ='Y') and (ltanggal ='Y') and Notemp <> '' THEN
				BEGIN
					Declare month_ INT;
					DECLARE day_ int;
					DECLARE thn int(2);
					DECLARE kodetemp varchar(5);  

					set day_=DAY(now());
					set month_ = month(NOW());
					set tahun=YEAR(now());
					set thn = RIGHT(tahun,2);
					set kodetemp=(Select kode from apnourut where kode=notemp); 

					if LENGTH(kodetemp) = 2 THEN
						 SET kodetemp= CONCAT(kodetemp,'000');
					elseif LENGTH(kodetemp)= 3 THEN
							 SET kodetemp = CONCAT(kodetemp,'00');
					elseif LENGTH(kodetemp)= 4 THEN
							 SET kodetemp = CONCAT(kodetemp,'0');
					elseif LENGTH(kodetemp)= 5 THEN
							 SET kodetemp= CONCAT(kodetemp,'');
					end if;
				End;
				End IF;
				
				-- Cek Status SUPID = Y atau N di PXSystem, Jika Y maka kode Automatis, Jika N kode Tidak Automatis
        Select SUPID into SUPID_ From pxsystem;
				If SUPID_ = 'Y' THEN
				BEGIN
						Select LengthSUPPID_ into Length_ FROM pxsystem;
						IF length_ = 10 THEN Set length_ = length_ - 1; End IF;
						IF length_ = 1 THEN SET NOL_  ='';
						ELSEIF length_ = 2 THEN SET NOL_  ='0';
						ELSEIF length_ = 3 THEN SET NOL_  ='00';
						ELSEIF length_ = 4 THEN SET NOL_  ='000';
						ELSEIF length_ = 5 THEN SET NOL_  ='0000';
						ELSEIF length_ = 6 THEN SET NOL_  ='00000';
						ELSEIF length_ = 7 THEN SET NOL_  ='000000';
						ELSEIF length_ = 8 THEN SET NOL_  ='0000000';
						ELSEIF length_ = 9 THEN SET NOL_  ='00000000';								 
						End IF;
						Set isi=(Select IFNULL(MAX(RIGHT(SUPID, length_)),NOL_) as Nourut
										 from
										 apsupplier where LEFT(SUPID,1) = 'S' order by SUPID DESC);
						if isi = 0 THEN
							set hasil =  1;
						else 
							set hasil = isi + 1;
						end if;
						Set hasil = CONCAT('S',NOL_,hasil);
				END;
				ELSE 
						Set hasil = '';
				END IF;
		 End;
		End IF;

		IF Table_ = 2 THEN -- Untuk Kode Automatic ID Customer
		 BEGIN
				DECLARE length_ SMALLINT;
				Declare NOL_ Varchar(30);
				DECLARE CustID_ Char(1);
				-- Jika Ltahun bernilai Y dan LBulan bernilai Y dan Tanggal Bernilai N
				if (ltahun = 'Y') and (lbulan ='Y') and (ltanggal ='N') and Notemp <> '' THEN
				BEGIN
					DECLARE thn int(2);
					DECLARE kodetemp varchar(5);  

					set tahun=YEAR(now());
					set thn = RIGHT(tahun,2);
					set kodetemp=(Select kode from arnourut where kode=notemp); 

					if LENGTH(kodetemp) = 2 THEN
						 SET kodetemp= CONCAT(kodetemp,'000');
					elseif LENGTH(kodetemp)= 3 THEN
							 SET kodetemp = CONCAT(kodetemp,'00');
					elseif LENGTH(kodetemp)= 4 THEN
							 SET kodetemp = CONCAT(kodetemp,'0');
					elseif LENGTH(kodetemp)= 5 THEN
							 SET kodetemp= CONCAT(kodetemp,'');
					end if;
				End;
				End IF;
				-- Jika Ltahun bernilai N dan LBulan bernilai Y dan Tanggal Bernilai Y
				if (ltahun = 'N') and (lbulan ='Y') and (ltanggal ='Y') and Notemp <> '' THEN
				BEGIN
					Declare month_ INT;
					DECLARE day_ int;
					DECLARE kodetemp varchar(5);  

					set day_=DAY(now());
					set month_ = month(NOW());			
					set kodetemp=(Select kode from arnourut where kode=notemp); 

					if LENGTH(kodetemp) = 2 THEN
						 SET kodetemp= CONCAT(kodetemp,'000');
					elseif LENGTH(kodetemp)= 3 THEN
							 SET kodetemp = CONCAT(kodetemp,'00');
					elseif LENGTH(kodetemp)= 4 THEN
							 SET kodetemp = CONCAT(kodetemp,'0');
					elseif LENGTH(kodetemp)= 5 THEN
							 SET kodetemp= CONCAT(kodetemp,'');
					end if;
				End;
				End IF;
				-- Jika Ltahun bernilai Y dan LBulan bernilai Y dan Tanggal Bernilai Y
				if (ltahun = 'Y') and (lbulan ='Y') and (ltanggal ='Y') and Notemp <> '' THEN
				BEGIN
					Declare month_ INT;
					DECLARE day_ int;
					DECLARE thn int(2);
					DECLARE kodetemp varchar(5);  

					set day_=DAY(now());
					set month_ = month(NOW());
					set tahun=YEAR(now());
					set thn = RIGHT(tahun,2);
					set kodetemp=(Select kode from arnourut where kode=notemp); 

					if LENGTH(kodetemp) = 2 THEN
						 SET kodetemp= CONCAT(kodetemp,'000');
					elseif LENGTH(kodetemp)= 3 THEN
							 SET kodetemp = CONCAT(kodetemp,'00');
					elseif LENGTH(kodetemp)= 4 THEN
							 SET kodetemp = CONCAT(kodetemp,'0');
					elseif LENGTH(kodetemp)= 5 THEN
							 SET kodetemp= CONCAT(kodetemp,'');
					end if;
				End;
				End IF;
				-- Cek Status SUPID = Y atau N di PXSystem, Jika Y maka kode Automatis, Jika N kode Tidak Automatis
        Select CustID into CustID_ From pxsystem;
				If CustID_ = 'Y' THEN
				BEGIN
						Select LengthCustID_ into Length_ FROM pxsystem;
						IF length_ = 10 THEN Set length_ = length_ - 1; End IF;		
						IF length_ = 1 THEN SET NOL_  ='0';
						ELSEIF length_ = 2 THEN SET NOL_  ='00';
						ELSEIF length_ = 3 THEN SET NOL_  ='000';
						ELSEIF length_ = 4 THEN SET NOL_  ='0000';
						ELSEIF length_ = 5 THEN SET NOL_  ='00000';
						ELSEIF length_ = 6 THEN SET NOL_  ='000000';
						ELSEIF length_ = 7 THEN SET NOL_  ='0000000';
						ELSEIF length_ = 8 THEN SET NOL_  ='00000000';
						ELSEIF length_ = 9 THEN SET NOL_  ='000000000';								 
						End IF;
						Set isi=(Select IFNull(MAX(CustID),'0') as Nourut
										 from
										 arcustomer where CustID = 'C' order by CustID Desc);
						if isi = 0 THEN
							set hasil =  1;
						else 
							set hasil = isi + 1;
						end if;
						Set hasil = CONCAT('C',NOL_,hasil);
				End;
				ELSE
						Set hasil = '';
				End IF;
		 End;
		END IF;
		Select hasil;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_mutasihutang`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_mutasihutang`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mutasihutang`(in tgl_ date, in supID_ varchar(10), in cabID_ VARCHAR(5), In valID_ varchar(5), IN Saldo_ DECIMAL(28,8), IN Trans_ SmallInt, IN OldSaldo_ Decimal(28,8))
BEGIN
	#Routine body goes here...	
	Declare blntemp_ integer;
	Declare thntemp_ integer;
	Declare Awaltemp_ DECIMAL(28,8);   
	# New Saldo Debet
	Declare NewD1temp decimal(28,8);
	Declare NewD2temp decimal(28,8);
	Declare NewD3temp decimal(28,8);
	Declare NewD4temp decimal(28,8);
	Declare NewD5temp decimal(28,8);
	Declare NewD6temp decimal(28,8);
	Declare NewD7temp decimal(28,8);
	Declare NewD8temp decimal(28,8);
	Declare NewD9temp decimal(28,8);
	Declare NewD10temp decimal(28,8);
	Declare NewD11temp decimal(28,8);
	Declare NewD12temp decimal(28,8);
	# Old Saldo Debet
	Declare OldD1temp decimal(28,8);
	Declare OldD2temp decimal(28,8);
	Declare OldD3temp decimal(28,8);
	Declare OldD4temp decimal(28,8);
	Declare OldD5temp decimal(28,8);
	Declare OldD6temp decimal(28,8);
	Declare OldD7temp decimal(28,8);
	Declare OldD8temp decimal(28,8);
	Declare OldD9temp decimal(28,8);
	Declare OldD10temp decimal(28,8);
	Declare OldD11temp decimal(28,8);
	Declare OldD12temp decimal(28,8);
	# New Saldo Kredit
	Declare NewK1temp decimal(28,8);
	Declare NewK2temp decimal(28,8);
	Declare NewK3temp decimal(28,8);
	Declare NewK4temp decimal(28,8);
	Declare NewK5temp decimal(28,8);
	Declare NewK6temp decimal(28,8);
	Declare NewK7temp decimal(28,8);
	Declare NewK8temp decimal(28,8);
	Declare NewK9temp decimal(28,8);
	Declare NewK10temp decimal(28,8);
	Declare NewK11temp decimal(28,8);
	Declare NewK12temp decimal(28,8);
	# Old Saldo Kredit
	Declare OldK1temp decimal(28,8);
	Declare OldK2temp decimal(28,8);
	Declare OldK3temp decimal(28,8);
	Declare OldK4temp decimal(28,8);
	Declare OldK5temp decimal(28,8);
	Declare OldK6temp decimal(28,8);
	Declare OldK7temp decimal(28,8);
	Declare OldK8temp decimal(28,8);
	Declare OldK9temp decimal(28,8);
	Declare OldK10temp decimal(28,8);
	Declare OldK11temp decimal(28,8);
	Declare OldK12temp decimal(28,8); 
 
  #####
	Declare cekmutasi SMALLINT;
  DEclare cekmutasiAwal SMALLINT;
	Declare NAkhir_ DECIMAL(28,8);
  #####
	
  Select MONTH(Tgl_) into blntemp_;
	Select YEAR(Tgl_) into thntemp_;
  Select IFNULL(1,'0') into cekmutasi from apmutasihutang where SupID IN (Select SupID From apmutasihutang where SupID=SupID_ and CabID=CabID_ and thn = thntemp_ and valID = valID_ ) Limit 1;
  if ISNULL(cekmutasi) then set cekmutasi = 0; End If;			   
  Select IFNULL(1,'0') into cekmutasiAwal from apmutasihutang where SupID IN (Select SupID From apmutasihutang where SupID=SupID_ and CabID=CabID_ and thn < thntemp_ and valID = valID_ ORDER BY Thn DESC) LIMIT 1 ;			 
	if ISNULL(cekmutasiAwal) then set cekmutasiAwal = 0; End If;

	if cekmutasiAwal    = 0 THEN
			Set Awaltemp_   = 0;			
	else 
			set Awaltemp_   =(Select IFNULL(NAkhir,'0') from apmutasihutang where SupID=SupID_ and CabID=CabID_ and thn<thntemp_ and valID = valID_ order by thn desc);			 			
	end if;

	if cekmutasi = 0 then
			insert into apmutasihutang(SupID, cabid, thn, Awal, UMuka, Giro, NAkhir, ValID) values (SupID_, cabid_, thntemp_, AwalTemp_, 0, 0, 0, ValID_); 
	End If;
  -- trans_ = 0 ( Stock StockAwalHutang ) dan Trans_ = 1 ( Pembelian )	
	Case trans_ 
			 WHEN 0 THEN
          # Karena Transaksi yang terbentuk dari Saldo Awal Hutang maka
					# Nilai saldo masuk ke kolum Kredit
					Case blntemp_
							 WHEN 1 THEN 
										set NewK1temp = Saldo_;
										Select ifnull(K1,0) into oldK1temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldK1temp) Then set oldK1temp = 0; ENd IF;
										Select ifnull(D1,0) into oldD1temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldD1temp) Then set oldD1temp = 0; ENd IF;
										Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
										set NewK1temp =  (oldK1temp - oldSaldo_) + NewK1temp;
										Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
									  -- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
										UPDATE apmutasihutang set awal = Awaltemp_, k1 = NewK1temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																					
							 WHEN 2 THEN 
										set NewK2temp = Saldo_;
										Select ifnull(K2,0) into oldK2temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldK1temp) Then set oldK2temp = 0; ENd IF;
										Select ifnull(D2,0) into oldD2temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldD1temp) Then set oldD2temp = 0; ENd IF;
										Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
										set NewK2temp =  (oldK2temp - oldSaldo_) + NewK2temp;
										Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
									  -- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
										UPDATE apmutasihutang set awal = Awaltemp_, k2 = NewK2temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
							 WHEN 3 THEN 
										set NewK3temp = Saldo_;
										Select ifnull(K3,0) into oldK3temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldK3temp) Then set oldK3temp = 0; ENd IF;
										Select ifnull(D3,0) into oldD3temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldD3temp) Then set oldD3temp = 0; ENd IF;
										Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
										set NewK3temp =  (oldK3temp - oldSaldo_) + NewK3temp;
										Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
									  -- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
										UPDATE apmutasihutang set awal = Awaltemp_, k3 = NewK3temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
							 WHEN 4 THEN 
										set NewK4temp = Saldo_;
										Select ifnull(K4,0) into oldK4temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldK4temp) Then set oldK4temp = 0; ENd IF;
										Select ifnull(D4,0) into oldD4temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldD4temp) Then set oldD4temp = 0; ENd IF;
										Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
										set NewK4temp =  (oldK4temp - oldSaldo_) + NewK4temp;
										Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
									  -- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
										UPDATE apmutasihutang set awal = Awaltemp_, k4 = NewK4temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																											 
								WHEN 5 THEN 
										set NewK5temp = Saldo_;
										Select ifnull(K5,0) into oldK5temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldK5temp) Then set oldK5temp = 0; ENd IF;
										Select ifnull(D5,0) into oldD5temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldD5temp) Then set oldD5temp = 0; ENd IF;
										Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
										set NewK5temp =  (oldK5temp - oldSaldo_) + NewK5temp;
										Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
									  -- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
										UPDATE apmutasihutang set awal = Awaltemp_, k5 = NewK5temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
								WHEN 6 THEN 
										set NewK6temp = Saldo_;
										Select ifnull(K6,0) into oldK6temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldK6temp) Then set oldK6temp = 0; ENd IF;
										Select ifnull(D6,0) into oldD6temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldD6temp) Then set oldD6temp = 0; ENd IF;
										Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
										set NewK6temp =  (oldK6temp - oldSaldo_) + NewK6temp;
										Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
									  -- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
										UPDATE apmutasihutang set awal = Awaltemp_, k6 = NewK6temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
							  WHEN 7 THEN 
										set NewK7temp = Saldo_;
										Select ifnull(K7,0) into oldK7temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldK7temp) Then set oldK7temp = 0; ENd IF;
										Select ifnull(D7,0) into oldD7temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldD7temp) Then set oldD7temp = 0; ENd IF;
										Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
										set NewK7temp =  (oldK7temp - oldSaldo_) + NewK7temp;
										Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
									  -- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
										UPDATE apmutasihutang set awal = Awaltemp_, k7 = NewK7temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
								WHEN 8 THEN 
										set NewK8temp = Saldo_;
										Select ifnull(K8,0) into oldK8temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldK8temp) Then set oldK8temp = 0; ENd IF;
										Select ifnull(D8,0) into oldD8temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldD8temp) Then set oldD8temp = 0; ENd IF;
										Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
										set NewK2temp =  (oldK8temp - oldSaldo_) + NewK8temp;
										Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
									  -- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
										UPDATE apmutasihutang set awal = Awaltemp_, k8 = NewK8temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
								WHEN 9 THEN 
										set NewK9temp = Saldo_;
										Select ifnull(K9,0) into oldK9temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldK9temp) Then set oldK9temp = 0; ENd IF;
										Select ifnull(D9,0) into oldD9temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldD9temp) Then set oldD9temp = 0; ENd IF;
										Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
										set NewK9temp =  (oldK9temp - oldSaldo_) + NewK9temp;
										Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
									  -- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
										UPDATE apmutasihutang set awal = Awaltemp_, k9 = NewK9temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
								WHEN 10 THEN 
										set NewK10temp = Saldo_;
										Select ifnull(K10,0) into oldK10temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldK10temp) Then set oldK10temp = 0; ENd IF;
										Select ifnull(D10,0) into oldD10temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldD10temp) Then set oldD10temp = 0; ENd IF;
										Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
										set NewK10temp =  (oldK10temp - oldSaldo_) + NewK10temp;
										Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
									  -- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
										UPDATE apmutasihutang set awal = Awaltemp_, k10 = NewK10temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
								WHEN 11 THEN 
										set NewK11temp = Saldo_;
										Select ifnull(K11,0) into oldK11temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldK11temp) Then set oldK11temp = 0; ENd IF;
										Select ifnull(D11,0) into oldD11temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldD11temp) Then set oldD11temp = 0; ENd IF;
										Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
										set NewK11temp =  (oldK11temp - oldSaldo_) + NewK11temp;
										Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
									  -- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
										UPDATE apmutasihutang set awal = Awaltemp_, k11 = NewK11temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
								WHEN 12 THEN 
										set NewK12temp = Saldo_;
										Select ifnull(K12,0) into oldK12temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldK12temp) Then set oldK12temp = 0; ENd IF;
										Select ifnull(D12,0) into oldD12temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(oldD12temp) Then set oldD12temp = 0; ENd IF;
										Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
										IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
										set NewK12temp =  (oldK12temp - oldSaldo_) + NewK12temp;
										Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
									  -- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
										UPDATE apmutasihutang set awal = Awaltemp_, k12 = NewK12temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
					End CASE;
			 WHEN 1 THEN
				  Case blntemp_
								 WHEN 1 THEN 
											set NewK1temp = Saldo_;
											Select ifnull(K1,0) into oldK1temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldK1temp) Then set oldK1temp = 0; ENd IF;
											Select ifnull(D1,0) into oldD1temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldD1temp) Then set oldD1temp = 0; ENd IF;
											Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
											set NewK1temp =  (oldK1temp - oldSaldo_) + NewK1temp;
											Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
											-- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
											UPDATE apmutasihutang set awal = Awaltemp_, k1 = NewK1temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																					
								 WHEN 2 THEN 
											set NewK2temp = Saldo_;
											Select ifnull(K2,0) into oldK2temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldK1temp) Then set oldK2temp = 0; ENd IF;
											Select ifnull(D2,0) into oldD2temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldD1temp) Then set oldD2temp = 0; ENd IF;
											Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
											set NewK2temp =  (oldK2temp - oldSaldo_) + NewK2temp;
											Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
											-- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
											UPDATE apmutasihutang set awal = Awaltemp_, k2 = NewK2temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
								 WHEN 3 THEN 
											set NewK3temp = Saldo_;
											Select ifnull(K3,0) into oldK3temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldK3temp) Then set oldK3temp = 0; ENd IF;
											Select ifnull(D3,0) into oldD3temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldD3temp) Then set oldD3temp = 0; ENd IF;
											Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
											set NewK3temp =  (oldK3temp - oldSaldo_) + NewK3temp;
											Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
											-- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
											UPDATE apmutasihutang set awal = Awaltemp_, k3 = NewK3temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
								 WHEN 4 THEN 
											set NewK4temp = Saldo_;
											Select ifnull(K4,0) into oldK4temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldK4temp) Then set oldK4temp = 0; ENd IF;
											Select ifnull(D4,0) into oldD4temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldD4temp) Then set oldD4temp = 0; ENd IF;
											Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
											set NewK4temp =  (oldK4temp - oldSaldo_) + NewK4temp;
											Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
											-- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
											UPDATE apmutasihutang set awal = Awaltemp_, k4 = NewK4temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																											 
									WHEN 5 THEN 
											set NewK5temp = Saldo_;
											Select ifnull(K5,0) into oldK5temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldK5temp) Then set oldK5temp = 0; ENd IF;
											Select ifnull(D5,0) into oldD5temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldD5temp) Then set oldD5temp = 0; ENd IF;
											Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
											set NewK5temp =  (oldK5temp - oldSaldo_) + NewK5temp;
											Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
											-- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
											UPDATE apmutasihutang set awal = Awaltemp_, k5 = NewK5temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
									WHEN 6 THEN 
											set NewK6temp = Saldo_;
											Select ifnull(K6,0) into oldK6temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldK6temp) Then set oldK6temp = 0; ENd IF;
											Select ifnull(D6,0) into oldD6temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldD6temp) Then set oldD6temp = 0; ENd IF;
											Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
											set NewK6temp =  (oldK6temp - oldSaldo_) + NewK6temp;
											Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
											-- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
											UPDATE apmutasihutang set awal = Awaltemp_, k6 = NewK6temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
									WHEN 7 THEN 
											set NewK7temp = Saldo_;
											Select ifnull(K7,0) into oldK7temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldK7temp) Then set oldK7temp = 0; ENd IF;
											Select ifnull(D7,0) into oldD7temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldD7temp) Then set oldD7temp = 0; ENd IF;
											Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
											set NewK7temp =  (oldK7temp - oldSaldo_) + NewK7temp;
											Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
											-- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
											UPDATE apmutasihutang set awal = Awaltemp_, k7 = NewK7temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
									WHEN 8 THEN 
											set NewK8temp = Saldo_;
											Select ifnull(K8,0) into oldK8temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldK8temp) Then set oldK8temp = 0; ENd IF;
											Select ifnull(D8,0) into oldD8temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldD8temp) Then set oldD8temp = 0; ENd IF;
											Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
											set NewK2temp =  (oldK8temp - oldSaldo_) + NewK8temp;
											Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
											-- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
											UPDATE apmutasihutang set awal = Awaltemp_, k8 = NewK8temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
									WHEN 9 THEN 
											set NewK9temp = Saldo_;
											Select ifnull(K9,0) into oldK9temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldK9temp) Then set oldK9temp = 0; ENd IF;
											Select ifnull(D9,0) into oldD9temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldD9temp) Then set oldD9temp = 0; ENd IF;
											Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
											set NewK9temp =  (oldK9temp - oldSaldo_) + NewK9temp;
											Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
											-- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
											UPDATE apmutasihutang set awal = Awaltemp_, k9 = NewK9temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
									WHEN 10 THEN 
											set NewK10temp = Saldo_;
											Select ifnull(K10,0) into oldK10temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldK10temp) Then set oldK10temp = 0; ENd IF;
											Select ifnull(D10,0) into oldD10temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldD10temp) Then set oldD10temp = 0; ENd IF;
											Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
											set NewK10temp =  (oldK10temp - oldSaldo_) + NewK10temp;
											Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
											-- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
											UPDATE apmutasihutang set awal = Awaltemp_, k10 = NewK10temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
									WHEN 11 THEN 
											set NewK11temp = Saldo_;
											Select ifnull(K11,0) into oldK11temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldK11temp) Then set oldK11temp = 0; ENd IF;
											Select ifnull(D11,0) into oldD11temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldD11temp) Then set oldD11temp = 0; ENd IF;
											Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
											set NewK11temp =  (oldK11temp - oldSaldo_) + NewK11temp;
											Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
											-- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
											UPDATE apmutasihutang set awal = Awaltemp_, k11 = NewK11temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
									WHEN 12 THEN 
											set NewK12temp = Saldo_;
											Select ifnull(K12,0) into oldK12temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldK12temp) Then set oldK12temp = 0; ENd IF;
											Select ifnull(D12,0) into oldD12temp From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(oldD12temp) Then set oldD12temp = 0; ENd IF;
											Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0')  into NAkhir_ From apmutasihutang Where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ and valID = valID_;																				
											IF ISNULL(NAkhir_) Then set NAkhir_ = 0; ENd IF;										
											set NewK12temp =  (oldK12temp - oldSaldo_) + NewK12temp;
											Set Nakhir_ = (NAkhir_ + oldSaldo_) - saldo_;
											-- SIGNAL SQLSTATE '45000' set message_text = NewK1temp;										
											UPDATE apmutasihutang set awal = Awaltemp_, k12 = NewK12temp, NAkhir = NAkhir_ where SupID=supID_ and CabID=CabID_ and Thn=thntemp_ and ValID = ValID_;																				
						End CASE;	
	End Case;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_mutasistock`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_mutasistock`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_mutasistock`(In brgid_ varchar(30), in gdgid_ varchar(10), in cabid_ varchar(10), in tgl_ datetime, in hpokok_ decimal(28,8), in trans_ SMALLINT, in hpokokold_ DECIMAL(28,8), in Qty_ decimal(18,8), in qtyold_ decimal(18,8))
begin       
    
     -- karena ini stok awal maka yang diisi QM dan NM
     -- hitung nilai qakhir rms (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12))
     -- hitung nilai nakhir rms (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12))
    
     -- Declarasi Variabel Kuantity Masuk dan Nilai kuantiti
     Declare QM1Temp decimal(18,4);             Declare QM4Temp decimal(18,4);             Declare QM7Temp decimal(18,4);             Declare QM10Temp decimal(18,4);
     Declare QM2Temp decimal(18,4);             Declare QM5Temp decimal(18,4);             Declare QM8Temp decimal(18,4);             Declare QM11Temp decimal(18,4);
     Declare QM3Temp decimal(18,4);             Declare QM6Temp decimal(18,4);             Declare QM9Temp decimal(18,4);             Declare QM12Temp decimal(18,4);
    
     Declare NM1temp decimal(28,8);              Declare NM4temp decimal(28,8);              Declare NM7temp decimal(28,8);              Declare NM10temp decimal(28,8);
     Declare NM2temp decimal(28,8);              Declare NM5temp decimal(28,8);              Declare NM8temp decimal(28,8);              Declare NM11temp decimal(28,8);
     Declare NM3temp decimal(28,8);              Declare NM6temp decimal(28,8);              Declare NM9temp decimal(28,8);              Declare NM12temp decimal(28,8);
    
     declare totQAkhirtemp decimal(28,8);  
     declare totNAkhirtemp decimal(28,8);
     declare QAkhirtemp decimal(28,8);
     declare Nakhirtemp decimal(28,8);
	   Declare QAwaltemp DECIMAL(28,8); 
	   Declare NAwaltemp DECIMAL(28,8);
	   DECLARE cekmutasiQawal SMALLINT;	
     DECLARE cekmutasi SMALLINT;
		 Declare thntemp_ SMALLINT;
		 declare totQAkhirtempold decimal(28,8);  
		 declare totNAkhirtempold decimal(28,8);
		 declare QAkhirtempold decimal(28,8);
		 declare Nakhirtempold decimal(28,8);
		 Declare oldbanget decimal(28,8);
		 DECLARE tukarsys DECIMAL(28,8);
		 Declare blntemp integer;
		 Declare valid_ VARCHAR(10);

     Select YEAR(tgl_) into thntemp_; -- ambil tahun dari tgl transaksi
     select MONTH(tgl_) into blntemp;     
		 select ValID into valiD_ from pxsystem;
		 Set tukarsys=(select tukar from PXValutaTukar where valID=valid_ and Tglu <= tgl_ order by TukarID desc); -- ambil nilai tukar dari table pxvalutatukar

     Select IFNULL(1,'0') into cekmutasi from inbarangmutasi where brgid IN (Select BrgID From inbarangMutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
     if ISNULL(cekmutasi) then set cekmutasi = 0; End If;			 
     
     Select IFNULL(1,'0') into cekmutasiQawal from inbarangmutasi where brgid IN (Select BrgID From inbarangMutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);			 
		 if ISNULL(cekmutasiQawal) then set cekmutasiQawal = 0; End If;

     if cekmutasiQawal  = 0 THEN
        Set Qawaltemp   = 0;
    	  Set Nawaltemp   = 0;
     else 
        set QAwaltemp   =(Select IFNULL((Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)),'0') from INBarangMutasi where brgid=BrgID_ and gdgid=gdgID_ and thn<=thntemp_ and cabid =cabID_ order by thn desc);			 
    	  set NAwaltemp   =(Select IFNULL((NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)),'0') from INBarangMutasi where brgid=BrgID_ and gdgid=gdgID_ and thn<=thntemp_ and cabid =cabID_ order by thn desc);				 
     end if;

     if cekmutasi = 0 then
        insert into inbarangmutasi(gdgid, brgid, cabid, thn, Qawal, Nawal) values (gdgid_, brgId_, cabid_, thntemp_, QAwalTemp, NAwaltemp); 
     End If; 

     -- trans_ = 0 ( Stock Opname ) dan Trans_ = 1 ( Pembelian )
		 -- signal sqlstate '45000' set message_text = trans_;
		 if trans_ in (0,1) THEN 
				 if blntemp=1 then                       

										-- error update data nya belum jadi
										set totQakhirtempold =(Select QM1 from  inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totnakhirtempold = ( select NM1 from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set oldbanget = qtyold_;  
										set totQAkhirtemp=(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totNAkhirtemp=(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
										set QM1temp        = (totQakhirtempold - oldbanget) + qty_;
										-- signal sqlstate '45000' set message_text = qtyold_;
										set NM1temp         = (totnakhirtempold - (oldbanget * hpokokold_ * tukarsys)) + (QM1temp * hpokok_ * tukarsys);
										Set QAkhirtemp     = QM1temp +( totQakhirtemp - oldbanget);
										set Nakhirtemp      = Nm1temp + (totnakhirtemp - (oldbanget * hpokokold_ * tukarsys));
										UPDATE inbarangmutasi set  QM1=qm1temp,NM1=nm1temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
											
				 elseif blntemp=2 then                       

										-- error update data nya belum jadi
										set totQakhirtempold =(Select QM2 from  inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totnakhirtempold = ( select NM2 from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set oldbanget = qtyold_;  
										set totQAkhirtemp=(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totNAkhirtemp=(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
										set QM2temp        = (totQakhirtempold - oldbanget) + qty_;
										-- signal sqlstate '45000' set message_text = qtyold_;
										set NM2temp         = (totnakhirtempold - (oldbanget * hpokokold_ * tukarsys)) + (QM2temp * hpokok_ * tukarsys);
										Set QAkhirtemp     = QM21temp +( totQakhirtemp - oldbanget);
										set Nakhirtemp      = Nm2temp + (totnakhirtemp - (oldbanget * hpokokold_ * tukarsys));
										UPDATE inbarangmutasi set  QM2=qm2temp,NM2=nm2temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 
				 elseif blntemp=3 then                       

										-- error update data nya belum jadi
										set totQakhirtempold =(Select QM3 from  inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totnakhirtempold = ( select NM3 from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set oldbanget = qtyold_;  
										set totQAkhirtemp=(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totNAkhirtemp=(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
										set QM3temp        = (totQakhirtempold - oldbanget) + qty_;
										-- signal sqlstate '45000' set message_text = qtyold_;
										set NM3temp         = (totnakhirtempold - (oldbanget * hpokokold_ * tukarsys)) + (QM3temp * hpokok_ * tukarsys);
										Set QAkhirtemp     = QM3temp +( totQakhirtemp - oldbanget);
										set Nakhirtemp      = Nm3temp + (totnakhirtemp - (oldbanget * hpokokold_ * tukarsys));
										UPDATE inbarangmutasi set  QM3=qm3temp,NM3=nm3temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 
				 elseif blntemp=4 then                       

										-- error update data nya belum jadi
										set totQakhirtempold =(Select QM4 from  inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totnakhirtempold = ( select NM4 from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set oldbanget = qtyold_;  
										set totQAkhirtemp=(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totNAkhirtemp=(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
										set QM4temp        = (totQakhirtempold - oldbanget) + qty_;
										-- signal sqlstate '45000' set message_text = qtyold_;
										set NM4temp         = (totnakhirtempold - (oldbanget * hpokokold_ * tukarsys)) + (QM4temp * hpokok_ * tukarsys);
										Set QAkhirtemp     = QM4temp +( totQakhirtemp - oldbanget);
										set Nakhirtemp      = Nm4temp + (totnakhirtemp - (oldbanget * hpokokold_ * tukarsys));
										UPDATE inbarangmutasi set  QM4=qm4temp,NM4=nm4temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 
				 elseif blntemp=5 then                       

										-- error update data nya belum jadi
										set totQakhirtempold =(Select QM5 from  inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totnakhirtempold = ( select NM5 from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set oldbanget = qtyold_;  
										set totQAkhirtemp=(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totNAkhirtemp=(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
										set QM5temp        = (totQakhirtempold - oldbanget) +qty_;
										-- signal sqlstate '45000' set message_text = qtyold_;
										set NM5temp         = (totnakhirtempold - (oldbanget * hpokokold_ * tukarsys)) + (QM5temp * hpokok_ * tukarsys);
										Set QAkhirtemp     = QM5temp +( totQakhirtemp - oldbanget);
										set Nakhirtemp      = Nm5temp + (totnakhirtemp - (oldbanget * hpokokold_ * tukarsys));
										UPDATE inbarangmutasi set  QM5=qm5temp,NM5=nm5temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 
				 elseif blntemp=6 then                       

										-- error update data nya belum jadi
										set totQakhirtempold =(Select QM6 from  inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);										
										set totnakhirtempold = ( select NM6 from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);										
										set oldbanget = qtyold_;  
										set totQAkhirtemp=(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totNAkhirtemp=(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        										
										set QM6temp        = (totQakhirtempold - oldbanget) + qty_;										
										set NM6temp         = (totnakhirtempold - (oldbanget * hpokokold_ * tukarsys)) + (QM6temp * hpokok_ * tukarsys);										
										Set QAkhirtemp     = QM6temp +( totQakhirtemp - oldbanget);
										set Nakhirtemp      = Nm6temp + (totnakhirtemp - (oldbanget * hpokokold_ * tukarsys));
										-- signal sqlstate '45000' set message_text = Nakhirtemp;
										UPDATE inbarangmutasi set  QM6=qm6temp,NM6=nm6temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 
				 elseif blntemp=7 then                       

										-- error update data nya belum jadi
										set totQakhirtempold =(Select QM7 from  inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totnakhirtempold = ( select NM7 from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set oldbanget = qtyold_;  
										set totQAkhirtemp=(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totNAkhirtemp=(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
										if totQakhirtempold = 0 then
										set QM7temp        = qty_;
										set NM7temp         = QM7temp * hpokokold_ * tukarsys;
										Set QAkhirtemp     = QM7temp;
										set Nakhirtemp      = Nm7temp;                        
										else
										set QM7temp        = (totQakhirtempold - oldbanget) + qty_;
										set NM7temp         = (totnakhirtempold - (oldbanget * hpokokold_ * tukarsys)) + (QM7temp * hpokok_ * tukarsys);
										Set QAkhirtemp     = QM7temp +( totQakhirtemp - oldbanget);
										set Nakhirtemp      = Nm7temp + (totnakhirtemp - (oldbanget * hpokokold_ * tukarsys));
										end if;
										-- signal sqlstate '45000' set message_text = qtyold_;                      
										UPDATE inbarangmutasi set  QM7=qm7temp,NM7=nm7temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 
				 elseif blntemp=8 then                       

										-- error update data nya belum jadi
										set totQakhirtempold =(Select QM8 from  inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totnakhirtempold = ( select NM8 from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set oldbanget = qtyold_;  
										set totQAkhirtemp=(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totNAkhirtemp=(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
										if totQakhirtempold = 0 then
										set QM8temp         = qty_;
										set NM8temp         = QM8temp * hpokokold_ * tukarsys;
										Set QAkhirtemp     = QM8temp;
										set Nakhirtemp      = Nm8temp;                        
										else
										set QM8temp        = (totQakhirtempold - oldbanget) + qty_;
										set NM8temp         = (totnakhirtempold - (oldbanget * hpokokold_ * tukarsys)) + (QM8temp * hpokok_ * tukarsys);
										Set QAkhirtemp     = QM8temp +( totQakhirtemp - oldbanget);
										set Nakhirtemp      = Nm8temp + (totnakhirtemp - (oldbanget * hpokokold_ * tukarsys));
										end if;
										
										-- signal sqlstate '45000' set message_text =oldbanget;
										UPDATE inbarangmutasi set  QM8=qm8temp,NM8=nm8temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 
					elseif blntemp=9 then                       

										-- error update data nya belum jadi
										set totQakhirtempold =(Select QM9 from  inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totnakhirtempold = ( select NM9 from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set oldbanget = qtyold_;  
										set totQAkhirtemp=(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totNAkhirtemp=(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
										set QM9temp        = (totQakhirtempold - oldbanget) + qty_;
										-- signal sqlstate '45000' set message_text = qtyold_;
										set NM9temp         = (totnakhirtempold - (oldbanget * hpokokold_ * tukarsys)) + (QM9temp * hpokok_ * tukarsys);
										Set QAkhirtemp     = QM9temp +( totQakhirtemp - oldbanget);
										set Nakhirtemp      = Nm9temp + (totnakhirtemp - (oldbanget * hpokokold_ * tukarsys));
										UPDATE inbarangmutasi set  QM9=qm9temp,NM9=nm9temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 
					elseif blntemp=10 then                       

										-- error update data nya belum jadi
										set totQakhirtempold =(Select QM10 from  inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totnakhirtempold = ( select NM10 from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set oldbanget = qtyold_;  
										set totQAkhirtemp=(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totNAkhirtemp=(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
										set QM10temp        = (totQakhirtempold - oldbanget) + qty_;
										-- signal sqlstate '45000' set message_text = qtyold_;
										set NM10temp         = (totnakhirtempold - (oldbanget * hpokokold_ * tukarsys)) + (QM10temp * hpokok_ * tukarsys);
										Set QAkhirtemp     = QM10temp +( totQakhirtemp - oldbanget);
										set Nakhirtemp      = Nm10temp + (totnakhirtemp - (oldbanget * hpokokold_ * tukarsys));
										UPDATE inbarangmutasi set  QM10=qm10temp,NM10=nm10temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 
					elseif blntemp=11 then                       

										-- error update data nya belum jadi
										set totQakhirtempold =(Select QM11 from  inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totnakhirtempold = ( select NM11 from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set oldbanget = qtyold_;  
										set totQAkhirtemp=(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totNAkhirtemp=(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
										set QM11temp        = (totQakhirtempold - oldbanget) +qty_;
										-- signal sqlstate '45000' set message_text = qtyold_;
										set NM11temp         = (totnakhirtempold - (oldbanget * hpokokold_ * tukarsys)) + (QM11temp * hpokok_ * tukarsys);
										Set QAkhirtemp     = QM11temp +( totQakhirtemp - oldbanget);
										set Nakhirtemp      = Nm11temp + (totnakhirtemp - (oldbanget * hpokokold_ * tukarsys));
										UPDATE inbarangmutasi set  QM11=qm11temp,NM11=nm11temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 
					elseif blntemp=12 then                       

										-- error update data nya belum jadi
										set totQakhirtempold =(Select QM12 from  inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totnakhirtempold = ( select NM12 from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set oldbanget = qtyold_;  
										set totQAkhirtemp=(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
										set totNAkhirtemp=(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
										set QM12temp        = (totQakhirtempold - oldbanget) +  qty_;
										-- signal sqlstate '45000' set message_text = qtyold_;
										set NM12temp         = (totnakhirtempold - (oldbanget * hpokokold_ * tukarsys)) + (QM12temp * hpokok_ * tukarsys);
										Set QAkhirtemp     = QM12temp +( totQakhirtemp - oldbanget);
										set Nakhirtemp      = Nm12temp + (totnakhirtemp - (oldbanget * hpokokold_ * tukarsys));
										UPDATE inbarangmutasi set  QM12=qm12temp,NM12=nm12temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 
				 end if; 
		ELSE
				 if blntemp=1 then
						set totQAkhirtemp   =(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
						set totNAkhirtemp   =(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
						set QM1temp         = qty_;
						set NM1temp         = QM1temp * hpokok_ * tukarsys;
						Set QAkhirtemp      = QM1temp + totQakhirtemp;
						set Nakhirtemp      = Nm1temp + totnakhirtemp;
						UPDATE inbarangmutasi set  QM1=qm1temp,NM1=nm1temp, Qakhir=qakhirtemp, nakhir=nakhirtemp where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 end if;
				 if blntemp=2 then
						set totQAkhirtemp   =(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
						set totNAkhirtemp   =(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
						set QM2temp         = qty_;
						set NM2temp         = QM2temp * hpokok_ * tukarsys;
						Set QAkhirtemp      = QM2temp + totQakhirtemp;
						set Nakhirtemp      = Nm2temp + totnakhirtemp;
						UPDATE inbarangmutasi set  QM2=qm2temp,NM2=nm2temp, Qakhir=qakhirtemp, nakhir=nakhirtemp where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 end if; 
				 if blntemp=3 then
						set totQAkhirtemp   =(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
						set totNAkhirtemp   =(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
						set QM3temp         = qty_;
						set NM3temp         = QM3temp * hpokok_ * tukarsys;
						Set QAkhirtemp      = QM3temp + totQakhirtemp;
						set Nakhirtemp      = Nm3temp + totnakhirtemp;
						UPDATE inbarangmutasi set  QM3=qm3temp,NM3=nm3temp, Qakhir=qakhirtemp, nakhir=nakhirtemp where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 end if;
				 if blntemp=4 then
						set totQAkhirtemp   =(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
						set totNAkhirtemp   =(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
						set QM4temp         = qty_;
						set NM4temp         = QM4temp * hpokok_ * tukarsys;
						Set QAkhirtemp      = QM4temp + totQakhirtemp;
						set Nakhirtemp      = Nm4temp + totnakhirtemp;
						UPDATE inbarangmutasi set  QM4=qm4temp,NM4=nm4temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 end if; 
				 if blntemp=5 then
						set totQAkhirtemp   =(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
						set totNAkhirtemp   =(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
						set QM5temp         = qty_;
						set NM5temp         = QM5temp * hpokok_ * tukarsys;
						Set QAkhirtemp      = QM5temp + totQakhirtemp;
						set Nakhirtemp      = Nm5temp + totnakhirtemp;
						UPDATE inbarangmutasi set  QM5=qm5temp,NM5=nm5temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 end if;
				 if blntemp=6 then
						set totQAkhirtemp   =(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
						set totNAkhirtemp   =(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
						set QM6temp         = qty_;
						set NM6temp         = QM6temp * hpokok_ * tukarsys;
						Set QAkhirtemp      = QM6temp + totQakhirtemp;
						set Nakhirtemp      = Nm6temp + totnakhirtemp;
						UPDATE inbarangmutasi set  QM6=qm6temp,NM6=nm6temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 end if;
				 if blntemp=7 then
						set totQAkhirtemp   =(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
						set totNAkhirtemp   =(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
						set QM7temp         = qty_;
						set NM7temp         = QM7temp * hpokok_ * tukarsys;
						Set QAkhirtemp      = QM7temp + totQakhirtemp;
						set Nakhirtemp      = Nm7temp + totnakhirtemp;
						UPDATE inbarangmutasi set  QM7=qm7temp,NM7=nm7temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 end if; 
				 if blntemp=8 then
						set totQAkhirtemp   =(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
						set totNAkhirtemp   =(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
						set QM8temp         = qty_;
						set NM8temp         = QM8temp * hpokok_ * tukarsys;
						Set QAkhirtemp      = QM8temp + totQakhirtemp;
						set Nakhirtemp      = Nm8temp + totnakhirtemp;
						UPDATE inbarangmutasi set  QM8=qm8temp,NM8=nm8temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 end if; 
				 if blntemp=9 then
						set totQAkhirtemp   =(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
						set totNAkhirtemp   =(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
						set QM9temp         = qty_;
						set NM9temp         = QM8temp * hpokok_ * tukarsys;
						Set QAkhirtemp      = QM8temp + totQakhirtemp;
						set Nakhirtemp      = Nm8temp + totnakhirtemp;
						UPDATE inbarangmutasi set  QM9=qm9temp,NM9=nm9temp, Qakhir=qakhirtemp, nakhir=nakhirtemp where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 end if;
				 if blntemp=10 then
						set totQAkhirtemp   =(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
						set totNAkhirtemp   =(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
						set QM10temp        = qty_;
						set NM10temp        = QM10temp * hpokok_ * tukarsys;
						Set QAkhirtemp      = QM10temp + totQakhirtemp;
						set Nakhirtemp      = Nm10temp + totnakhirtemp;
						UPDATE inbarangmutasi set  QM10=qm10temp,NM10=nm10temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 end if;
				 if blntemp=11 then
						set totQAkhirtemp   =(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
						set totNAkhirtemp   =(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
						set QM11temp        = qty_;
						set NM11temp        = QM11temp * hpokok_ * tukarsys;
						Set QAkhirtemp      = QM11temp + totQakhirtemp;
						set Nakhirtemp      = Nm11temp + totnakhirtemp;
						UPDATE inbarangmutasi set  QM11=qm11temp,NM11=nm11temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 end if; 
				 if blntemp=12 then
						set totQAkhirtemp   =(Select (Qawal+ (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) - (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);
						set totNAkhirtemp   =(Select (NAwal+ (NM1+NM2+NM3+NM4+NM5+NM6+NM7+NM8+NM9+NM10+NM11+NM12) - (NK1+NK2+NK3+NK4+NK5+NK6+NK7+NK8+NK9+NK10+NK11+NK12)) from inbarangmutasi where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_);                        
						set QM12temp        = qty_;
						set NM12temp        = QM12temp * hpokok_ * tukarsys;
						Set QAkhirtemp      = QM12temp + totQakhirtemp;
						set Nakhirtemp      = Nm12temp + totnakhirtemp;
						UPDATE inbarangmutasi set  QM12=qm12temp,NM12=nm12temp, Qakhir=qakhirtemp, nakhir=nakhirtemp  where brgid=BrgID_ and gdgid=gdgID_ and thn=thntemp_ and cabid =cabID_; 
				 end if;
		End IF;
end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_nomer_urut_Hutang`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_nomer_urut_Hutang`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_nomer_urut_Hutang`(In CabID_ VARCHAR(5))
BEGIN
		-- Create By Afes
		-- Untuk membuat nourut ditable
		-- apsaldoawalhutang
		DECLARE isi integer;
		declare hasil integer;
		Set isi=(Select IFNull(MAX(nomor),'0') as Nourut
						 from
						 apsaldoawalhutang where cabid = cabid_ order by NOMOR DESC);
		if isi = 0 THEN
			set hasil =  1;
		else 
			set hasil = isi + 1;
		end if;

		select hasil;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_nomor_urut_opname`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_nomor_urut_opname`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_nomor_urut_opname`(in GdgID_ varchar(5), In cabID_ varchar(5))
BEGIN
DECLARE isi integer;
declare hasil integer;
Set isi=(Select IFNull(MAX(nomor),'0') as Nourut
				 from
				 inbarangopname where GdgID = GdgID_ and CabID= CabID_ order by NOMOR desc);
if isi = 0 THEN
  set hasil =  1;
else 
	set hasil = isi + 1;
end if;

select hasil;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_pencarianUser`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_pencarianUser`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_pencarianUser`(IN `UserIdin` varchar(10),IN `Passin` varchar(50))
BEGIN 
	SELECT U.Nm_user, G.Access, U.GroupUser
	from pxuser as U INNER JOIN pxgroupuser as G On U.GroupUser = G.GroupID where U.userID=UserIdin and u.pass=passin and u.LNOaktif <> '1';  
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_posisiHutang`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_posisiHutang`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_posisiHutang`(IN Supid_ varchar(10), In Valid_ Varchar(5), In trans_ SmallInt, In Saldo_ decimal(28,8), IN OldSaldo_ decimal(28,8))
BEGIN
	# Create by Afes
  # Tgl 25 Agustus 2013
  # Tujuan untuk menyimpan posisi hutang 
	Declare oSaldo_ decimal(28,8);
	Declare newSaldo_ decimal(28,8);
  Case Trans_
       When 0 THEN
						if Not EXISTS (Select 1 From apposisihutang where supid=supid_ and Valid = Valid_) then
								Insert into apposisihutang(supID, hutang, valid) VALUES(supid_, saldo_, valid_);
						Else		 
								Select Hutang Into oSaldo_ From apposisihutang where supid=SupID_ and ValID = ValID_;
								set newSaldo_ =  (oSaldo_ - oldsaldo_) +  Saldo_;
								UPDATE apposisihutang set hutang=newSaldo_ where supid=supid_ and Valid=Valid_; 			
						end if;
			 When 1 THEN
						if Not EXISTS (Select 1 From apposisihutang where supid=supid_ and ValId = Valid_) then
								Insert into apposisihutang(supID, hutang, valid) VALUES(supid_, saldo_, valid_);
						Else		 
								Select Hutang Into oSaldo_ From apposisihutang where supid=SupID_ and ValID = ValID_;
								set newSaldo_ =  (oSaldo_ - oldsaldo_) +  Saldo_;
								UPDATE apposisihutang set hutang=newSaldo_ where supid=supid_ and Valid=Valid_; 			
						end if;
			 WHEN 2 THEN
						if Not EXISTS (Select 1 From apposisihutang where supid=supid_ and ValId=Valid_) then
								Insert into apposisihutang(supID, hutang, valid) VALUES(supid_, saldo_, valid_);
						Else		 
								Select Hutang Into oSaldo_ From apposisihutang where supid=SupID_ and ValID = ValID_;
								set newSaldo_ =  (oSaldo_ + oldsaldo_) -  Saldo_;
								UPDATE apposisihutang set hutang=newSaldo_ where supid=supid_ and Valid=Valid_; 			
						end if;
	End Case;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_proses_harga_Jual`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_proses_harga_Jual`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_proses_harga_Jual`(in brgtempawal varchar(30), In brgtempakhir varchar(30),  in hrgtemp varchar(10), in statAll varchar(1), in cari varchar(3), in sysparam varchar(10), in jproses int, in kdari int, in nilai decimal(28,8), in persentase decimal(28,8), in pembulatan decimal(28,8), IN ID_ varchar(10))
BEGIN
		
	/* 
		All 'Declare Statements Must come FIRST
	*/

	-- Declare '_val' VARIABLES to READ in EACH record from the CURSOR
	DECLARE scab VARCHAR(255);
	DECLARE shrg VARCHAR(255);
	DECLARE sbrg VARCHAR(255);
	DECLARE shpp DECIMAL(28,8);
	DECLARE sprofit DECIMAL(28,8);
	DECLARE sprofitnilai DECIMAL(28,8);
	DECLARE sh1 DECIMAL(28,8);
	DECLARE sh2 DECIMAL(28,8);
	DECLARE sh3 DECIMAL(28,8);
	DECLARE sisi1 DECIMAL(15,8);
	DECLARE sisi2 DECIMAL(15,8);
	DECLARE	shbeli DECIMAL(28,8);
	

	-- Declare  VARIABLES used just for CURSOR and loop control
	DECLARE no_more_rows boolean;
	DECLARE loop_cntr int DEFAULT 0;
	DECLARE num_rows int DEFAULT 0;
	IF statAll = '0' THEN
	BEGIN
	-- DECLARE the CURSOR
		 DECLARE barang_cur CURSOR FOR	
			
				    SELECT M.CabID, M.HrgID, m.BrgID, b.hbeli, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3
						FROM inbaranghjual M Inner Join inbaranghbeli b on m.brgID = b.brgID where M.HrgID=hrgtemp
				UNION
						select m.cabID, H.HRGID, m.BrgID as BRG, m.hbeli, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3 
						from inbaranghbeli m Cross JOIN pxharga as H where m.BrgID not in
						(select BRGID from inbaranghjual order by m.BRGID) and H.HrgID = hrgtemp; 
			
-- Declare HANDLER for exception
		 DECLARE CONTINUE HANDLER FOR NOT FOUND
				Set no_more_rows = TRUE;

	/* 
		Now the Programing Logic
	*/
	
	-- 'Open' the cursor and capture the number or rows returned
	-- (the 'SELECT' gets INVOKEd when the cursor is 'opened')
		 OPEN barang_cur;
		 SELECT FOUND_ROWS() into num_rows;

		 the_loop  : LOOP
		 
		 FETCH barang_cur
				INTO scab, shrg, sbrg, shbeli, shpp, sprofit, sprofitnilai, sh1, sh2, sh3;
		 
		 BEGIN
			DECLARE lfifotemp int;
			Declare newh3 DECIMAL(28,8);
			DECLARE newh2 DECIMAL(28,8);
			DECLARE newh1 DECIMAL(28,8);
			DECLARE newnilai DECIMAL(28,8);
			DECLARE newprofit DECIMAL(28,8);
			Declare newhpp DECIMAL(28,8);
			declare newpembulatan decimal (28,8);
		  Set lfifotemp =(SELECT Metode from pxsystem WHERE Metode=sysparam);
			Select ISi1, Isi2 Into sisi1, sisi2 from inbarang where BrgID = sbrg;
			if lfifotemp <> 1 THEN	
				Set newhpp = shbeli;
			ELSE
				Set newhpp = shpp;
			end if;
			-- Fifo 			
				 if jproses = '0' THEN -- Berdasarkan Nilai
						if kdari = '0' THEN -- Berdasarkan Hpp
							SET newprofit = 0;
							SET newnilai = nilai;					
							set newpembulatan = pembulatan;
							Set newh3 = ((newhpp + newnilai)/newpembulatan) * newpembulatan;
							SET newh2 = newh3 * sisi2;
							SET newh1 = newh2 * sisi1;
							UPDATE inbaranghjual SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
							WHERE brgID=sbrg and cabID=scab and hrgID=shrg;
							-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
						ELSE
							-- berdasarkan HJual3
							SET newprofit = sprofit;
							SET newnilai 	= sprofitnilai;	
							set newpembulatan = pembulatan;						
							Set newh3 		= ((sh3 + nilai) / newpembulatan) * newpembulatan;
							SET newh2 		= newh3 * sisi2;
							SET newh1 		= newh2 * sisi1;
							UPDATE inbaranghjual SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
							WHERE brgID=sbrg and cabID=scab and HrgID=shrg;
						END IF;
         ELSE
						-- Berdasarkan Prosentase 
						if kdari = '0' THEN -- HPP
							SET newprofit = persentase;
							SET newnilai = (newhpp * newprofit)/100;
							set newpembulatan = pembulatan;							
							Set newh3 = ((shbeli + newnilai) / newpembulatan) * newpembulatan;
							SET newh2 = newh3 * sisi2;
							SET newh1 = newh2 * sisi1;
							UPDATE inbaranghjual SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
							WHERE brgID=sbrg and cabID=scab and hrgID=shrg;
							-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
						ELSE
							-- HJual;									 						
							SET newprofit = sprofit;
							SET newnilai 	= sprofitnilai;	
							set newpembulatan = pembulatan;						
							Set newh3 		= ((sh3 * (100 + persentase)/100) / newpembulatan) * newpembulatan;
							SET newh2 		= newh3 * sisi2;
							SET newh1 		= newh2 * sisi1;
							UPDATE inbaranghjual SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
							WHERE brgID=sbrg and cabID=scab and hrgID=shrg;
						END IF;																					
				 END if;
			-- END if;
			IF no_more_rows THEN
				CLOSE barang_cur;
				LEAVE the_loop;
		  END IF;
		 END;


		-- break out of the loop IF
			-- 1) there were no records, or
			-- 2) we've processed them ALL

		 

		-- the equivalent of a 'Print statement' in a stored PROCEDURE
		-- it simply display output for each LOOP
			
		
		-- Count the number of times looped
		 SET loop_cntr = loop_cntr + 1;

		 END loop the_loop;
		
		-- 'Print' the output so we can see they are the same
		 Select num_rows, loop_cntr;
		END;
	ELSE	
		if cari='Brg' THEN
		BEGIN
				DECLARE barang_cur CURSOR FOR	
			
							 SELECT M.CabID, M.HrgID, m.BrgID, b.hbeli, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3
							 FROM inbaranghjual M Inner Join inbaranghbeli b on m.brgID = b.brgID  Where M.HrgID=hrgtemp AND
							 b.BRGID>=brgtempawal and b.BRGID<=brgtempakhir							 
						 UNION
							 select m.cabID, H.HRGID, m.BrgID as BRG, m.hbeli, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3 
							 from inbaranghbeli m Cross JOIN pxharga as H where m.BrgID not in
							 (select BRGID from inbaranghjual order by m.BRGID) and H.HrgID=hrgtemp
               and m.BRGID>=brgtempawal and m.BRGID<=brgtempakhir;
-- Declare HANDLER for exception
				DECLARE CONTINUE HANDLER FOR NOT FOUND
					Set no_more_rows = TRUE;

	/* 
		Now the Programing Logic
	*/
	
	-- 'Open' the cursor and capture the number or rows returned
	-- (the 'SELECT' gets INVOKEd when the cursor is 'opened')
				OPEN barang_cur;
					SELECT FOUND_ROWS() into num_rows;

				the_loop  : LOOP
		 
				FETCH barang_cur
						INTO scab, shrg, sbrg, shbeli, shpp, sprofit, sprofitnilai, sh1, sh2, sh3;
		 
				BEGIN
					DECLARE lfifotemp int;
					Declare newh3 DECIMAL(28,8);
					DECLARE newh2 DECIMAL(28,8);
					DECLARE newh1 DECIMAL(28,8);
					DECLARE newnilai DECIMAL(28,8);
					DECLARE newprofit DECIMAL(28,8);
					Declare newhpp DECIMAL(28,8);
          DECLARE newpembulatan DECIMAL(28,8);  
					Set lfifotemp =(SELECT Metode from pxsystem WHERE Metode=sysparam);
			    Select ISi1, Isi2 Into sisi1, sisi2 from inbarang where BrgID = sbrg;
					if lfifotemp <> 1 THEN	
						Set newhpp = shbeli;
					ELSE
						Set newhpp = shpp;
					end if;
					-- Fifo 			
						 if jproses = '0' THEN -- Berdasarkan Nilai
								if kdari = '0' THEN -- Berdasarkan Hpp
									SET newprofit = 0;
									SET newnilai = nilai;							
									set newpembulatan = pembulatan;
									Set newh3 = ((newhpp + newnilai)/newpembulatan)*newpembulatan;
									SET newh2 = newh3 * sisi2;
									SET newh1 = newh2 * sisi1;
									UPDATE inbaranghjual SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
									WHERE brgID=sbrg and cabID=scab and hrgID=shrg;
									-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
								ELSE
									-- berdasarkan HJual3
									SET newprofit = sprofit;
									SET newnilai 	= sprofitnilai;	
									set newpembulatan = pembulatan;						
									Set newh3 		= ((sh3 + nilai)/newpembulatan)*newpembulatan;
									SET newh2 		= newh3 * sisi2;
									SET newh1 		= newh2 * sisi1;
									UPDATE inbaranghjual SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
									WHERE brgID=sbrg and cabID=scab and hrgID=shrg;
								END IF;
						 ELSE
								-- Berdasarkan Prosentase 
								if kdari = '0' THEN -- HPP
									SET newprofit = persentase;
									SET newnilai = (newhpp * newprofit)/100;	
									set newpembulatan = pembulatan;
									Set newh3 = ((shbeli + newnilai)/newpembulatan) * newpembulatan;
									SET newh2 = newh3 * sisi2;
									SET newh1 = newh2 * sisi1;
									UPDATE inbaranghjual SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
									WHERE brgID=sbrg and cabID=scab and hrgID=shrg;
									-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
								ELSE
									-- HJual;									 						
									SET newprofit = sprofit;
									SET newnilai 	= sprofitnilai;							
									set newpembulatan = pembulatan;
									Set newh3 		= ((sh3 * (100 + persentase)/100)/newpembulatan) * newpembulatan;
									SET newh2 		= newh3 * sisi2;
									SET newh1 		= newh2 * sisi1;
									UPDATE inbaranghjual SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
									WHERE brgID=sbrg and cabID=scab and hrgID=shrg;
								END IF;																					
						 END if;
					-- END if;
					IF no_more_rows THEN
						CLOSE barang_cur;
						LEAVE the_loop;
					END IF;
				 END;


		-- break out of the loop IF
			-- 1) there were no records, or
			-- 2) we've processed them ALL

		 

		-- the equivalent of a 'Print statement' in a stored PROCEDURE
		-- it simply display output for each LOOP
			
		
		-- Count the number of times looped
				SET loop_cntr = loop_cntr + 1;

				END loop the_loop;
		
		-- 'Print' the output so we can see they are the same
				Select num_rows, loop_cntr;
			END;
		ELSEIF cari='Jns' THEN
		BEGIN			
				DECLARE barang_cur CURSOR FOR	
			
							  SELECT M.CabID, M.HrgID, m.BrgID, b.hbeli, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3
							  FROM inbaranghjual M Inner Join inbaranghbeli b on m.brgID = b.brgID  
								inner join inbarang c on m.BrgID = c.BRGID 
								Where M.HrgID=hrgtemp AND c.Jenis>=brgtempawal and c.Jenis<=brgtempakhir
						UNION
								select m.cabID, H.HRGID, m.BrgID as BRG, m.hbeli, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3 
							  from inbaranghbeli m 
								Cross JOIN pxharga as H 
								inner join inbarang c on m.BrgID = c.BRGID where m.BrgID not in
							  (select BRGID from inbaranghjual order by m.BRGID) and H.HrgID=hrgtemp
                and c.Jenis>=brgtempawal and c.Jenis<=brgtempakhir;
			
-- Declare HANDLER for exception
				DECLARE CONTINUE HANDLER FOR NOT FOUND
					Set no_more_rows = TRUE;

	/* 
		Now the Programing Logic
	*/
	
	-- 'Open' the cursor and capture the number or rows returned
	-- (the 'SELECT' gets INVOKEd when the cursor is 'opened')
				OPEN barang_cur;
					SELECT FOUND_ROWS() into num_rows;

				the_loop  : LOOP
		 
				FETCH barang_cur
						INTO scab, shrg, sbrg, shbeli, shpp, sprofit, sprofitnilai, sh1, sh2, sh3;
		 
				BEGIN
					DECLARE lfifotemp int;
					Declare newh3 DECIMAL(28,8);
					DECLARE newh2 DECIMAL(28,8);
					DECLARE newh1 DECIMAL(28,8);
					DECLARE newnilai DECIMAL(28,8);
					DECLARE newprofit DECIMAL(28,8);
					Declare newhpp DECIMAL(28,8);
					DECLARE newpembulatan DECIMAL(28,8);
					Set lfifotemp =(SELECT Metode from pxsystem WHERE Metode=sysparam);
					Select ISi1, Isi2 Into sisi1, sisi2 from inbarang where BrgID = sbrg;
					if lfifotemp <> 1 THEN	
						Set newhpp = shbeli;
					ELSE
						Set newhpp = shpp;
					end if;
					-- Fifo 			
						 if jproses = '0' THEN -- Berdasarkan Nilai
								if kdari = '0' THEN -- Berdasarkan Hpp
									SET newprofit = 0;
									SET newnilai = nilai;			
									set newpembulatan = pembulatan;				
									Set newh3 = ((newhpp + newnilai)/newpembulatan) * newpembulatan;
									SET newh2 = newh3 * sisi2;
									SET newh1 = newh2 * sisi1;
									UPDATE inbaranghjual SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
									WHERE brgID=sbrg and cabID=scab and hrgID=shrg;
									-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
								ELSE
									-- berdasarkan HJual3
									SET newprofit = sprofit;
									SET newnilai 	= sprofitnilai;	
									set newpembulatan = pembulatan;
									Set newh3 		= ((sh3 + nilai)/newpembulatan) * newpembulatan;
									SET newh2 		= newh3 * sisi2;
									SET newh1 		= newh2 * sisi1;
									UPDATE inbaranghjual SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
									WHERE brgID=sbrg and cabID=scab and hrgID=shrg;
								END IF;
						 ELSE
								-- Berdasarkan Prosentase 
								if kdari = '0' THEN -- HPP
									SET newprofit = persentase;
									SET newnilai = (newhpp * newprofit)/100;
									set newpembulatan = pembulatan;
									Set newh3 = ((shbeli + newnilai)/newpembulatan) * newpembulatan;
									SET newh2 = newh3 * sisi2;
									SET newh1 = newh2 * sisi1;
									UPDATE inbaranghjual SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
									WHERE brgID=sbrg and cabID=scab and hrgID=shrg;
									-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
								ELSE
									-- HJual;									 						
									SET newprofit = sprofit;
									SET newnilai 	= sprofitnilai;			
									set newpembulatan = pembulatan;				
									Set newh3 		= ((sh3 * (100 + persentase)/100) / newpembulatan) * newpembulatan;
									SET newh2 		= newh3 * sisi2;
									SET newh1 		= newh2 * sisi1;
									UPDATE inbaranghjual SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
									WHERE brgID=sbrg and cabID=scab and hrgID=shrg;
								END IF;																					
						 END if;
					-- END if;
					IF no_more_rows THEN
						CLOSE barang_cur;
						LEAVE the_loop;
					END IF;
				 END;


		-- break out of the loop IF
			-- 1) there were no records, or
			-- 2) we've processed them ALL

		 

		-- the equivalent of a 'Print statement' in a stored PROCEDURE
		-- it simply display output for each LOOP
			
		
		-- Count the number of times looped
				SET loop_cntr = loop_cntr + 1;

				END loop the_loop;
		
		-- 'Print' the output so we can see they are the same
				Select num_rows, loop_cntr;
			END;
		ELSEIF cari='Gol' THEN
		BEGIN			
				DECLARE barang_cur CURSOR FOR	
			
								 SELECT M.CabID, M.HrgID, m.BrgID, b.hbeli, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3
							   FROM inbaranghjual M Inner Join inbaranghbeli b on m.brgID = b.brgID  inner join inbarang c on m.BrgID = c.BRGID 
								 Where M.HrgID=hrgtemp And c.gol>=brgtempawal and c.gol<=brgtempakhir
						 UNION
  							 select m.cabID, H.HRGID, m.BrgID as BRG, m.hbeli, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3 
							   from inbaranghbeli m Cross JOIN pxharga as H inner join inbarang c on m.BrgID = c.BRGID 
								 where m.BrgID not in (select BRGID from inbaranghjual order by m.BRGID) and H.HrgID=hrgtemp
                 and c.gol>=brgtempawal and c.gol<=brgtempakhir; 
			
-- Declare HANDLER for exception
				DECLARE CONTINUE HANDLER FOR NOT FOUND
					Set no_more_rows = TRUE;

	/* 
		Now the Programing Logic
	*/
	
	-- 'Open' the cursor and capture the number or rows returned
	-- (the 'SELECT' gets INVOKEd when the cursor is 'opened')
				OPEN barang_cur;
					SELECT FOUND_ROWS() into num_rows;

				the_loop  : LOOP
		 
				FETCH barang_cur
						INTO scab, shrg, sbrg, shbeli, shpp, sprofit, sprofitnilai, sh1, sh2, sh3;
		 
				BEGIN
					DECLARE lfifotemp int;
					Declare newh3 DECIMAL(28,8);
					DECLARE newh2 DECIMAL(28,8);
					DECLARE newh1 DECIMAL(28,8);
					DECLARE newnilai DECIMAL(28,8);
					DECLARE newprofit DECIMAL(28,8);
					Declare newhpp DECIMAL(28,8);
					DECLARE newpembulatan DECIMAL(28,8);
					Set lfifotemp =(SELECT Metode from pxsystem WHERE Metode=sysparam);
					Select ISi1, Isi2 Into sisi1, sisi2 from inbarang where BrgID = sbrg;
					if lfifotemp <> 1 THEN	
						Set newhpp = shbeli;
					ELSE
						Set newhpp = shpp;
					end if;
					-- Fifo 			
						 if jproses = '0' THEN -- Berdasarkan Nilai
								if kdari = '0' THEN -- Berdasarkan Hpp
									SET newprofit = 0;
									SET newnilai = nilai;	
									set newpembulatan = pembulatan;
									Set newh3 = ((newhpp + newnilai)/newpembulatan) * newpembulatan;
									SET newh2 = newh3 * sisi2;
									SET newh1 = newh2 * sisi1;
									UPDATE inbaranghjual SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
									WHERE brgID=sbrg and cabID=scab and hrgID=shrg;
									-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
								ELSE
									-- berdasarkan HJual3
									SET newprofit = sprofit;
									SET newnilai 	= sprofitnilai;	
									set newpembulatan = pembulatan;
									Set newh3 		= ((sh3 + nilai) / newpembulatan) * newpembulatan;
									SET newh2 		= newh3 * sisi2;
									SET newh1 		= newh2 * sisi1;
									UPDATE inbaranghjual SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
									WHERE brgID=sbrg and cabID=scab and hrgID=shrg;
								END IF;
						 ELSE
								-- Berdasarkan Prosentase 
								if kdari = '0' THEN -- HPP
									SET newprofit = persentase;
									SET newnilai = (newhpp * newprofit)/100;	
									set newpembulatan = pembulatan;
									Set newh3 = ((shbeli + newnilai)/newpembulatan)* newpembulatan;
									SET newh2 = newh3 * sisi2;
									SET newh1 = newh2 * sisi1;
									UPDATE inbaranghjual SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
									WHERE brgID=sbrg and cabID=scab and hrgID=shrg;
									-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
								ELSE
									-- HJual;									 						
									SET newprofit = sprofit;
									SET newnilai 	= sprofitnilai;
									set newpembulatan = pembulatan;
									Set newh3 		= ((sh3 * (100 + persentase)/100)/newpembulatan)*newpembulatan;
									SET newh2 		= newh3 * sisi2;
									SET newh1 		= newh2 * sisi1;
									UPDATE inbaranghjual SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
									WHERE brgID=sbrg and cabID=scab and hrgID=shrg;
								END IF;																					
						 END if;
					-- END if;
					IF no_more_rows THEN
						CLOSE barang_cur;
						LEAVE the_loop;
					END IF;
				 END;


		-- break out of the loop IF
			-- 1) there were no records, or
			-- 2) we've processed them ALL

		 

		-- the equivalent of a 'Print statement' in a stored PROCEDURE
		-- it simply display output for each LOOP
			
		
		-- Count the number of times looped
				SET loop_cntr = loop_cntr + 1;

				END loop the_loop;
		
		-- 'Print' the output so we can see they are the same
				Select num_rows, loop_cntr;
			END;
		ELSEIF cari='Mrk' THEN
		BEGIN			
				DECLARE barang_cur CURSOR FOR	
			
									 SELECT M.CabID, M.HrgID, m.BrgID, b.hbeli, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3
							     FROM inbaranghjual M Inner Join inbaranghbeli b on m.brgID = b.brgID  inner join inbarang c on m.BrgID = c.BRGID
									 Where M.HrgID=hrgtemp And c.merek>=brgtempawal and c.merek<=brgtempakhir
							UNION
									 select m.cabID, H.HRGID, m.BrgID as BRG, m.hbeli, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3 
									 from inbaranghbeli m Cross JOIN pxharga as H inner join inbarang c on m.BrgID = c.BRGID 
									 where m.BrgID not in (select BRGID from inbaranghjual order by m.BRGID) and H.HrgID=hrgtemp
									 and c.merek>=brgtempawal and c.merek<=brgtempakhir; 
			
-- Declare HANDLER for exception
				DECLARE CONTINUE HANDLER FOR NOT FOUND
					Set no_more_rows = TRUE;

	/* 
		Now the Programing Logic
	*/
	
	-- 'Open' the cursor and capture the number or rows returned
	-- (the 'SELECT' gets INVOKEd when the cursor is 'opened')
				OPEN barang_cur;
					SELECT FOUND_ROWS() into num_rows;

				the_loop  : LOOP
		 
				FETCH barang_cur
						INTO scab, shrg, sbrg, shbeli, shpp, sprofit, sprofitnilai, sh1, sh2, sh3;
		 
				BEGIN
					DECLARE lfifotemp int;
					Declare newh3 DECIMAL(28,8);
					DECLARE newh2 DECIMAL(28,8);
					DECLARE newh1 DECIMAL(28,8);
					DECLARE newnilai DECIMAL(28,8);
					DECLARE newprofit DECIMAL(28,8);
					Declare newhpp DECIMAL(28,8);
					DECLARE newpembulatan DECIMAL(28,8);
					Set lfifotemp =(SELECT Metode from pxsystem WHERE Metode=sysparam);
					Select ISi1, Isi2 Into sisi1, sisi2 from inbarang where BrgID = sbrg;
					if lfifotemp <> 1 THEN	
						Set newhpp = shbeli;
					ELSE
						Set newhpp = shpp;
					end if;
					-- Fifo 			
						 if jproses = '0' THEN -- Berdasarkan Nilai
								if kdari = '0' THEN -- Berdasarkan Hpp
									SET newprofit = 0;
									SET newnilai = nilai;				
									set newpembulatan = pembulatan;
									Set newh3 = ((newhpp + newnilai)/newpembulatan)*newpembulatan;
									SET newh2 = newh3 * sisi2;
									SET newh1 = newh2 * sisi1;
									UPDATE inbaranghjual SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
									WHERE brgid=sbrg and cabid=scab and hrgid=shrg;
									-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
								ELSE
									-- berdasarkan HJual3
									SET newprofit = sprofit;
									SET newnilai 	= sprofitnilai;
									set newpembulatan = pembulatan;
									Set newh3 		= ((sh3 + nilai) / newpembulatan) * newpembulatan;
									SET newh2 		= newh3 * sisi2;
									SET newh1 		= newh2 * sisi1;
									UPDATE inbaranghjual SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
									WHERE brgid=sbrg and cabid=scab and hrgid=shrg;
								END IF;
						 ELSE
								-- Berdasarkan Prosentase 
								if kdari = '0' THEN -- HPP
									SET newprofit = persentase;
									SET newnilai = (newhpp * newprofit)/100;	
									set newpembulatan = pembulatan;
									Set newh3 = ((shbeli + newnilai)/newpembulatan) * newpembulatan;
									SET newh2 = newh3 * sisi2;
									SET newh1 = newh2 * sisi1;
									UPDATE inbaranghjual SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
									WHERE brgid=sbrg and cabid=scab and hrgid=shrg;
									-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
								ELSE
									-- HJual;									 						
									SET newprofit = sprofit;
									SET newnilai 	= sprofitnilai;							
									set newpembulatan = pembulatan;
									Set newh3 		= ((sh3 * (100 + persentase)/100)/newpembulatan) * newpembulatan;
									SET newh2 		= newh3 * sisi2;
									SET newh1 		= newh2 * sisi1;
									UPDATE inbaranghjual SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
									WHERE brgid=sbrg and cabid=scab and hrgid=shrg;
								END IF;																					
						 END if;
					-- END if;
					IF no_more_rows THEN
						CLOSE barang_cur;
						LEAVE the_loop;
					END IF;
				 END;


		-- break out of the loop IF
			-- 1) there were no records, or
			-- 2) we've processed them ALL

		 

		-- the equivalent of a 'Print statement' in a stored PROCEDURE
		-- it simply display output for each LOOP
			
		
		-- Count the number of times looped
				SET loop_cntr = loop_cntr + 1;

				END loop the_loop;
		
		-- 'Print' the output so we can see they are the same
				Select num_rows, loop_cntr;
			END;
		End if;		
  	END IF; 
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_proses_Load_Harga_Jual_Min`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_proses_Load_Harga_Jual_Min`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_proses_Load_Harga_Jual_Min`(in brgtempawal varchar(30), In brgtempakhir varchar(30),  in hrgtemp varchar(10), in statAll varchar(1), in cari varchar(3), in sysparam varchar(10), in jproses int, in kdari int, in nilai decimal(28,8), in persentase decimal(28,8))
BEGIN
		
	/* 
		All 'Declare Statements Must come FIRST
	*/

	-- Declare '_val' VARIABLES to READ in EACH record from the CURSOR
	DECLARE scab VARCHAR(255);
	DECLARE shrg VARCHAR(255);
	DECLARE sbrg VARCHAR(255);
	DECLARE shpp DECIMAL(28,8);
	DECLARE sprofit DECIMAL(28,8);
	DECLARE sprofitnilai DECIMAL(28,8);
	DECLARE sh1 DECIMAL(28,8);
	DECLARE sh2 DECIMAL(28,8);
	DECLARE sh3 DECIMAL(28,8);
	DECLARE sisi1 DECIMAL(15,8);
	DECLARE sisi2 DECIMAL(15,8);
	DECLARE	shbeli DECIMAL(28,8);
	

	-- Declare  VARIABLES used just for CURSOR and loop control
	DECLARE no_more_rows boolean;
	DECLARE loop_cntr int DEFAULT 0;
	DECLARE num_rows int DEFAULT 0;
	IF statAll = '0' THEN
	BEGIN
	-- DECLARE the CURSOR
		 DECLARE barang_cur CURSOR FOR	
			
				SELECT M.Cab, m.Brg, b.hbeli, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3, b.isi1, b.Isi2
				FROM svarmhjbrgmin M LEFT Outer Join vw_hrgpokokbrg b on m.brg = b.brg 
				UNION
				select m.cab, m.BRG as BRG, m.hbeli, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3, m.Isi1, m.Isi2 from vw_hrgpokokbrg m where BRG not in
				(select BRG from svarmhjbrgmin B order by B.BRG) ; 
			
-- Declare HANDLER for exception
		 DECLARE CONTINUE HANDLER FOR NOT FOUND
				Set no_more_rows = TRUE;

	/* 
		Now the Programing Logic
	*/
	
	-- 'Open' the cursor and capture the number or rows returned
	-- (the 'SELECT' gets INVOKEd when the cursor is 'opened')
		 OPEN barang_cur;
		 SELECT FOUND_ROWS() into num_rows;

		 the_loop  : LOOP
		 
		 FETCH barang_cur
				INTO scab, shrg, sbrg, shbeli, shpp, sprofit, sprofitnilai, sh1, sh2, sh3, sisi1, sisi2;
		 
		 BEGIN
			DECLARE lfifotemp int;
			Declare newh3 DECIMAL(28,8);
			DECLARE newh2 DECIMAL(28,8);
			DECLARE newh1 DECIMAL(28,8);
			DECLARE newnilai DECIMAL(28,8);
			DECLARE newprofit DECIMAL(28,8);
			Declare newhpp DECIMAL(28,8);

			DECLARE snewhpp DECIMAL(28,8);
			DECLARE snewhbeli DECIMAL(28,8);

			SET snewhbeli =(SELECT hbeli FROM svinmhrgbeli where brg=sbrg);
			SET snewhpp   =(SELECT hpp From svinmhrgbeli where brg=sbrg);

		  Set lfifotemp =(SELECT COUNT(lfifoaveg) from svlmpsys WHERE lfifoaveg=sysparam);
			if lfifotemp <> 0 THEN	
				Set newhpp = snewhbeli;
			ELSE
				Set newhpp = snewhpp;
			end if;

			-- Fifo 			
				 if jproses = '0' THEN -- Berdasarkan Nilai
						if kdari = '0' THEN -- Berdasarkan Hpp
							SET newprofit = 0;
							SET newnilai = nilai;							
							Set newh3 = newhpp + newnilai;
							SET newh2 = newh3 * sisi2;
							SET newh1 = newh2 * sisi1;
							UPDATE svarmhjbrg SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
							WHERE brg=sbrg and cab=scab;
							-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
						ELSE
							-- berdasarkan HJual3
							SET newprofit = sprofit;
							SET newnilai 	= sprofitnilai;							
							Set newh3 		= sh3 + nilai;
							SET newh2 		= newh3 * sisi2;
							SET newh1 		= newh2 * sisi1;
							UPDATE svarmhjbrg SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
							WHERE brg=sbrg and cab=scab;
						END IF;
         ELSE
						-- Berdasarkan Prosentase 
						if kdari = '0' THEN -- HPP
							SET newprofit = persentase;
							SET newnilai = (newhpp * newprofit)/100;							
							Set newh3 = shbeli + newnilai;
							SET newh2 = newh3 * sisi2;
							SET newh1 = newh2 * sisi1;
							UPDATE svarmhjbrg SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
							WHERE brg=sbrg and cab=scab;
							-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
						ELSE
							-- HJual;									 						
							SET newprofit = sprofit;
							SET newnilai 	= sprofitnilai;							
							Set newh3 		= sh3 * (100 + persentase)/100;
							SET newh2 		= newh3 * sisi2;
							SET newh1 		= newh2 * sisi1;
							UPDATE svarmhjbrg SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
							WHERE brg=sbrg and cab=scab;
						END IF;																					
				 END if;
			-- END if;
			IF no_more_rows THEN
				CLOSE barang_cur;
				LEAVE the_loop;
		  END IF;
		 END;


		-- break out of the loop IF
			-- 1) there were no records, or
			-- 2) we've processed them ALL

		 

		-- the equivalent of a 'Print statement' in a stored PROCEDURE
		-- it simply display output for each LOOP
			
		
		-- Count the number of times looped
		 SET loop_cntr = loop_cntr + 1;

		 END loop the_loop;
		
		-- 'Print' the output so we can see they are the same
		 Select num_rows, loop_cntr;
		END;
	ELSE	
		if cari='Brg' THEN
		BEGIN
				DECLARE barang_cur CURSOR FOR	
			
				SELECT M.Cab, m.Brg, b.hbeli, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3, b.isi1, b.Isi2
				FROM svarmhjbrgmin M LEFT Outer Join vw_hrgpokokbrg b on m.brg = b.brg 
				where b.BRG>=brgtempawal and b.BRG<=brgtempakhir
				UNION
				select m.cab, m.BRG as BRG, m.hbeli, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3, m.Isi1, m.Isi2 from vw_hrgpokokbrg m where BRG not in
				(select BRG from svarmhjbrgmin B order by B.BRG)  and m.BRG>=brgtempawal and m.BRG<=brgtempakhir ; 
			
-- Declare HANDLER for exception
				DECLARE CONTINUE HANDLER FOR NOT FOUND
					Set no_more_rows = TRUE;

	/* 
		Now the Programing Logic
	*/
	
	-- 'Open' the cursor and capture the number or rows returned
	-- (the 'SELECT' gets INVOKEd when the cursor is 'opened')
				OPEN barang_cur;
					SELECT FOUND_ROWS() into num_rows;

				the_loop  : LOOP
		 
				FETCH barang_cur
						INTO scab, shrg, sbrg, shbeli, shpp, sprofit, sprofitnilai, sh1, sh2, sh3, sisi1, sisi2;
		 
				BEGIN
					DECLARE lfifotemp int;
					Declare newh3 DECIMAL(28,8);
					DECLARE newh2 DECIMAL(28,8);
					DECLARE newh1 DECIMAL(28,8);
					DECLARE newnilai DECIMAL(28,8);
					DECLARE newprofit DECIMAL(28,8);
					Declare newhpp DECIMAL(28,8);
					DECLARE snewhpp DECIMAL(28,8);

					DECLARE snewhbeli DECIMAL(28,8);

					SET snewhbeli =(SELECT hbeli FROM svinmhrgbeli where brg=sbrg);
					SET snewhpp   =(SELECT hpp From svinmhrgbeli where brg=sbrg);

					Set lfifotemp =(SELECT COUNT(lfifoaveg) from svlmpsys WHERE lfifoaveg=sysparam);
					if lfifotemp <> 0 THEN	
						Set newhpp = snewhbeli;
					ELSE
						Set newhpp = snewhpp;
					end if;

					-- Fifo 			
						 if jproses = '0' THEN -- Berdasarkan Nilai
								if kdari = '0' THEN -- Berdasarkan Hpp
									SET newprofit = 0;
									SET newnilai = nilai;							
									Set newh3 = newhpp + newnilai;
									SET newh2 = newh3 * sisi2;
									SET newh1 = newh2 * sisi1;
									UPDATE svarmhjbrg SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
									WHERE brg=sbrg and cab=scab;
									-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
								ELSE
									-- berdasarkan HJual3
									SET newprofit = sprofit;
									SET newnilai 	= sprofitnilai;							
									Set newh3 		= sh3 + nilai;
									SET newh2 		= newh3 * sisi2;
									SET newh1 		= newh2 * sisi1;
									UPDATE svarmhjbrg SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
									WHERE brg=sbrg and cab=scab;
								END IF;
						 ELSE
								-- Berdasarkan Prosentase 
								if kdari = '0' THEN -- HPP
									SET newprofit = persentase;
									SET newnilai = (newhpp * newprofit)/100;							
									Set newh3 = shbeli + newnilai;
									SET newh2 = newh3 * sisi2;
									SET newh1 = newh2 * sisi1;
									UPDATE svarmhjbrg SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
									WHERE brg=sbrg and cab=scab;
									-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
								ELSE
									-- HJual;									 						
									SET newprofit = sprofit;
									SET newnilai 	= sprofitnilai;							
									Set newh3 		= sh3 * (100 + persentase)/100;
									SET newh2 		= newh3 * sisi2;
									SET newh1 		= newh2 * sisi1;
									UPDATE svarmhjbrg SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
									WHERE brg=sbrg and cab=scab;
								END IF;																					
						 END if;
					-- END if;
					IF no_more_rows THEN
						CLOSE barang_cur;
						LEAVE the_loop;
					END IF;
				 END;


		-- break out of the loop IF
			-- 1) there were no records, or
			-- 2) we've processed them ALL

		 

		-- the equivalent of a 'Print statement' in a stored PROCEDURE
		-- it simply display output for each LOOP
			
		
		-- Count the number of times looped
				SET loop_cntr = loop_cntr + 1;

				END loop the_loop;
		
		-- 'Print' the output so we can see they are the same
				Select num_rows, loop_cntr;
			END;
		ELSEIF cari='Jns' THEN
		BEGIN			
				DECLARE barang_cur CURSOR FOR	
			
				SELECT M.Cab, M.Hrg, m.Brg, b.hbeli, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3, b.isi1, b.Isi2
				FROM svarmhjbrgmin M LEFT Outer Join vw_hrgpokokbrg b on m.brg = b.brg 
				where b.jns >= brgtempawal and b.jns<=brgtempakhir
				UNION
				select m.cab, '' as kodehrg, m.BRG as BRG, m.hbeli, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3, m.Isi1, m.Isi2 from vw_hrgpokokbrg m where BRG not in
				(select BRG from svarmhjbrgmin B  order by B.BRG)  and m.jns >= brgtempawal and m.jns <= brgtempakhir ; 
			
-- Declare HANDLER for exception
				DECLARE CONTINUE HANDLER FOR NOT FOUND
					Set no_more_rows = TRUE;

	/* 
		Now the Programing Logic
	*/
	
	-- 'Open' the cursor and capture the number or rows returned
	-- (the 'SELECT' gets INVOKEd when the cursor is 'opened')
				OPEN barang_cur;
					SELECT FOUND_ROWS() into num_rows;

				the_loop  : LOOP
		 
				FETCH barang_cur
						INTO scab, shrg, sbrg, shbeli, shpp, sprofit, sprofitnilai, sh1, sh2, sh3, sisi1, sisi2;
		 
				BEGIN
					DECLARE lfifotemp int;
					Declare newh3 DECIMAL(28,8);
					DECLARE newh2 DECIMAL(28,8);
					DECLARE newh1 DECIMAL(28,8);
					DECLARE newnilai DECIMAL(28,8);
					DECLARE newprofit DECIMAL(28,8);
					Declare newhpp DECIMAL(28,8);
					
					DECLARE snewhpp DECIMAL(28,8);
					DECLARE snewhbeli DECIMAL(28,8);

					SET snewhbeli =(SELECT hbeli FROM svinmhrgbeli where brg=sbrg);
					SET snewhpp   =(SELECT hpp From svinmhrgbeli where brg=sbrg);

					Set lfifotemp =(SELECT COUNT(lfifoaveg) from svlmpsys WHERE lfifoaveg=sysparam);
					if lfifotemp <> 0 THEN	
						Set newhpp = snewhbeli;
					ELSE
						Set newhpp = snewhpp;
					end if;

					-- Fifo 			
						 if jproses = '0' THEN -- Berdasarkan Nilai
								if kdari = '0' THEN -- Berdasarkan Hpp
									SET newprofit = 0;
									SET newnilai = nilai;							
									Set newh3 = newhpp + newnilai;
									SET newh2 = newh3 * sisi2;
									SET newh1 = newh2 * sisi1;
									UPDATE svarmhjbrg SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
									WHERE brg=sbrg and cab=scab;
									-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
								ELSE
									-- berdasarkan HJual3
									SET newprofit = sprofit;
									SET newnilai 	= sprofitnilai;							
									Set newh3 		= sh3 + nilai;
									SET newh2 		= newh3 * sisi2;
									SET newh1 		= newh2 * sisi1;
									UPDATE svarmhjbrg SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
									WHERE brg=sbrg and cab=scab;
								END IF;
						 ELSE
								-- Berdasarkan Prosentase 
								if kdari = '0' THEN -- HPP
									SET newprofit = persentase;
									SET newnilai = (newhpp * newprofit)/100;							
									Set newh3 = shbeli + newnilai;
									SET newh2 = newh3 * sisi2;
									SET newh1 = newh2 * sisi1;
									UPDATE svarmhjbrg SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
									WHERE brg=sbrg and cab=scab;
									-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
								ELSE
									-- HJual;									 						
									SET newprofit = sprofit;
									SET newnilai 	= sprofitnilai;							
									Set newh3 		= sh3 * (100 + persentase)/100;
									SET newh2 		= newh3 * sisi2;
									SET newh1 		= newh2 * sisi1;
									UPDATE svarmhjbrg SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
									WHERE brg=sbrg and cab=scab;
								END IF;																					
						 END if;
					-- END if;
					IF no_more_rows THEN
						CLOSE barang_cur;
						LEAVE the_loop;
					END IF;
				 END;


		-- break out of the loop IF
			-- 1) there were no records, or
			-- 2) we've processed them ALL

		 

		-- the equivalent of a 'Print statement' in a stored PROCEDURE
		-- it simply display output for each LOOP
			
		
		-- Count the number of times looped
				SET loop_cntr = loop_cntr + 1;

				END loop the_loop;
		
		-- 'Print' the output so we can see they are the same
				Select num_rows, loop_cntr;
			END;
		ELSEIF cari='Gol' THEN
		BEGIN			
				DECLARE barang_cur CURSOR FOR	
			
				SELECT M.Cab, M.Hrg, m.Brg, b.hbeli, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3, b.isi1, b.Isi2
				FROM svarmhjbrgmin M LEFT Outer Join vw_hrgpokokbrg b on m.brg = b.brg 
				where b.gol>=brgtempawal and b.gol<=brgtempakhir
				UNION
				select m.cab, '' as kodehrg, m.BRG as BRG, m.hbeli, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3, m.Isi1, m.Isi2 from vw_hrgpokokbrg m where BRG not in
				(select BRG from svarmhjbrgmin B order by B.BRG)  and m.gol>=brgtempawal and m.gol<=brgtempakhir ; 
			
-- Declare HANDLER for exception
				DECLARE CONTINUE HANDLER FOR NOT FOUND
					Set no_more_rows = TRUE;

	/* 
		Now the Programing Logic
	*/
	
	-- 'Open' the cursor and capture the number or rows returned
	-- (the 'SELECT' gets INVOKEd when the cursor is 'opened')
				OPEN barang_cur;
					SELECT FOUND_ROWS() into num_rows;

				the_loop  : LOOP
		 
				FETCH barang_cur
						INTO scab, shrg, sbrg, shbeli, shpp, sprofit, sprofitnilai, sh1, sh2, sh3, sisi1, sisi2;
		 
				BEGIN
					DECLARE lfifotemp int;
					Declare newh3 DECIMAL(28,8);
					DECLARE newh2 DECIMAL(28,8);
					DECLARE newh1 DECIMAL(28,8);
					DECLARE newnilai DECIMAL(28,8);
					DECLARE newprofit DECIMAL(28,8);
					Declare newhpp DECIMAL(28,8);
					
					DECLARE snewhpp DECIMAL(28,8);
					DECLARE snewhbeli DECIMAL(28,8);

					SET snewhbeli =(SELECT hbeli FROM svinmhrgbeli where brg=sbrg);
					SET snewhpp   =(SELECT hpp From svinmhrgbeli where brg=sbrg);

					Set lfifotemp =(SELECT COUNT(lfifoaveg) from svlmpsys WHERE lfifoaveg=sysparam);
					if lfifotemp <> 0 THEN	
						Set newhpp = snewhbeli;
					ELSE
						Set newhpp = snewhpp;
					end if;

					-- Fifo 			
						 if jproses = '0' THEN -- Berdasarkan Nilai
								if kdari = '0' THEN -- Berdasarkan Hpp
									SET newprofit = 0;
									SET newnilai = nilai;							
									Set newh3 = newhpp + newnilai;
									SET newh2 = newh3 * sisi2;
									SET newh1 = newh2 * sisi1;
									UPDATE svarmhjbrg SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
									WHERE brg=sbrg and cab=scab;
									-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
								ELSE
									-- berdasarkan HJual3
									SET newprofit = sprofit;
									SET newnilai 	= sprofitnilai;							
									Set newh3 		= sh3 + nilai;
									SET newh2 		= newh3 * sisi2;
									SET newh1 		= newh2 * sisi1;
									UPDATE svarmhjbrg SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
									WHERE brg=sbrg and cab=scab;
								END IF;
						 ELSE
								-- Berdasarkan Prosentase 
								if kdari = '0' THEN -- HPP
									SET newprofit = persentase;
									SET newnilai = (newhpp * newprofit)/100;							
									Set newh3 = shbeli + newnilai;
									SET newh2 = newh3 * sisi2;
									SET newh1 = newh2 * sisi1;
									UPDATE svarmhjbrg SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
									WHERE brg=sbrg and cab=scab;
									-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
								ELSE
									-- HJual;									 						
									SET newprofit = sprofit;
									SET newnilai 	= sprofitnilai;							
									Set newh3 		= sh3 * (100 + persentase)/100;
									SET newh2 		= newh3 * sisi2;
									SET newh1 		= newh2 * sisi1;
									UPDATE svarmhjbrg SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
									WHERE brg=sbrg and cab=scab;
								END IF;																					
						 END if;
					-- END if;
					IF no_more_rows THEN
						CLOSE barang_cur;
						LEAVE the_loop;
					END IF;
				 END;


		-- break out of the loop IF
			-- 1) there were no records, or
			-- 2) we've processed them ALL

		 

		-- the equivalent of a 'Print statement' in a stored PROCEDURE
		-- it simply display output for each LOOP
			
		
		-- Count the number of times looped
				SET loop_cntr = loop_cntr + 1;

				END loop the_loop;
		
		-- 'Print' the output so we can see they are the same
				Select num_rows, loop_cntr;
			END;
		ELSEIF cari='Mrk' THEN
		BEGIN			
				DECLARE barang_cur CURSOR FOR	
			
					SELECT M.Cab, M.Hrg, m.Brg, b.hbeli, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3, b.isi1, b.Isi2
				FROM svarmhjbrgmin M LEFT Outer Join vw_hrgpokokbrg b on m.brg = b.brg 
				where b.mrk>=brgtempawal and b.mrk<=brgtempakhir
				UNION
				select m.cab, '' as kodehrg, m.BRG as BRG, m.hbeli, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3, m.Isi1, m.Isi2 from vw_hrgpokokbrg m where BRG not in
				(select BRG from svarmhjbrgmin B order by B.BRG)  and m.mrk>=brgtempawal and m.mrk<=brgtempakhir ; 
			
-- Declare HANDLER for exception
				DECLARE CONTINUE HANDLER FOR NOT FOUND
					Set no_more_rows = TRUE;

	/* 
		Now the Programing Logic
	*/
	
	-- 'Open' the cursor and capture the number or rows returned
	-- (the 'SELECT' gets INVOKEd when the cursor is 'opened')
				OPEN barang_cur;
					SELECT FOUND_ROWS() into num_rows;

				the_loop  : LOOP
		 
				FETCH barang_cur
						INTO scab, shrg, sbrg, shbeli, shpp, sprofit, sprofitnilai, sh1, sh2, sh3, sisi1, sisi2;
		 
				BEGIN
					DECLARE lfifotemp int;
					Declare newh3 DECIMAL(28,8);
					DECLARE newh2 DECIMAL(28,8);
					DECLARE newh1 DECIMAL(28,8);
					DECLARE newnilai DECIMAL(28,8);
					DECLARE newprofit DECIMAL(28,8);
					Declare newhpp DECIMAL(28,8);
					
					DECLARE snewhpp DECIMAL(28,8);
					DECLARE snewhbeli DECIMAL(28,8);

					SET snewhbeli =(SELECT hbeli FROM svinmhrgbeli where brg=sbrg);
					SET snewhpp   =(SELECT hpp From svinmhrgbeli where brg=sbrg);

					Set lfifotemp =(SELECT COUNT(lfifoaveg) from svlmpsys WHERE lfifoaveg=sysparam);
					if lfifotemp <> 0 THEN	
						Set newhpp = snewhbeli;
					ELSE
						Set newhpp = snewhpp;
					end if;

					-- Fifo 			
						 if jproses = '0' THEN -- Berdasarkan Nilai
								if kdari = '0' THEN -- Berdasarkan Hpp
									SET newprofit = 0;
									SET newnilai = nilai;							
									Set newh3 = newhpp + newnilai;
									SET newh2 = newh3 * sisi2;
									SET newh1 = newh2 * sisi1;
									UPDATE svarmhjbrg SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
									WHERE brg=sbrg and cab=scab;
									-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
								ELSE
									-- berdasarkan HJual3
									SET newprofit = sprofit;
									SET newnilai 	= sprofitnilai;							
									Set newh3 		= sh3 + nilai;
									SET newh2 		= newh3 * sisi2;
									SET newh1 		= newh2 * sisi1;
									UPDATE svarmhjbrg SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
									WHERE brg=sbrg and cab=scab;
								END IF;
						 ELSE
								-- Berdasarkan Prosentase 
								if kdari = '0' THEN -- HPP
									SET newprofit = persentase;
									SET newnilai = (newhpp * newprofit)/100;							
									Set newh3 = shbeli + newnilai;
									SET newh2 = newh3 * sisi2;
									SET newh1 = newh2 * sisi1;
									UPDATE svarmhjbrg SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
									WHERE brg=sbrg and cab=scab;
									-- SELECT scab, shrg, sbrg, shbeli, newprofit, newnilai, newh1, newh2, newh3;									 						
								ELSE
									-- HJual;									 						
									SET newprofit = sprofit;
									SET newnilai 	= sprofitnilai;							
									Set newh3 		= sh3 * (100 + persentase)/100;
									SET newh2 		= newh3 * sisi2;
									SET newh1 		= newh2 * sisi1;
									UPDATE svarmhjbrg SET Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, TglU=NOW()
									WHERE brg=sbrg and cab=scab;
								END IF;																					
						 END if;
					-- END if;
					IF no_more_rows THEN
						CLOSE barang_cur;
						LEAVE the_loop;
					END IF;
				 END;


		-- break out of the loop IF
			-- 1) there were no records, or
			-- 2) we've processed them ALL

		 

		-- the equivalent of a 'Print statement' in a stored PROCEDURE
		-- it simply display output for each LOOP
			
		
		-- Count the number of times looped
				SET loop_cntr = loop_cntr + 1;

				END loop the_loop;
		
		-- 'Print' the output so we can see they are the same
				Select num_rows, loop_cntr;
			END;
		End if;		
  	END IF; 
	
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_proses_load_Hpp_Jual`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_proses_load_Hpp_Jual`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_proses_load_Hpp_Jual`(in hrgtemp varchar(10), in sysparam varchar(10), in ID_ varchar(10))
BEGIN
	DECLARE scab VARCHAR(255);
	DECLARE shrg VARCHAR(255);
	DECLARE sbrg VARCHAR(255);
	DECLARE shpp DECIMAL(28,8);
	DECLARE sprofit DECIMAL(28,8);
	DECLARE sprofitnilai DECIMAL(28,8);
	DECLARE sh1 DECIMAL(28,8);
	DECLARE sh2 DECIMAL(28,8);
	DECLARE sh3 DECIMAL(28,8);
	DECLARE sisi1 DECIMAL(15,8);
	DECLARE sisi2 DECIMAL(15,8);
	DECLARE	shbeli DECIMAL(28,8);

	DECLARE no_more_rows boolean;
	DECLARE loop_cntr int DEFAULT 0;
	DECLARE num_rows int DEFAULT 0;

	DECLARE barang_cur CURSOR FOR	
		
				SELECT M.CabID, M.HrgID, m.BrgID, b.hbeli, m.Hpp, m.Profit, m.Profitnilai, m.H1, m.H2, m.H3
				FROM inbaranghjual M Inner Join inbaranghbeli b on m.brgID = b.brgID where M.HrgID=hrgtemp
		UNION
				select m.cabID, H.HRGID, m.BrgID as BRG, m.hbeli, m.Hpp, 0 as profit, 0 as profitnilai, 0 as hjual1, 0 as hjual2, 0 as hjual3 
				from inbaranghbeli m Cross JOIN pxharga as H where m.BrgID not in
				(select BRGID from inbaranghjual order by m.BRGID) and H.HrgID = hrgtemp; 

  DECLARE CONTINUE HANDLER FOR NOT FOUND
		Set no_more_rows = TRUE;

	OPEN barang_cur;
		 SELECT FOUND_ROWS() into num_rows;

	the_loop  : LOOP
		 
	FETCH barang_cur
		INTO scab, shrg, sbrg, shbeli, shpp, sprofit, sprofitnilai, sh1, sh2, sh3;
	
	BEGIN

		DECLARE lfifotemp int;
		Declare newh3 DECIMAL(28,8);
		DECLARE newh2 DECIMAL(28,8);
		DECLARE newh1 DECIMAL(28,8);
		DECLARE newnilai DECIMAL(28,8);
		DECLARE newprofit DECIMAL(28,8);
		Declare newhpp DECIMAL(28,8);
		DECLARE snewhpp DECIMAL(28,8);
		DECLARE snewhbeli DECIMAL(28,8);

		SELECT hpp, hbeli into snewhpp, snewhbeli From inbaranghbeli where brgID=sbrg;

		Set lfifotemp =(SELECT Metode from pxsystem WHERE Metode=sysparam);
		Select ISi1, Isi2 Into sisi1, sisi2 from inbarang where BrgID = sbrg;
		if lfifotemp <> 1 THEN	
				Set newhpp = shbeli;
		ELSE
				Set newhpp = shpp;
		end if;
		
		SET newprofit = sprofit;
		IF sprofit <> '0' THEN
			SET newnilai = (newhpp * newprofit)/100;							
		ELSE
			SET newnilai = sprofitnilai;							
		END IF;
		Set newh3 = newhpp + newnilai;
		SET newh2 = newh3 * sisi2;
		SET newh1 = newh2 * sisi1;
		
		UPDATE inbaranghjual SET  Hpp=newhpp, profit=newprofit, profitnilai= newnilai, h1=newh1, h2=newh2, h3=newh3, Modify_Tgl=NOW(), Modify_id=ID_
		WHERE brgID=sbrg and cabID=scab and hrgID=shrg;
		
		IF no_more_rows THEN
					CLOSE barang_cur;

		LEAVE the_loop;
		END IF;
    END;
		
    SET loop_cntr = loop_cntr + 1;
  	END loop the_loop;
		Select num_rows, loop_cntr;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_stock`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_stock`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_stock`(IN BrgID_ varchar(30), IN GdgID_ Varchar(10), In Qty_ decimal(18,8), in QtyOld_ Decimal(18,8))
BEGIN
			-- 27 Juni 2013
      -- Created By Afes Oktavianus
			-- Tujuan Untuk menambah atau mengurangi posisi Stock di table inbarangstock 
			DECLARE Brg_ SMALLINT;
			declare d1oldsaldotemp decimal(18,8);
			declare QMTemp decimal(18,8); 			
			Select IFNULL(1,'0') INTO Brg_ From inbarangstock where BrgID IN (SELECT BRGID FROM inbarangStock where brgid=brgID_ and gdgid=gdgID_);
			if ISNULL(brg_) then set Brg_ = 0; END if;
		  IF Brg_ = 0 THEN
				 Insert into inbarangStock(brgid, Qty, gdgid) VALUES(brgid_, qty_, gdgid_);
			ELSE				 				 
				 set d1oldsaldotemp=(Select qty from inbarangStock where brgid=brgid_ and gdgid=gdgid_);
				 set QMTemp =  (d1oldsaldotemp - QtyOld_) + qty_;
				 -- signal sqlstate '45000' set message_text = d1oldsaldotemp;
				 UPDATE inbarangStock set qty= QMtemp where brgid=BrgID_ and gdgid=gdgId_;
			End IF;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_temp_mutasi_hutang`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_temp_mutasi_hutang`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_temp_mutasi_hutang`(IN SupIDAwal_ Varchar(10), IN SupIDAkhir_ Varchar(10), IN CabIDAwal_ Varchar(5), IN CabIDAkhir_ Varchar(5), IN ValIDAwal_ Varchar(5), IN ValIDAkhir_ Varchar(5), IN ThnAwal_ Integer, IN ThnAkhir_ Integer)
BEGIN	
  # Create by Afes 
  # Tgl 25 Agustus 2013
  # Tujuan untuk menampilkan informasi Hutang
  DECLARE done_ Int DEFAULT 0;
  Declare IN_ DECIMAL(18,8);
  DECLARE Out_ DECIMAL(18,8);
  DECLARE First_ DECIMAL(18,8);
  DECLARE Last_ DECIMAL(18,8);
  DECLARE supID_ VARCHAR(30);  
  DECLARE ValID_ VARCHAR(5);
  DECLARE NM_Sup_ VARCHAR(50);
  DECLARE Thn_ INTEGER;
	DECLARE NM_Val_ VARCHAR(50);

  Declare hutang_Curs CURSOR FOR
		 SELECT M.SupID, S.Nama, M.ValID, V.KETERANGAN, M.Thn,
		 IFNull(M.Awal+M.Umuka+M.Giro,0) AS Awal_, IFNull(M.D1+M.D2+M.D3+M.D4+M.D5+M.D6+M.D7+M.D8+M.D9+M.D10+M.D11+M.D12,0) AS IN_,
		 IFNUll(M.K1+M.K2+M.K3+M.K4+M.K5+M.K6+M.K7+M.K8+M.K9+M.K10+M.K11+M.K12,0) AS Out_,
		 IFNUll(((M.Awal+M.Umuka+M.Giro)+(M.D1+M.D2+M.D3+M.D4+M.D5+M.D6+M.D7+M.D8+M.D9+M.D10+M.D11+M.D12)) - (M.K1+M.K2+M.K3+M.K4+M.K5+M.K6+M.K7+M.K8+M.K9+M.K10+M.K11+M.K12),0) AS Akhir_
		 FROM apmutasihutang AS M
		 INNER JOIN apsupplier AS S ON M.SupID = S.SUPID AND M.CabID = S.CabID
		 INNER JOIN pxvaluta AS V ON M.ValID = V.VALID
		 WHERE V.Status_ = 'AP' And M.SUPID BETWEEN SupIDAwal_ And SupIDAkhir_ 
     And M.CabID BETWEEN CabIDAwal_ And CabIDAkhir_ And M.ValID BETWEEN ValIDAwal_ and ValIDAkhir_
     And M.Thn BETWEEN ThnAwal_ and ThnAkhir_ ORDER BY M.SupID ASC, M.Thn ASC, M.ValID ASC;	
     
  DECLARE CONTINUE HANDLER FOR Not FOUND SET done_ = 1;

  -- Buat table temp_stock jika belum ada
  create TABLE IF Not EXISTS temp_hutang (
     supID varchar(30),     
		 valID varchar(5),
		 Thn   INTEGER,
     First_ DECIMAL(18,8), 
     IN_ 	 DECIMAL(18,8),
     Out_  DECIMAL(18,8),
     Last_ DECIMAL(18,8),
     NM_Sup VARCHAR(50),     
     Nm_val VARCHAR(50) 
  );
  -- Hapus data lama di table temp_stock
  DELETE From temp_hutang;
  
  OPEN hutang_Curs;
  hist_loop : LOOP

  FETCH hutang_Curs INTO supID_, NM_Sup_, ValID_, NM_Val_, Thn_, First_, IN_, Out_, Last_;

  -- Jika tidak ada isi lagi
  If done_ = 1 THEN
    LEAVE hist_loop;
  End IF;
  
  -- Isi hasil kedalam table temp_stock
  INSERT INTO temp_hutang (supID, ValID, Thn, First_, IN_, Out_, Last_, NM_Sup, NM_Val)
			VALUES (supID_, ValID_, Thn_, First_, IN_, Out_, Last_, NM_Sup_, NM_Val_);
  
  End LOOP hist_loop;
  Close hutang_Curs;
  
  SELECT * From temp_Hutang;
  Drop Table temp_Hutang;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_temp_mutasi_stock`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_temp_mutasi_stock`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_temp_mutasi_stock`(In BrgIDAwal_ varchar(30), In BrgIDAkhir_ varchar(30), In GdgId_ varchar(5), In Tgl date)
BEGIN
	#Routine body goes here...
  DECLARE done_ Int DEFAULT 0;
  Declare IN_ DECIMAL(18,8);
  DECLARE Out_ DECIMAL(18,8);
  DECLARE First_ DECIMAL(18,8);
  DECLARE Last_ DECIMAL(18,8);
  DECLARE brg_ VARCHAR(30);
  DECLARE GDG_ VARCHAR(5);
  DECLARE NM_Gdg_ VARCHAR(50);
  DECLARE NM_Brg_ VARCHAR(50);

  Declare stock_Curs CURSOR FOR
     Select inbarangmutasi.BrgId, inbarangmutasi.GdgID, QAwal, (QM1+QM2+QM3+QM4+QM5+QM6+QM7+QM8+QM9+QM10+QM11+QM12) as IN_,
     (QK1+QK2+QK3+QK4+QK5+QK6+QK7+QK8+QK9+QK10+QK11+QK12) as Out_, QAkhir, B.Nama1, G.Keterangan
     From inbarangmutasi inner JOIN inbarang B on inbarangmutasi.BRGID = B.BRGID 
     INNER JOIN pxgudang G on inbarangmutasi.GDGID = g.GdgID WHERE
     inbarangmutasi.BRGID BETWEEN BrgIDAwal_ and BRGIDAkhir_ and inbarangmutasi.GdgID = GDGID_ and THN = YEAR(Tgl);
  
  DECLARE CONTINUE HANDLER FOR Not FOUND SET done_ = 1;

  -- Buat table temp_stock jika belum ada
  create TABLE IF Not EXISTS temp_stock (
     BrgID varchar(30),
     GdgID varchar(10),
     First_ DECIMAL(18,8), 
     IN_ 	 DECIMAL(18,8),
     Out_  DECIMAL(18,8),
     Last_ DECIMAL(18,8),
     NM_Brg VARCHAR(50),
     NM_Gdg VARCHAR(50)
  );
  -- Hapus data lama di table temp_stock
  DELETE From temp_stock;
  
  OPEN stock_Curs;
  hist_loop : LOOP

  FETCH stock_Curs INTO brg_, GDG_, First_, IN_, Out_, Last_, NM_Brg_, NM_Gdg_;

  -- Jika tidak ada isi lagi
  If done_ = 1 THEN
    LEAVE hist_loop;
  End IF;
  
  -- Isi hasil kedalam table temp_stock
  INSERT INTO temp_stock (brgID, GdgID, First_, IN_, Out_, Last_, NM_Brg, NM_Gdg)
			VALUES (brg_, GDG_, First_, IN_, Out_, Last_, NM_Brg_, NM_Gdg_);
  
  End LOOP hist_loop;
  Close stock_Curs;
  
  SELECT * From temp_Stock;
  Drop Table temp_stock;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `sp_update_lacc_opname`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_update_lacc_opname`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_update_lacc_opname`(IN BrgID_ varchar(30), in GdgID_ varchar(10), in cabId_ varchar(10), in Posisi_ datetime, In ID_ varchar(10), in stat_ char(1))
BEGIN
	#Routine body goes here...
  DECLARE LACCSO_ Char(1);
  Declare msg varchar(1000);
  Select LACC_SO into LACCSO_ From pxgroupuser Where GroupID IN (Select Groupuser From pxuser WHERE UserID= ID_);
	IF LACCSO_ = 'N' THEN
	Set msg = CONCAT('
Anda tidak berhak untuk melakukan ACC SO, Silahkan hubungi Supervisor anda');
       Signal sqlstate '45000' set message_text = msg;

  ELSE
		if stat_ = 'F' THEN
			update inbarangopname set lacc = 'T', Create_IdAcc =ID_, Create_TglAcc=NOW()
			WHERE BRGID =BrgID_ and GDGID =GDGID_ and CabID =CabID_ ;
		ELSE
			update inbarangopname set lacc = 'F', Create_IdAcc =ID_, Create_TglAcc=NOW()
			WHERE BRGID =BrgID_ and GDGID =GDGID_ and CabID =CabID_; 
		End IF;
	End IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `PX_Find_Hutang_Supplier`
-- ----------------------------
DROP FUNCTION IF EXISTS `PX_Find_Hutang_Supplier`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `PX_Find_Hutang_Supplier`(`SuppID_` varchar(10),`ValID_` varchar(5)) RETURNS int(28)
BEGIN
	#Routine body goes here...
	DECLARE Hutang_ NUMERIC(28,8);
	Select Hutang into Hutang_ From apposisihutang where supid=SuppID_ and Valid=Valid_;
	RETURN Hutang_;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for `PX_Find_Stock_Gudang`
-- ----------------------------
DROP FUNCTION IF EXISTS `PX_Find_Stock_Gudang`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `PX_Find_Stock_Gudang`(`BRGID_` varchar(30)) RETURNS decimal(18,8)
BEGIN
	# Create by Afes
	# 31 Agustus 2013
	# Tujuan untuk mengetahui Posisi Stock berdasarkan Gudang 
	DECLARE qty_ numeric(18,8);
	
	Select IFNULL(Sum(Qty),0)  into Qty_ from inbarangstock where BRGID=BrgID_;
	
	RETURN qty_;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Insert_APNoUrut`;
DELIMITER ;;
CREATE TRIGGER `b4Insert_APNoUrut` BEFORE INSERT ON `apnourut` FOR EACH ROW Begin
   Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Edit_APNoUrut`;
DELIMITER ;;
CREATE TRIGGER `b4Edit_APNoUrut` BEFORE UPDATE ON `apnourut` FOR EACH ROW Begin
   Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Insert_apNoUrutketerangan`;
DELIMITER ;;
CREATE TRIGGER `b4Insert_apNoUrutketerangan` BEFORE INSERT ON `apnourutketerangan` FOR EACH ROW Begin
   Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Edit_apNoUrutketerangan`;
DELIMITER ;;
CREATE TRIGGER `b4Edit_apNoUrutketerangan` BEFORE UPDATE ON `apnourutketerangan` FOR EACH ROW Begin
   Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Ins_TglU_AwalHutang`;
DELIMITER ;;
CREATE TRIGGER `b4Ins_TglU_AwalHutang` BEFORE INSERT ON `apsaldoawalhutang` FOR EACH ROW Begin
      Set new.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `AftIns_AwalHutang`;
DELIMITER ;;
CREATE TRIGGER `AftIns_AwalHutang` AFTER INSERT ON `apsaldoawalhutang` FOR EACH ROW Begin
     # Create Trigger By Afes
     # Tgl 23 Agustus 2013
     # Insert Kartu Hutang
     Call Sp_KartuHutang(new.NoBeli,New.SupID, New.Tgl,New.Saldo,New.Val, New.Tukar,New.CabID, New.Ket, New.Nomor, 0, 0);
     # Insert Mutasi Hutang
     Call Sp_MutasiHutang(new.Tgl, new.supID, new.CabId, new.val, new.saldo, 0, 0); 
     # Insert Posisi Hutang
     Call Sp_posisiHutang(new.SupId, new.Val, 0, new.Saldo, 0);
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Upd_TglU_AwalHutang`;
DELIMITER ;;
CREATE TRIGGER `b4Upd_TglU_AwalHutang` BEFORE UPDATE ON `apsaldoawalhutang` FOR EACH ROW Begin
      Declare msg varchar(255);
      Set New.TglU = Now();     
     IF old.LAcc = 'T' Then
         Set Msg =Concat('
Maaf Saldo Hutang Sudah diAcc');
         Signal SQLState '45000' set Message_Text =msg;
     End If;          


End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `aftUpd_AwalHutang`;
DELIMITER ;;
CREATE TRIGGER `aftUpd_AwalHutang` AFTER UPDATE ON `apsaldoawalhutang` FOR EACH ROW Begin
     # Create Trigger By Afes
     # Tgl 23 Agustus 2013
     # Insert Kartu Hutang
     Call Sp_KartuHutang(new.NoBeli,New.SupID, New.Tgl,New.Saldo,New.Val, New.Tukar,New.CabID, New.Ket, New.Nomor, old.saldo, 0);
     # Insert Mutasi Hutang
     Call Sp_MutasiHutang(new.Tgl, new.supID, new.CabId, new.val, new.saldo, 0, old.saldo); 
     # Insert Posisi Hutang
     Call Sp_posisiHutang(new.SupId, new.Val, 0, new.Saldo, old.Saldo);
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Del_AwalHutang`;
DELIMITER ;;
CREATE TRIGGER `b4Del_AwalHutang` BEFORE DELETE ON `apsaldoawalhutang` FOR EACH ROW Begin
     # Create Trigger By Afes
     # Tgl 23 Agustus 2013
     
     Declare msg varchar(255);
     IF old.LAcc = 'T' Then
         Set Msg =Concat('
Maaf Saldo Hutang Sudah diAcc');
         Signal SQLState '45000' set Message_Text =msg;

     End If;          
     # Insert Kartu Hutang
     Call Sp_KartuHutang(old.NoBeli,old.SupID, old.Tgl,0,old.Val, old.Tukar,old.CabID, old.Ket, old.Nomor, old.saldo, 0);    
     # Insert Mutasi Hutang
     Call Sp_MutasiHutang(old.Tgl, old.supID, old.CabId, old.val, 0, 0, old.saldo);      
     # Insert Posisi Hutang
     Call Sp_posisiHutang(old.SupId, old.Val, 0, 0, old.Saldo);
     #Signal SQLState '45000' set Message_Text ='test';
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertSupplier`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertSupplier` BEFORE INSERT ON `apsupplier` FOR EACH ROW Begin
Set New.TglU = Now();
Set NEW.CabID = (Select CABID From PXSystem);
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditSupplier`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditSupplier` BEFORE UPDATE ON `apsupplier` FOR EACH ROW Begin
Set New.TglU = Now();
Set NEW.CabID = (Select CABID From PXSystem);
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertContact`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertContact` BEFORE INSERT ON `apsuppliercontact` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditContact`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditContact` BEFORE UPDATE ON `apsuppliercontact` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Insert_ARNoUrut`;
DELIMITER ;;
CREATE TRIGGER `b4Insert_ARNoUrut` BEFORE INSERT ON `arnourut` FOR EACH ROW Begin
   Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Edit_ARNoUrut`;
DELIMITER ;;
CREATE TRIGGER `b4Edit_ARNoUrut` BEFORE UPDATE ON `arnourut` FOR EACH ROW Begin
   Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Insert_arNoUrutketerangan`;
DELIMITER ;;
CREATE TRIGGER `b4Insert_arNoUrutketerangan` BEFORE INSERT ON `arnourutketerangan` FOR EACH ROW Begin
   Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Edit_arNoUrutketerangan`;
DELIMITER ;;
CREATE TRIGGER `b4Edit_arNoUrutketerangan` BEFORE UPDATE ON `arnourutketerangan` FOR EACH ROW Begin
   Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertBarang`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertBarang` BEFORE INSERT ON `inbarang` FOR EACH ROW Begin
  
  Set New.TglU = Now();

End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `After_InsertBarang`;
DELIMITER ;;
CREATE TRIGGER `After_InsertBarang` AFTER INSERT ON `inbarang` FOR EACH ROW Begin
        Declare Metode_ smallint; 
        Declare Hrg_ varchar(5); 
        Declare Profit_ decimal(18,8);
        Declare profitNilai_ decimal(28,8);
        Declare HitProfit_ smallint;
        Declare NewHjual3 decimal(28,8);
        Declare NewHjual2 decimal(28,8);
        Declare NewHjual1 decimal(28,8);
        Declare GDGID_ varchar(5);
        Declare CABID_ varchar(5);
        Declare HrgID_ varchar(10);

       Set GDGID_  = (Select GDGID From pxsystem);
       Set CABID_  = (Select CABID From pxsystem);
       Set HrgID_   =  (Select HRGID From pxsystem);
     
        -- Insert kedalam table INBarangGudang untuk pengaturan Min dan Max Per Gudang berdasarkan Gudang Utama dan Cabang Utama, Jika Nilai Min dan Max tidak dibawah = 0
        If (New.Mini > 0) Or (New.Maxi > 0) Then
            Insert Into INBarangGudang(BrgID,GDGID, CABID, MIN, MAX) Values (New.BrgId, GDGID_, CABID_, New.Mini, New.Maxi);
        End IF;                  

         -- Insert kedalam table INBarangGudangRak untuk pengaturan Rak/Lokasi Gudang berdasarkan Gudang Utama dan Cabang Utama, Jika Rak <> '' atau Null
        If (New.lks <> '') or (Not ISNull(New.lks)) Then
            Insert Into INBarangGudangRak(BrgID,GDGID, CABID, RakID) Values (New.BrgId, GDGID_, CABID_, New.lks);
        End IF;            
       

         -- Insert kedalam table INBarangHBeli untuk pengaturan Harga Beli Pertama ataupun Hpp berdasarkan Cabang Utama, Jika HBeli <= 0 
         -- Melakukan Pengecekan untuk penggunaan metode di table PXSystem apakah Fifo atau Average yang digunakan
        Set Metode_ = (Select Metode From PXSystem Where ConfigID ='1');
        If New.Hbeli > 0 Then
            Insert Into INBarangHbeli(BrgID, CABID, Hbeli, Hpp) Values (New.BrgId, CABID_, New.Hbeli, Metode_);  
        End If;     
       
        -- Insert kedalam table INBarangHJual untuk pengaturan Harga Jual Pertama kali 
        -- Melakukan Pengecekan untuk penggunaan Hrg Utama yang digunakan di table PXSystem 
        -- Kemudian setelah mendapatkan Hrg utama, nilai dari profit dan profit nilai di isi dari table PXHarga
        -- Khusus profit jika ada nilainya > 0 maka nilai profit nilai di isi dari perhitungan profit dikalikan hpp        
        If (New.HJual1 > 0) or (New.HJual2 > 0) or (New.Hjual3 > 0)Then
            Set Profit_ = (Select Presen_ From PxHarga Where HrgID = Hrg_);            
            If Profit_ > 0 Then
                  Set ProfitNilai_ =(((100 + Profit_) / 100 * New.Hbeli) - New.Hbeli);
            Else
                 -- Ambil profit nilai yang bukan prosentase
                 Set ProfitNilai_   = (Select Presen_Nilai From PxHarga Where HrgID = HrgID_);
                 If ProfitNilai_ > 0 Then
                       Set Profit_ = ((ProfitNilai_ /  new.Hbeli) * 100);
                 Else
                    Set Profit_ = 0;
                    Set ProfitNilai_ = 0;
                 End If;
            End IF;
            -- Cari Nilai Hitung Profit Di PXSystem
            Select Count(Profit_) into hitProfit_ From pxsystem where ConfigID = '1';            
            If HitProfit_ = 1 Then
               Set NewHjual3 = (New.HJual3 + ProfitNilai_);
               Set NewHJual2 = ( NewHjual3 * new.isi2);
               Set NewHjual1 = (NewHjual2 * New.Isi1);
            Else 
               Set NewHjual3 = New.HJual3;
               Set NewHJual2 = NewHjual2;
               Set NewHjual1 = NewHjual1;
            End IF;
            Insert Into INBarangHJual(BrgID, CABID, HRGID, Profit, ProfitNilai, H1, H2, H3, Create_Tgl) Values (New.BrgId, CABID_, Hrg_,Profit_, ProfitNilai_, NewHJual1, NewHjual2, NewHjual3, Now());  
        End If;
        # signal sqlstate '45000' set message_text = new.brgID;   

        -- Insert kedalam table INBarangGambar untuk pengaturan gambar per kode barang        
        Insert Into INBarangGambar(BrgID) Values (New.BrgId);
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4UpdateBarang`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4UpdateBarang` BEFORE UPDATE ON `inbarang` FOR EACH ROW Begin
  Set New.TglU = Now();  
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `After_EditBarang`;
DELIMITER ;;
CREATE TRIGGER `After_EditBarang` AFTER UPDATE ON `inbarang` FOR EACH ROW Begin
        Declare GDGID_ varchar(5);
        Declare CABID_ varchar(5);

       Set GDGID_  = (Select GDGID From pxsystem);
       Set CABID_  = (Select CABID From pxsystem);

       -- Untuk melakukan perubahan harus dilakukan pengecekan untuk nilai lama dan baru terutama untuk table-table yang terrelasi
       -- Table INBarangGudang  
       IF (old.mini <> new.mini) or (old.maxi <> new.maxi) Then      
            Update INBarangGudang Set Min = new.mini, max = new.maxi where BrgId = old.BrgId and 
            GDGID =GDGID_  and 
            CabId =  CABID_;
       End IF; 
       -- Table INBarangGudangRak
       IF old.lks <> new.lks Then
            Update INBarangGudangRak Set RakId = new.lks where BrgId = old.BrgId and 
            GDGID =GDGID_  and 
            CabId =  CABID_;
       End IF;
       -- Table INBarangHbeli
       IF (old.Hbeli <> new.Hbeli) Then
            Update INBarangHbeli Set Hbeli = new.Hbeli, Hpp = new.Hpp where BrgId = old.BrgId and             
            CabId =  CABID_;
       End IF;
       -- Table INBarangHJual
      IF (Old.Hjual1 <> new.HJual1) or (Old.Hjual2 <> new.HJual2) or (Old.Hjual3 <> new.HJual3) Then
          Update  INBarangHjual Set H1 = new.HJual1, H2 = New.HJUal2,  H3 = New.HJual3 Where BrgID = old.BrgID and 
          CabId = CABID_;  
      End IF;
      # signal sqlstate '45000' set message_text = new.brgID;
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Be4Delete_BRG`;
DELIMITER ;;
CREATE TRIGGER `Be4Delete_BRG` BEFORE DELETE ON `inbarang` FOR EACH ROW Begin
       Declare BRGID_ smallint;       
       -- Untuk melakukan pengecekan ke table INBarangGudang
       Set BrgID_ = (Select Count(Distinct BRGID)  From INBarangGudang Where BrgID=old.BrgID);
       IF BrgID_  = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Barang telah digunakan sebagai Transaksi Untuk Pengaturan Min Dan Max Per Gudang';    
       End IF;
       Set BrgID_ = 0;

       -- Untuk melakukan pengecekan ke table INBarangHBeli
       Set BrgID_ = (Select Count(Distinct BRGID)  From INBarangHbeli Where BrgID=old.BrgID);
       IF BrgID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Gudang telah digunakan sebagai Transaksi untuk pengaturan Harga Beli';    
       End IF;
       Set BrgID_ = 0;

       -- Untuk melakukan pengecekan ke table INBarangHJual
       Set BrgID_ = (Select Count(Distinct BrgID)  From INBarangHJual Where BrgID=old.BrgID);
       IF BrgID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Gudang telah digunakan sebagai Transaksi untuk Harga Jual';    
       End IF;
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertGambar`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertGambar` BEFORE INSERT ON `inbaranggambar` FOR EACH ROW Begin
  Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditGambar`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditGambar` BEFORE UPDATE ON `inbaranggambar` FOR EACH ROW Begin
  Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertBrgGudang`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertBrgGudang` BEFORE INSERT ON `inbaranggudang` FOR EACH ROW Begin
  Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditBrgGudang`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditBrgGudang` BEFORE UPDATE ON `inbaranggudang` FOR EACH ROW Begin
  Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertBrgRak`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertBrgRak` BEFORE INSERT ON `inbaranggudangrak` FOR EACH ROW Begin
  Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditBrgRak`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditBrgRak` BEFORE UPDATE ON `inbaranggudangrak` FOR EACH ROW Begin
  Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertHBeli`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertHBeli` BEFORE INSERT ON `inbaranghbeli` FOR EACH ROW Begin
  Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditHBeli`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditHBeli` BEFORE UPDATE ON `inbaranghbeli` FOR EACH ROW Begin
  Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `aftinsert_opname`;
DELIMITER ;;
CREATE TRIGGER `aftinsert_opname` AFTER INSERT ON `inbarangopname` FOR EACH ROW begin

  Declare kodetran varchar(10);
  Set kodetran=(Select Jtran from pxkode where jtran='SO'); 
  -- Tambah Fifo
  Call sp_fifo(new.gdgId, new.brgID, new.cabID, new.Posisi, new.hpokok, new.stn, new.Qty, 0, new.create_ID, kodetran);
  -- Tambah kartu stock
  Call sp_kartustock(new.brgID, new.gdgId,  new.Qty, new.qty,new.Posisi, new.bukti, new.cabid, new.nstn, new.create_ID, new.hpokok, new.nomor, kodetran);
  -- Tambah Mutasi Stock
 Call sp_mutasistock (new.brgID, new.gdgID, new.cabid, new.Posisi, new.hpokok, 0, 0, new.qty, 0);
  -- Tambah Stock 
 Call sp_stock (new.brgID, new.gdgID, new.qty,0);

end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Update_Opname_lacc`;
DELIMITER ;;
CREATE TRIGGER `b4Update_Opname_lacc` BEFORE UPDATE ON `inbarangopname` FOR EACH ROW begin
       Declare msg varchar(1000);
       if old.lacc = 'T' Then
       Set msg = CONCAT('
Data Di ACC, Anda tidak berhak untuk merubah silahkan hubungi Supervisor anda');
       Signal sqlstate '01000' set message_text = msg;

       end if;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `aftUpdate_opname`;
DELIMITER ;;
CREATE TRIGGER `aftUpdate_opname` AFTER UPDATE ON `inbarangopname` FOR EACH ROW Begin
  Declare kodetran varchar(10);
  Set kodetran=(Select Jtran from pxkode where jtran='SO'); 
  -- Tambah Fifo
  Call sp_fifo(new.gdgId, new.brgID, new.cabID, new.Posisi, new.hpokok, new.stn, new.Qty, old.qty, new.create_ID, kodetran);
  -- Tambah kartu stock
  Call sp_kartustock(new.brgID, new.gdgId,  new.Qty, old.qty,new.Posisi,old.bukti, new.cabid, new.nstn,new.modify_ID, new.hpokok, new.nomor, kodetran);
  -- Tambah Mutasi Stock
  Call sp_mutasistock (new.brgID, new.gdgID, new.cabid, new.Posisi, new.hpokok, 0, old.hpokok, new.qty, old.qty);
  -- Tambah Stock 
  Call sp_stock (new.brgID, new.gdgID, new.qty,old.qty);
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Delete_Opname`;
DELIMITER ;;
CREATE TRIGGER `b4Delete_Opname` BEFORE DELETE ON `inbarangopname` FOR EACH ROW Begin
       Declare msg varchar(1000);
       if old.lacc = 'T' Then
       Set msg = CONCAT('
Data Di ACC, Anda tidak berhak untuk merubah silahkan hubungi Supervisor anda');
       Signal sqlstate '45000' set message_text = msg;

       end if;
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `aftDelete_opname`;
DELIMITER ;;
CREATE TRIGGER `aftDelete_opname` AFTER DELETE ON `inbarangopname` FOR EACH ROW Begin
     Declare kodetran varchar(10);
     Set kodetran=(Select Jtran from pxkode where jtran='SO'); 
     -- Tambah Fifo
     Call sp_fifo(old.gdgId, old.brgID, old.cabID, old.Posisi, 0, old.stn, 0, old.qty, old.create_ID, kodetran);
     -- Tambah kartu stock
     Call sp_kartustock(old.brgID, old.gdgId,  0, old.qty,old.Posisi,old.bukti, old.cabid, old.nstn,old.modify_ID, old.hpokok, old.nomor, kodetran);
     -- Tambah Mutasi Stock
     Call sp_mutasistock (old.brgID, old.gdgID, old.cabid, old.Posisi, 0, 0, old.hpokok, 0, old.qty);
     -- Tambah Stock 
     Call sp_stock (old.brgId, old.gdgID, 0,old.qty);

end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertBrgGudang_copy`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertBrgGudang_copy` BEFORE INSERT ON `inhisbaranggudang` FOR EACH ROW Begin
  Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditBrgGudang_copy`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditBrgGudang_copy` BEFORE UPDATE ON `inhisbaranggudang` FOR EACH ROW Begin
  Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertBrgRak_copy`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertBrgRak_copy` BEFORE INSERT ON `inhisbaranggudangrak` FOR EACH ROW Begin
  Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditBrgRak_copy`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditBrgRak_copy` BEFORE UPDATE ON `inhisbaranggudangrak` FOR EACH ROW Begin
  Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertHBeli_copy`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertHBeli_copy` BEFORE INSERT ON `inhisbaranghbeli` FOR EACH ROW Begin
  Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditHBeli_copy`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditHBeli_copy` BEFORE UPDATE ON `inhisbaranghbeli` FOR EACH ROW Begin
  Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Insert_INNoUrut`;
DELIMITER ;;
CREATE TRIGGER `b4Insert_INNoUrut` BEFORE INSERT ON `innourut` FOR EACH ROW Begin
   Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Edit_INNoUrut`;
DELIMITER ;;
CREATE TRIGGER `b4Edit_INNoUrut` BEFORE UPDATE ON `innourut` FOR EACH ROW Begin
   Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Insert_inNoUrutketerangan`;
DELIMITER ;;
CREATE TRIGGER `b4Insert_inNoUrutketerangan` BEFORE INSERT ON `innourutketerangan` FOR EACH ROW Begin
   Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `b4Edit_inNoUrutketerangan`;
DELIMITER ;;
CREATE TRIGGER `b4Edit_inNoUrutketerangan` BEFORE UPDATE ON `innourutketerangan` FOR EACH ROW Begin
   Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertCabang`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertCabang` BEFORE INSERT ON `pxcabang` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditCabang`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditCabang` BEFORE UPDATE ON `pxcabang` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Be4DeleteCabang`;
DELIMITER ;;
CREATE TRIGGER `Be4DeleteCabang` BEFORE DELETE ON `pxcabang` FOR EACH ROW Begin
       Declare CbgID_ smallint;       
       -- Untuk melakukan pengecekan ke table PXSystem
       Set CbgID_ = (Select Count(Distinct CABID)  From pxcabang Where EXISTS(Select * From pxsystem where CABID = old.CABID));
       IF CbgID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Cabang telah digunakan sebagai default utama sistem';    
       End IF;
       Set CbgID_ = 0;
       -- Untuk melakukan pengecekan ke table INBarangGudang
       Set CbgID_ = (Select Count(Distinct CabID)  From pxCabang Where EXISTS(Select * From INBarangGudang where CABID = old.CABID));
       IF CbgID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Gudang telah digunakan sebagai Transaksi untuk pengaturan Min dan Max Per Gudang';    
       End IF;
       Set CbgID_ = 0;
       -- Untuk melakukan pengecekan ke table INBarangGudangRak
       Set CbgID_ = (Select Count(Distinct CabID)  From pxcabang Where EXISTS(Select * From INBarangGudangRak where CabID = old.CabID));
       IF CbgID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Gudang telah digunakan sebagai Transaksi untuk pengaturan Rak/Lokasi Per Gudang';    
       End IF;
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertGol`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertGol` BEFORE INSERT ON `pxgolongan` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4Edit`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4Edit` BEFORE UPDATE ON `pxgolongan` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Be4DeleteGolongan`;
DELIMITER ;;
CREATE TRIGGER `Be4DeleteGolongan` BEFORE DELETE ON `pxgolongan` FOR EACH ROW Begin
       Declare GolID_ smallint;       
       -- Untuk melakukan pengecekan ke table PXSystem
       Set GolID_ = (Select 1  From pxGolongan Where GOLID IN (Select GOLID From pxsystem where GolID = old.GolID));
       IF GolID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Golongan telah digunakan sebagai default utama sistem';    
       End IF;
       Set GolID_ = 0;
       -- Untuk melakukan pengecekan ke table INBarangGudang
       Set golID_ = (Select 1  From pxGolongan Where GOLID IN (Select Gol From INBarang where Gol = old.GolID));
       IF golID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Golongan telah digunakan sebagai Transaksi untuk pengaturan Item ';    
       End IF;
       Set golID_ = 0;       
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertGudang`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertGudang` BEFORE INSERT ON `pxgudang` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditGudang`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditGudang` BEFORE UPDATE ON `pxgudang` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Be4DeleteGdg`;
DELIMITER ;;
CREATE TRIGGER `Be4DeleteGdg` BEFORE DELETE ON `pxgudang` FOR EACH ROW Begin
       Declare GdgID_ smallint;       
       -- Untuk melakukan pengecekan ke table PXSystem
       Set GDGID_ = (Select 1  From pxgudang Where GDGID IN (Select GDGID From pxsystem where GDGID = old.GDGID));
       IF GdgID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Gudang telah digunakan sebagai default utama sistem';    
       End IF;
       Set GDGID_ = 0;
       -- Untuk melakukan pengecekan ke table INBarangGudang
       Set GDGID_ = (Select 1  From pxgudang Where GDGID IN (Select GDGID From INBarangGudang where GDGID = old.GDGID));
       IF GdgID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Gudang telah digunakan sebagai Transaksi untuk pengaturan Min dan Max Per Gudang';    
       End IF;
       Set GDGID_ = 0;
       -- Untuk melakukan pengecekan ke table INBarangGudangRak
       Set GDGID_ = (Select 1  From pxgudang Where GDGID IN (Select GDGID From INBarangGudangRak where GDGID = old.GDGID));
       IF GdgID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Gudang telah digunakan sebagai Transaksi untuk pengaturan Rak/Lokasi Per Gudang';    
       End IF;
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertHarga`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertHarga` BEFORE INSERT ON `pxharga` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditHarga`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditHarga` BEFORE UPDATE ON `pxharga` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Be4DeleteHarga`;
DELIMITER ;;
CREATE TRIGGER `Be4DeleteHarga` BEFORE DELETE ON `pxharga` FOR EACH ROW Begin
       Declare HargaID_ smallint;       
       -- Untuk melakukan pengecekan ke table PXSystem
       Set HargaID_ = (Select Count(Distinct HargaID)  From pxHarga Where EXISTS(Select * From pxsystem where HargaID = old.HrgID));
       IF HargaID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Harga telah digunakan sebagai default utama sistem';    
       End IF;
       Set HargaID_ = 0;
       -- Untuk melakukan pengecekan ke table INBarangGudang
       Set HargaID_ = (Select Count(Distinct HargaID)  From pxHarga Where EXISTS(Select * From INBarangHJual where HargaID = old.HrgID));
       IF HargaID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Harga telah digunakan sebagai Transaksi untuk pengaturan Harga Jual ';    
       End IF;
       Set HargaID_ = 0;       
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertJenis`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertJenis` BEFORE INSERT ON `pxjenis` FOR EACH ROW Begin
   Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditJenis`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditJenis` BEFORE UPDATE ON `pxjenis` FOR EACH ROW Begin
   Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Be4DeleteJenis`;
DELIMITER ;;
CREATE TRIGGER `Be4DeleteJenis` BEFORE DELETE ON `pxjenis` FOR EACH ROW Begin       
       -- Untuk melakukan pengecekan ke table INBarang
       Declare JNSID_ smallint;
       -- Untuk melakukan pengecekan ke table PXSystem
       Set JNSID_ = (Select 1  From pxJenis Where JENISID IN (Select JNSID From pxsystem where JNSID = old.JENISID));
       IF JNSID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data JENIS telah digunakan sebagai default utama sistem';    
       End IF;
       Set JNSID_ = 0;
       Set JNSID_ = (Select 1  From pxJenis Where JENISID IN (Select JENIS From INBarang where Jenis = old.JeNiSID));
       IF JNSID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Jenis telah digunakan sebagai Transaksi untuk pengaturan Item ';    
       End IF;
       Set JNSID_ = 0;       
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertKategori`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertKategori` BEFORE INSERT ON `pxkategori` FOR EACH ROW Begin
    Set New.tglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4UpdateKategori`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4UpdateKategori` BEFORE UPDATE ON `pxkategori` FOR EACH ROW Begin
    Set New.tglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4insert`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4insert` BEFORE INSERT ON `pxmerek` FOR EACH ROW Begin
    Set New.tglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4Update`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4Update` BEFORE UPDATE ON `pxmerek` FOR EACH ROW Begin
    Set New.tglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Be4DeleteMerek`;
DELIMITER ;;
CREATE TRIGGER `Be4DeleteMerek` BEFORE DELETE ON `pxmerek` FOR EACH ROW Begin
       Declare MerkID_ smallint;  
       Set MerkID_ = (Select 1  From pxMerek Where MrkID IN (Select MRKID From pxsystem where MRKID = old.MRKID));
       IF MerkID_= 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Merek telah digunakan sebagai default utama sistem';    
       End IF;
       Set MerkID_ = 0;     
       -- Untuk melakukan pengecekan ke table INBarangGudang
       Set MerkID_ = (Select 1  From pxMerek Where MRKID IN (Select Merek From INBarang where Merek = old.MrkID));
       IF MerkID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Merek telah digunakan sebagai Transaksi untuk pengaturan Item ';    
       End IF;
       Set MerkID_ = 0;
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertRak`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertRak` BEFORE INSERT ON `pxrak` FOR EACH ROW Begin
    Set New.tglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4DeleteRak`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4DeleteRak` BEFORE UPDATE ON `pxrak` FOR EACH ROW Begin
    Set New.tglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Be4DeleteRak`;
DELIMITER ;;
CREATE TRIGGER `Be4DeleteRak` BEFORE DELETE ON `pxrak` FOR EACH ROW Begin
        Declare LKSID_ smallint;       
       -- Untuk melakukan pengecekan ke table PXSystem
       Set LKSID_ = (Select 1  From pxRAK Where RAKID IN (Select LKS From inbaranggudangrak where Lks = old.RAKID));
       IF LKSID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data RAK/LOKASI telah digunakan sebagai Transaksi Pengaturan Item';    
       End IF;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertSize`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertSize` BEFORE INSERT ON `pxsize` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditSize`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditSize` BEFORE UPDATE ON `pxsize` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Be4DeleteSize`;
DELIMITER ;;
CREATE TRIGGER `Be4DeleteSize` BEFORE DELETE ON `pxsize` FOR EACH ROW Begin
        Declare SizeID_ smallint;       
       -- Untuk melakukan pengecekan ke table PXSystem
       Set SizeID_ = (Select Count(Distinct SIZEID)  From pxSize Where EXISTS(Select * From INBARANG where Size = old.SizeID));
       IF SizeID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Size telah digunakan sebagai Transaksi Pengaturan Item';    
       End IF;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertType`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertType` BEFORE INSERT ON `pxtype` FOR EACH ROW Begin
   Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditType`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditType` BEFORE UPDATE ON `pxtype` FOR EACH ROW Begin
   Set New.TglU = Now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Be4DeleteType`;
DELIMITER ;;
CREATE TRIGGER `Be4DeleteType` BEFORE DELETE ON `pxtype` FOR EACH ROW Begin
        Declare TypeID_ smallint;       
       -- Untuk melakukan pengecekan ke table INBarang
       Set TypeID_ = (Select Count(Distinct TypeID)  From pxType Where EXISTS(Select * From INBARANG where Type= old.TypeID));
       IF TypeID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Type telah digunakan sebagai Transaksi Pengaturan Item';    
       End IF;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertValuta`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertValuta` BEFORE INSERT ON `pxvaluta` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditValuta`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditValuta` BEFORE UPDATE ON `pxvaluta` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Be4DeleteValuta`;
DELIMITER ;;
CREATE TRIGGER `Be4DeleteValuta` BEFORE DELETE ON `pxvaluta` FOR EACH ROW Begin
        Declare ValID_ smallint;       
       -- Untuk melakukan pengecekan ke table PXValutaTukar
       Set ValID_ = (Select Count(Distinct ValID)  From pxValuta Where EXISTS(Select * From PXValutaTukar where VALID= old.ValID));
       IF ValID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Valuta telah digunakan sebagai Transaksi Pengaturan Nilai Tukar';    
       End IF;
       Set ValID_ = 0;

       -- Untuk melakukan pengecekan ke table INBarangKrtStock
       Set ValID_ = (Select Count(Distinct ValID)  From pxValuta Where EXISTS(Select * From INBarangKrtStock where VALID= old.ValID));
       IF ValID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Valuta telah digunakan dikartu stock';    
       End IF;
       Set ValID_ = 0;

       -- Untuk melakukan pengecekan ke table INBarangFifo
       Set ValID_ = (Select Count(Distinct ValID)  From pxValuta Where EXISTS(Select * From INBarangFifo where VALID= old.ValID));
       IF ValID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Valuta telah digunakan di metode Fifo/Average';    
       End IF;
       Set ValID_ = 0;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertValTukar`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertValTukar` BEFORE INSERT ON `pxvalutatukar` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditValTukar`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditValTukar` BEFORE UPDATE ON `pxvalutatukar` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertWarna`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertWarna` BEFORE INSERT ON `pxwarna` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditWarna`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditWarna` BEFORE UPDATE ON `pxwarna` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Be4DeleteWarna`;
DELIMITER ;;
CREATE TRIGGER `Be4DeleteWarna` BEFORE DELETE ON `pxwarna` FOR EACH ROW Begin
        Declare WrnID_ smallint;       
       -- Untuk melakukan pengecekan ke table INBarang
       Set WrnID_ = (Select Count(Distinct WrnID_)  From pxWarna Where EXISTS(Select * From INBARANG where Wrn= old.WrnID));
       IF WrnID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Warna telah digunakan sebagai Transaksi Pengaturan Item';    
       End IF;
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4InsertWilPurchase`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertWilPurchase` BEFORE INSERT ON `pxwilpurchase` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditWilPurchase`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditWilPurchase` BEFORE UPDATE ON `pxwilpurchase` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Be4_DeleteWilPurchase`;
DELIMITER ;;
CREATE TRIGGER `Be4_DeleteWilPurchase` BEFORE DELETE ON `pxwilpurchase` FOR EACH ROW Begin
        Declare WilayahID_ smallint;       
       -- Untuk melakukan pengecekan ke table PXSystem
       Set WilayahID_ = (Select Count(Distinct WilayahID)  From pxWilPurchase Where EXISTS(Select * From pxsystem where WilayahID = old.WilayahID));
       IF WilayahID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Wilayah telah digunakan sebagai default utama sistem';    
       End IF;
       Set WilayahID_ = 0;
       -- Untuk melakukan pengecekan ke table INBarangWilayah
       Set WilayahID_ = (Select Count(Distinct WilayahID)  From pxWilPurchase Where EXISTS(Select * From APSupplier where WilayahID = old.WilayahID));
       IF WilayahID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Wilayah telah digunakan sebagai Transaksi untuk pengaturan Supplier Per Wilayah';    
       End IF;
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_be4InsertWilSales`;
DELIMITER ;;
CREATE TRIGGER `TglU_be4InsertWilSales` BEFORE INSERT ON `pxwilsales` FOR EACH ROW Begin
       Set New.TglU = now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_be4EditWilSales`;
DELIMITER ;;
CREATE TRIGGER `TglU_be4EditWilSales` BEFORE UPDATE ON `pxwilsales` FOR EACH ROW Begin
       Set New.TglU = now();
End
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `Be4_DeleteWilSales`;
DELIMITER ;;
CREATE TRIGGER `Be4_DeleteWilSales` BEFORE DELETE ON `pxwilsales` FOR EACH ROW Begin
        Declare WilayahID_ smallint;       
       -- Untuk melakukan pengecekan ke table PXSystem
       Set WilayahID_ = (Select Count(Distinct WilayahID)  From pxWilSales Where EXISTS(Select * From pxsystem where WilayahID = old.WilayahID));
       IF WilayahID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Wilayah telah digunakan sebagai default utama sistem';    
       End IF;
       Set WilayahID_ = 0;
       -- Untuk melakukan pengecekan ke table APCUSTOMER
       Set WilayahID_ = (Select Count(Distinct WilayahID)  From pxWilSales Where EXISTS(Select * From APCustomer where WilayahID = old.WilayahID));
       IF WilayahID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Wilayah telah digunakan sebagai Transaksi untuk pengaturan Customer Per Wilayah';    
       End IF;
End
;;
DELIMITER ;
