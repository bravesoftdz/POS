/*
Navicat MySQL Data Transfer

Source Server         : client
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : trading

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2013-05-25 08:39:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `apsupplier`
-- ----------------------------
DROP TABLE IF EXISTS `apsupplier`;
CREATE TABLE `apsupplier` (
`SUPID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`CabID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`Nama`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`AL1`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`AL2`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Telp`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Contact_Perso`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`NPWP`  varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Term`  smallint(6) NULL DEFAULT 0 ,
`Klink`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`valID`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`TglU`  datetime NULL DEFAULT NULL ,
`wilID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Fax`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
PRIMARY KEY (`SUPID`, `CabID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of apsupplier
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `apsuppliercontact`
-- ----------------------------
DROP TABLE IF EXISTS `apsuppliercontact`;
CREATE TABLE `apsuppliercontact` (
`ContacID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`SupID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '0.00000000' ,
`Nama`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Tglu`  datetime NULL DEFAULT NULL ,
`jabatan`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Alamat`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
PRIMARY KEY (`ContacID`, `SupID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of apsuppliercontact
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `inbarang`
-- ----------------------------
DROP TABLE IF EXISTS `inbarang`;
CREATE TABLE `inbarang` (
`BRGID`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Nama1`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Nama2`  varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Jenis`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Stn1`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Stn2`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Stn3`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Maxi`  decimal(18,8) NULL DEFAULT 0.00000000 ,
`Mini`  decimal(18,8) NULL DEFAULT 0.00000000 ,
`Isi1`  decimal(18,8) NULL DEFAULT 1.00000000 ,
`Isi2`  decimal(18,8) NULL DEFAULT 1.00000000 ,
`Hpp`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`hbeli`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`hjual1`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`hjual2`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`hjual3`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`lks`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`sup`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`gol`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`merek`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`type`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`model`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`klink`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`status`  tinyint(4) NOT NULL DEFAULT 0 ,
`barcode`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`namabar`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`berat`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`vol`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`slevel`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`kuali`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`wrn`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`mtf`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`size`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`tglu`  datetime NOT NULL ,
`lNonkonsinyasi`  char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`lAktif`  char(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`cab`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`lstatAll`  bit(1) NULL DEFAULT b'0' ,
PRIMARY KEY (`BRGID`),
FOREIGN KEY (`gol`) REFERENCES `pxgolongan` (`GolID`) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (`Jenis`) REFERENCES `pxjenis` (`JenisID`) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (`merek`) REFERENCES `pxmerek` (`MRKID`) ON DELETE RESTRICT ON UPDATE CASCADE,
FOREIGN KEY (`type`) REFERENCES `pxtype` (`TypeID`) ON DELETE RESTRICT ON UPDATE CASCADE,
INDEX `FKJenis` (`Jenis`) USING BTREE ,
INDEX `FKGolongan` (`gol`) USING BTREE ,
INDEX `FKMerek` (`merek`) USING BTREE ,
INDEX `FKType` (`type`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of inbarang
-- ----------------------------
BEGIN;
INSERT INTO `inbarang` VALUES ('tes', '123', '12', 'NON', '', '', 'PCS', '5.00000000', '1.00000000', '1.00000000', '1.00000000', '1000.00000000', '1000.00000000', '1000.00000000', '1000.00000000', '1000.00000000', '01', '', 'NON', '01', '03', null, '', '0', '', '', '0.00000000', '0.00000000', '0.00000000', null, '02', null, null, '2013-05-22 22:16:10', null, null, null, ''), ('tes123', '123', 'res', 'NON', '', '', 'PSC', '10.00000000', '5.00000000', '1.00000000', '1.00000000', '1000.00000000', '1000.00000000', '1000.00000000', '1000.00000000', '1000.00000000', '01', '', 'NON', '01', '03', null, '', '0', '1234', '', '0.00000000', '0.00000000', '0.00000000', null, '02', null, null, '2013-05-22 22:17:38', null, null, null, ''), ('TESTER', 'Test', '-', 'NON', '', 'BOX', 'PCS', '10.00000000', '5.00000000', '1.00000000', '12.00000000', '12500.00000000', '12500.00000000', '12500.00000000', '12500.00000000', '12500.00000000', '01', '', 'NON', '01', '01', null, '', '0', '-', '', '0.00000000', '0.00000000', '0.00000000', null, '03', null, null, '2013-05-20 22:46:56', null, null, null, '');
COMMIT;

-- ----------------------------
-- Table structure for `inbarangfifo`
-- ----------------------------
DROP TABLE IF EXISTS `inbarangfifo`;
CREATE TABLE `inbarangfifo` (
`CabID`  varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`GdgID`  varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`BrgID`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Tgl`  datetime NOT NULL ,
`QM`  decimal(18,8) NULL DEFAULT 0.00000000 COMMENT 'Untuk Keterangan Qty Masuk' ,
`QK`  decimal(18,8) NULL DEFAULT 0.00000000 COMMENT 'Untuk Keterangan Qty Keluar' ,
`Hrg`  decimal(28,8) NULL DEFAULT NULL COMMENT 'Untuk HPP Per PCS dengan Rumus \r\n(Netto Bersih setelah dikurangi disc Nota / Jumlah Pembelian Per PCS)  +  Beban Per Pcs (Hpp Netto)' ,
`ValID`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'Valuta ID yang dipake untuk pembelian/Opname/Penjualan' ,
`Tukar`  decimal(18,8) NULL DEFAULT NULL ,
`Bukti`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'No. transaksi' ,
`Create_Tgl`  datetime NULL DEFAULT NULL ,
`Create_Id`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Modify_Tgl`  datetime NULL DEFAULT NULL ,
`Modify_Id`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
PRIMARY KEY (`CabID`, `GdgID`, `BrgID`, `Tgl`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of inbarangfifo
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `inbaranggambar`
-- ----------------------------
DROP TABLE IF EXISTS `inbaranggambar`;
CREATE TABLE `inbaranggambar` (
`BrgID`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Keterangan`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL ,
`PathGbr`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Tglu`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`BrgID`),
FOREIGN KEY (`BrgID`) REFERENCES `inbarang` (`BRGID`) ON DELETE RESTRICT ON UPDATE CASCADE
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of inbaranggambar
-- ----------------------------
BEGIN;
INSERT INTO `inbaranggambar` VALUES ('tes', 'Tester Barang Gambar', 'D:\\Source Code\\Aplikasi POS\\Debug\\Win32\\Photo\\tes.jpg', '2013-05-25 07:50:08'), ('tes123', 'Tester Barang Gambar ku yang kedua', 'D:\\Source Code\\Aplikasi POS\\Debug\\Win32\\Photo\\tes123.jpg', '2013-05-25 08:32:30'), ('TESTER', 'Tester Barang Gambar', 'D:\\Source Code\\Aplikasi POS\\Debug\\Win32\\Photo\\TESTER.jpg', '2013-05-25 08:36:38');
COMMIT;

-- ----------------------------
-- Table structure for `inbaranggudang`
-- ----------------------------
DROP TABLE IF EXISTS `inbaranggudang`;
CREATE TABLE `inbaranggudang` (
`BRGID`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`GDGID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`CabID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`MIN`  decimal(18,8) NULL DEFAULT 0.00000000 ,
`MAX`  decimal(18,8) NULL DEFAULT 0.00000000 ,
`TglU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`BRGID`, `GDGID`, `CabID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of inbaranggudang
-- ----------------------------
BEGIN;
INSERT INTO `inbaranggudang` VALUES ('tes', '01', '01', '1.00000000', '5.00000000', '2013-05-22 22:16:10'), ('tes123', '01', '01', '5.00000000', '10.00000000', '2013-05-22 22:17:38'), ('TESTER', '01', '01', '5.00000000', '10.00000000', '2013-05-17 20:53:43');
COMMIT;

-- ----------------------------
-- Table structure for `inbaranggudangrak`
-- ----------------------------
DROP TABLE IF EXISTS `inbaranggudangrak`;
CREATE TABLE `inbaranggudangrak` (
`BRGID`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`GDGID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`RAKID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`CabID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`TglU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`BRGID`, `GDGID`, `RAKID`, `CabID`),
FOREIGN KEY (`BRGID`) REFERENCES `inbarang` (`BRGID`) ON DELETE CASCADE ON UPDATE CASCADE
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of inbaranggudangrak
-- ----------------------------
BEGIN;
INSERT INTO `inbaranggudangrak` VALUES ('tes', '01', '01', '01', '2013-05-22 22:16:10'), ('tes123', '01', '01', '01', '2013-05-22 22:17:38'), ('TESTER', '01', '01', '01', '2013-05-16 23:21:41');
COMMIT;

-- ----------------------------
-- Table structure for `inbaranghbeli`
-- ----------------------------
DROP TABLE IF EXISTS `inbaranghbeli`;
CREATE TABLE `inbaranghbeli` (
`BrgID`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`cabID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`hbeli`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`hpp`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`tglu`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`BrgID`, `cabID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of inbaranghbeli
-- ----------------------------
BEGIN;
INSERT INTO `inbaranghbeli` VALUES ('tes', '01', '1000.00000000', '2.00000000', '2013-05-22 22:16:10'), ('tes123', '01', '1000.00000000', '2.00000000', '2013-05-22 22:17:38'), ('TESTER', '01', '12500.00000000', '12500.00000000', '2013-05-17 20:53:43');
COMMIT;

-- ----------------------------
-- Table structure for `inbaranghjual`
-- ----------------------------
DROP TABLE IF EXISTS `inbaranghjual`;
CREATE TABLE `inbaranghjual` (
`CabID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`HrgID`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`BrgID`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Hpp`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`Profit`  decimal(18,8) NULL DEFAULT 0.00000000 ,
`Profitnilai`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`H1`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`H2`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`H3`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`Create_id`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Create_Tgl`  datetime NULL DEFAULT NULL ,
`Modify_id`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Modify_Tgl`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`CabID`, `HrgID`, `BrgID`),
INDEX `IDXCAB` (`CabID`) USING BTREE ,
INDEX `IDXBRG` (`BrgID`) USING BTREE ,
INDEX `IDXHRG` (`HrgID`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of inbaranghjual
-- ----------------------------
BEGIN;
INSERT INTO `inbaranghjual` VALUES ('01', '01', 'tes', '0.00000000', '10.00000000', '100.00000000', '1100.00000000', '1100.00000000', '1100.00000000', null, '2013-05-22 22:16:10', null, null), ('01', '01', 'tes123', '0.00000000', '10.00000000', '100.00000000', '1100.00000000', '1100.00000000', '1100.00000000', null, '2013-05-22 22:17:38', null, null), ('01', '01', 'TESTER', '0.00000000', '10.00000000', '1000.00000000', '12500.00000000', '12500.00000000', '12500.00000000', null, '2013-05-16 23:21:41', null, null);
COMMIT;

-- ----------------------------
-- Table structure for `inbarangkrtstock`
-- ----------------------------
DROP TABLE IF EXISTS `inbarangkrtstock`;
CREATE TABLE `inbarangkrtstock` (
`TGL`  datetime NOT NULL ,
`BUKTI`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`NOMOR`  smallint(6) NOT NULL ,
`NOF`  int(11) NOT NULL ,
`JTRAN`  varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`MK`  varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`BRGID`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`GDGID`  varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`CabID`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`SO`  varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`PO`  varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`CUSTID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`SUPID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`DISC1`  decimal(28,8) NULL DEFAULT NULL ,
`DISC11`  decimal(28,8) NULL DEFAULT NULL ,
`Disc2`  decimal(18,8) NULL DEFAULT NULL ,
`Disc22`  decimal(28,8) NULL DEFAULT NULL ,
`Disc3`  decimal(18,8) NULL DEFAULT NULL ,
`Disc33`  decimal(28,8) NULL DEFAULT NULL ,
`Disc4`  decimal(18,8) NULL DEFAULT NULL ,
`Disc44`  decimal(28,8) NULL DEFAULT NULL ,
`Disc5`  decimal(18,8) NULL DEFAULT NULL ,
`Disc55`  decimal(28,8) NULL DEFAULT NULL ,
`VALID`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`TUKAR`  decimal(18,8) NULL DEFAULT NULL ,
`STNID`  varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`KETERANGAN`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`QTY`  decimal(18,8) NULL DEFAULT NULL ,
`HPOKOK`  decimal(28,8) NULL DEFAULT NULL ,
`HJUAL`  decimal(28,8) NULL DEFAULT NULL ,
`HBELI`  decimal(28,8) NULL DEFAULT NULL ,
`REF`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`GOLID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`JENISID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`MEREKID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Create_id`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Create_tgl`  datetime NULL DEFAULT NULL ,
`Modify_id`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Modify_tgl`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`BUKTI`, `NOMOR`, `NOF`, `JTRAN`, `MK`, `BRGID`, `GDGID`, `CabID`, `TGL`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of inbarangkrtstock
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `inbarangmutasi`
-- ----------------------------
DROP TABLE IF EXISTS `inbarangmutasi`;
CREATE TABLE `inbarangmutasi` (
`GDGID`  varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`BRGID`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`THN`  int(11) NOT NULL ,
`CabID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`QAWAL`  decimal(18,4) NULL DEFAULT 0.0000 ,
`NAWAL`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`QM1`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QM2`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QM3`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QM4`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QM5`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QM6`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QM7`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QM8`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QM9`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QM10`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QM11`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QM12`  decimal(18,4) NULL DEFAULT 0.0000 ,
`NM1`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NM2`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NM3`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NM4`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NM5`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NM6`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NM7`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NM8`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NM9`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NM10`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NM11`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NM12`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`QK1`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QK2`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QK3`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QK4`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QK5`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QK6`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QK7`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QK8`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QK9`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QK10`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QK11`  decimal(18,4) NULL DEFAULT 0.0000 ,
`QK12`  decimal(18,4) NULL DEFAULT 0.0000 ,
`NK1`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NK2`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NK3`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NK4`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NK5`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NK6`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NK7`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NK8`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NK9`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NK10`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NK11`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`NK12`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`QAKHIR`  decimal(18,4) NULL DEFAULT 0.0000 ,
`NAKHIR`  decimal(28,8) NULL DEFAULT 0.00000000 ,
PRIMARY KEY (`GDGID`, `BRGID`, `THN`, `CabID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of inbarangmutasi
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `inbarangopname`
-- ----------------------------
DROP TABLE IF EXISTS `inbarangopname`;
CREATE TABLE `inbarangopname` (
`GDGID`  varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`BRGID`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`CabID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`NOMOR`  smallint(6) NOT NULL AUTO_INCREMENT ,
`STN`  varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`NSTN`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`HPOKOK`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`QTY`  decimal(18,8) NULL DEFAULT 0.00000000 ,
`POSISI`  date NULL DEFAULT NULL ,
`Create_id`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Create_tgl`  datetime NULL DEFAULT NULL ,
`Modify_id`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`modify_tgl`  datetime NULL DEFAULT NULL ,
`bukti`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`lacc`  char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'F' ,
`Create_IdAcc`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Create_TglAcc`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`NOMOR`, `GDGID`, `BRGID`, `CabID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of inbarangopname
-- ----------------------------
BEGIN;
INSERT INTO `inbarangopname` VALUES ('01', 'tes', '01', '1', '3', 'PCS', '2.00000000', '10.00000000', '2013-05-23', '', '2013-05-23 21:11:56', '', '2013-05-23 21:22:34', 'SO', 'F', null, null), ('01', 'tes123', '01', '1', '3', 'PSC', '2.00000000', '10.00000000', '2013-05-23', '', '2013-05-23 21:12:51', '', '2013-05-23 21:22:34', 'SO', 'F', null, null), ('01', 'TESTER', '01', '1', '3', 'PCS', '12500.00000000', '5.00000000', '2013-05-22', '', '2013-05-22 07:23:19', '', '2013-05-23 21:22:36', 'SO', 'F', null, null);
COMMIT;

-- ----------------------------
-- Table structure for `inbarangstock`
-- ----------------------------
DROP TABLE IF EXISTS `inbarangstock`;
CREATE TABLE `inbarangstock` (
`GDGID`  varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`BrgID`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Qty`  decimal(18,8) NULL DEFAULT 0.00000000 ,
PRIMARY KEY (`GDGID`, `BrgID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of inbarangstock
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `inhisbarangopname`
-- ----------------------------
DROP TABLE IF EXISTS `inhisbarangopname`;
CREATE TABLE `inhisbarangopname` (
`GDGID`  varchar(2) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`BRGID`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`CabID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`NOMOR`  smallint(6) NOT NULL AUTO_INCREMENT ,
`STN`  varchar(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`NSTN`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`HPOKOK`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`QTY`  decimal(18,8) NULL DEFAULT 0.00000000 ,
`POSISI`  date NULL DEFAULT NULL ,
`Create_id`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Create_tgl`  datetime NULL DEFAULT NULL ,
`Modify_id`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`modify_tgl`  datetime NULL DEFAULT NULL ,
`bukti`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`lacc`  char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT 'F' ,
`Create_IdAcc`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Create_TglAcc`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`NOMOR`, `GDGID`, `BRGID`, `CabID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of inhisbarangopname
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `pxcabang`
-- ----------------------------
DROP TABLE IF EXISTS `pxcabang`;
CREATE TABLE `pxcabang` (
`CABID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Keterangan`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`tglU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`CABID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of pxcabang
-- ----------------------------
BEGIN;
INSERT INTO `pxcabang` VALUES ('01', 'CABANG UTAMA', '2013-05-16 20:59:41');
COMMIT;

-- ----------------------------
-- Table structure for `pxgolongan`
-- ----------------------------
DROP TABLE IF EXISTS `pxgolongan`;
CREATE TABLE `pxgolongan` (
`GolID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Keterangan`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`TglU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`GolID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of pxgolongan
-- ----------------------------
BEGIN;
INSERT INTO `pxgolongan` VALUES ('NON', 'NONE', '2013-05-14 20:15:40');
COMMIT;

-- ----------------------------
-- Table structure for `pxgudang`
-- ----------------------------
DROP TABLE IF EXISTS `pxgudang`;
CREATE TABLE `pxgudang` (
`GdgID`  varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Keterangan`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`TglU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`GdgID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of pxgudang
-- ----------------------------
BEGIN;
INSERT INTO `pxgudang` VALUES ('01', 'GUDANG UTAMA', '2013-05-16 20:59:54'), ('02', 'GUDANG CABANG', '2013-05-20 20:33:59');
COMMIT;

-- ----------------------------
-- Table structure for `pxharga`
-- ----------------------------
DROP TABLE IF EXISTS `pxharga`;
CREATE TABLE `pxharga` (
`HrgID`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Keterangan`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`ValID`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`Presen_`  decimal(18,8) NULL DEFAULT 0.00000000 ,
`Presen_nilai`  decimal(28,8) NULL DEFAULT 0.00000000 ,
`Tglu`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`HrgID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of pxharga
-- ----------------------------
BEGIN;
INSERT INTO `pxharga` VALUES ('01', 'HARGA ECERAN', 'ID', '10.00000000', '0.00000000', '2013-05-16 21:00:35');
COMMIT;

-- ----------------------------
-- Table structure for `pxjenis`
-- ----------------------------
DROP TABLE IF EXISTS `pxjenis`;
CREATE TABLE `pxjenis` (
`JenisID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Keterangan`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`TGLU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`JenisID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of pxjenis
-- ----------------------------
BEGIN;
INSERT INTO `pxjenis` VALUES ('NON', 'NONE', '2013-05-14 19:13:15');
COMMIT;

-- ----------------------------
-- Table structure for `pxkategori`
-- ----------------------------
DROP TABLE IF EXISTS `pxkategori`;
CREATE TABLE `pxkategori` (
`KategID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Keterangan`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`TGLU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`KategID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of pxkategori
-- ----------------------------
BEGIN;
INSERT INTO `pxkategori` VALUES ('01', 'CAT', '2013-05-13 21:53:05'), ('02', 'TINNER', '2013-05-13 21:53:20'), ('03', 'CLEAR', '2013-05-13 21:57:14');
COMMIT;

-- ----------------------------
-- Table structure for `pxmenu`
-- ----------------------------
DROP TABLE IF EXISTS `pxmenu`;
CREATE TABLE `pxmenu` (
`MenuID`  varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL ,
`Description`  varchar(50) CHARACTER SET ascii COLLATE ascii_bin NULL DEFAULT NULL ,
`ExeName`  varchar(50) CHARACTER SET ascii COLLATE ascii_bin NULL DEFAULT '' ,
`Status_`  char(1) CHARACTER SET ascii COLLATE ascii_bin NULL DEFAULT NULL ,
PRIMARY KEY (`MenuID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=ascii COLLATE=ascii_bin

;

-- ----------------------------
-- Records of pxmenu
-- ----------------------------
BEGIN;
INSERT INTO `pxmenu` VALUES ('aCopy', 'COPY', '', 'T'), ('aCustomer', 'Customer', '', 'T'), ('aCut', 'CUT', '', 'T'), ('aEdit', 'EDIT', '', 'T'), ('aExit', 'EXIT', '', 'T'), ('aFILE', 'FILE', '', 'T'), ('aFind', 'FIND', '', 'T'), ('aLOGIN', 'LOGIN', '', 'T'), ('aLOGOUT', 'LOGOUT', '', 'T'), ('aMaster', 'MASTER', '', 'T'), ('aMonitoringPurchase', 'Monitoring Purchase', '', 'T'), ('aMonitoringSales', 'Monitoring Sales', '', 'T'), ('aPAGESETUP', 'PAGE SETUP', '', 'T'), ('aPOS', 'POS', '', 'T'), ('aPRINTSETUP', 'PRINT SETUP', '', 'T'), ('aPaste', 'PASTE', '', 'T'), ('aPasteSpecial', 'PASTE SPECIAL', '', 'T'), ('aPurchaseOrder', 'Purchase Order', '', 'T'), ('aPurchaseRequest', 'Purchase Request', '', 'T'), ('aPurchaseReturn', 'Purchase Return', '', 'T'), ('aReceiving', 'Receiving', '', 'T'), ('aReplace', 'REPLACE', '', 'T'), ('aReporting', 'REPORTING', '', 'T'), ('aSaldo', 'SALDO', '', 'T'), ('aSaldoAwalBarang', 'SALDO AWAL BARANG', '', 'T'), ('aSaldoAwalHutang', 'SALDO AWAL HUTANG', '', 'T'), ('aSaldoAwalPiutang', 'SALDO AWAL PIUTANG', '', 'T'), ('aSales', 'Sales', '', 'T'), ('aSalesOrder', 'Sales Order', '', 'T'), ('aSalesRequest', 'Sales Request', '', 'T'), ('aSalesReturn', 'Sales Return', '', 'T'), ('aSetting', 'SETTING', '', 'T'), ('aShipment', 'Shipment', '', 'T'), ('aSupplier', 'Supplier', '', 'T'), ('aTransaction', 'TRANSACTION', '', 'T'), ('aWilayahPurchase', 'Wilayah Purchase', '', 'T'), ('aWilayahSupplier', 'Wilayah Supplier', '', 'T'), ('aWindow', 'WINDOW', '', 'T');
COMMIT;

-- ----------------------------
-- Table structure for `pxmerek`
-- ----------------------------
DROP TABLE IF EXISTS `pxmerek`;
CREATE TABLE `pxmerek` (
`MRKID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`KETERANGAN`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`TGLU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`MRKID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of pxmerek
-- ----------------------------
BEGIN;
INSERT INTO `pxmerek` VALUES ('01', 'Duxone', '2013-05-13 21:42:13'), ('02', 'DENPO', '2013-05-13 21:56:50'), ('03', 'DANA GLOSS', '2013-05-13 21:56:56');
COMMIT;

-- ----------------------------
-- Table structure for `pxmodel`
-- ----------------------------
DROP TABLE IF EXISTS `pxmodel`;
CREATE TABLE `pxmodel` (
`MODELID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`KETERANGAN`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`TGLU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`MODELID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of pxmodel
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `pxmotif`
-- ----------------------------
DROP TABLE IF EXISTS `pxmotif`;
CREATE TABLE `pxmotif` (
`MTFID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`KETERANGAN`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`TGLU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`MTFID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of pxmotif
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `pxrak`
-- ----------------------------
DROP TABLE IF EXISTS `pxrak`;
CREATE TABLE `pxrak` (
`RakID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Keterangan`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`TglU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`RakID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of pxrak
-- ----------------------------
BEGIN;
INSERT INTO `pxrak` VALUES ('01', 'RAK A', '2013-05-13 22:04:45'), ('02', 'RAK B', '2013-05-13 22:04:49'), ('03', 'RAK C', '2013-05-13 22:04:54'), ('04', 'RAK D', '2013-05-13 22:04:59'), ('05', 'RAK E', '2013-05-13 22:05:04');
COMMIT;

-- ----------------------------
-- Table structure for `pxsize`
-- ----------------------------
DROP TABLE IF EXISTS `pxsize`;
CREATE TABLE `pxsize` (
`SIZEID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`KETERANGAN`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`TGLU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`SIZEID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of pxsize
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `pxsystem`
-- ----------------------------
DROP TABLE IF EXISTS `pxsystem`;
CREATE TABLE `pxsystem` (
`ConfigID`  smallint(6) NOT NULL AUTO_INCREMENT ,
`SatID`  varchar(3) CHARACTER SET ascii COLLATE ascii_bin NULL DEFAULT NULL COMMENT 'Untuk Default Satuan Utama' ,
`GDGID`  varchar(5) CHARACTER SET ascii COLLATE ascii_bin NULL DEFAULT NULL COMMENT 'Untuk Default Gudang Utama' ,
`CABID`  varchar(5) CHARACTER SET ascii COLLATE ascii_bin NULL DEFAULT NULL COMMENT 'Untuk Default Cabang Utama' ,
`VALID`  varchar(5) CHARACTER SET ascii COLLATE ascii_bin NULL DEFAULT NULL COMMENT 'Untuk Valuta Default Utama' ,
`HRGID`  varchar(5) CHARACTER SET ascii COLLATE ascii_bin NULL DEFAULT NULL COMMENT 'Untuk Harga Default Utama untuk Penjualan' ,
`METODE`  char(1) CHARACTER SET ascii COLLATE ascii_bin NULL DEFAULT '1' COMMENT 'Metode yang dipake, Jika nilai 1 = Fifo dan nilai 2 = Average' ,
`DISCTINGKAT`  smallint(6) NULL DEFAULT 1 COMMENT 'Untuk Default Nilai Discont Berapa Tingkat Saat ditampilkan di Penjualan Maupun Pembelian' ,
`Profit_`  bit(1) NULL DEFAULT b'1' COMMENT 'Untuk memperhitungkan harga jual 3 + profit yang berada ditable PXHarga, Jika nilai 1 maka akan diperhitungkan Jika nilai 2 maka tidak akan diperhitungkan' ,
`Vertion_`  smallint(1) NULL DEFAULT NULL COMMENT '0 = Basic\r\n1 = Standart\r\n2 = Premium\r\n3 = Profesional\r\n4 = Enterprice\r\n5 = Unlimited' ,
PRIMARY KEY (`ConfigID`),
INDEX `FKGudang` (`GDGID`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=ascii COLLATE=ascii_bin
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of pxsystem
-- ----------------------------
BEGIN;
INSERT INTO `pxsystem` VALUES ('1', 'PCS', '01', '01', 'ID', '01', '2', '1', '', '1');
COMMIT;

-- ----------------------------
-- Table structure for `pxtype`
-- ----------------------------
DROP TABLE IF EXISTS `pxtype`;
CREATE TABLE `pxtype` (
`TypeID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Keterangan`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`TglU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`TypeID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of pxtype
-- ----------------------------
BEGIN;
INSERT INTO `pxtype` VALUES ('01', 'KONFIGURASI', '2013-05-18 09:58:02'), ('02', 'BONUS', '2013-05-18 09:58:07'), ('03', 'NORMAL', '2013-05-18 09:58:16');
COMMIT;

-- ----------------------------
-- Table structure for `pxvaluta`
-- ----------------------------
DROP TABLE IF EXISTS `pxvaluta`;
CREATE TABLE `pxvaluta` (
`VALID`  varchar(5) CHARACTER SET ascii COLLATE ascii_bin NOT NULL ,
`KETERANGAN`  varchar(50) CHARACTER SET ascii COLLATE ascii_bin NULL DEFAULT NULL ,
`TGLU`  datetime NULL DEFAULT NULL ,
`Status_`  char(2) CHARACTER SET ascii COLLATE ascii_bin NOT NULL DEFAULT '' COMMENT 'Nilai dari status ini adalah untuk menentukan valuta ini akan dipakai dimana' ,
PRIMARY KEY (`VALID`, `Status_`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=ascii COLLATE=ascii_bin

;

-- ----------------------------
-- Records of pxvaluta
-- ----------------------------
BEGIN;
INSERT INTO `pxvaluta` VALUES ('ID', 'RUPIAH', '2013-05-17 23:01:03', 'AP'), ('ID', 'RUPIAH', '2013-05-17 23:01:35', 'AR');
COMMIT;

-- ----------------------------
-- Table structure for `pxvalutatukar`
-- ----------------------------
DROP TABLE IF EXISTS `pxvalutatukar`;
CREATE TABLE `pxvalutatukar` (
`TUKARID`  smallint(5) NOT NULL AUTO_INCREMENT ,
`VALID`  varchar(5) CHARACTER SET ascii COLLATE ascii_bin NOT NULL ,
`TUKAR`  decimal(28,8) NULL DEFAULT NULL ,
`TGL1`  date NULL DEFAULT NULL COMMENT 'Digunakan untuk filter dipenjualan dan pembelian kode tukar ini akan digunakan sampai kapan' ,
`TGL2`  date NULL DEFAULT NULL COMMENT 'Digunakan untuk filter dipenjualan dan pembelian kode tukar ini akan digunakan sampai kapan' ,
`TglU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`TUKARID`, `VALID`),
FOREIGN KEY (`VALID`) REFERENCES `pxvaluta` (`VALID`) ON DELETE RESTRICT ON UPDATE CASCADE,
INDEX `FKValuta` (`VALID`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=ascii COLLATE=ascii_bin
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of pxvalutatukar
-- ----------------------------
BEGIN;
INSERT INTO `pxvalutatukar` VALUES ('1', 'ID', '1.00000000', '2013-05-01', '2013-05-31', '2013-05-16 21:09:19');
COMMIT;

-- ----------------------------
-- Table structure for `pxwarna`
-- ----------------------------
DROP TABLE IF EXISTS `pxwarna`;
CREATE TABLE `pxwarna` (
`WRNID`  varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Keterangan`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`TGLU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`WRNID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of pxwarna
-- ----------------------------
BEGIN;
INSERT INTO `pxwarna` VALUES ('01', 'MERAH', '2013-05-18 10:36:04'), ('02', 'BIRU', '2013-05-18 10:36:08'), ('03', 'PUTIH', '2013-05-18 10:36:12');
COMMIT;

-- ----------------------------
-- Table structure for `pxwilpurchase`
-- ----------------------------
DROP TABLE IF EXISTS `pxwilpurchase`;
CREATE TABLE `pxwilpurchase` (
`WilayahID`  varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`Keterangan`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`TglU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`WilayahID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of pxwilpurchase
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for `pxwilsales`
-- ----------------------------
DROP TABLE IF EXISTS `pxwilsales`;
CREATE TABLE `pxwilsales` (
`WilayahID`  varchar(5) CHARACTER SET ascii COLLATE ascii_bin NOT NULL ,
`Description`  varchar(50) CHARACTER SET ascii COLLATE ascii_bin NULL DEFAULT NULL ,
`TglU`  datetime NULL DEFAULT NULL ,
PRIMARY KEY (`WilayahID`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=ascii COLLATE=ascii_bin

;

-- ----------------------------
-- Records of pxwilsales
-- ----------------------------
BEGIN;
COMMIT;
DROP TRIGGER IF EXISTS `TglU_Be4InsertSupplier`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4InsertSupplier` BEFORE INSERT ON `apsupplier` FOR EACH ROW Begin
Set New.TglU = Now();
end
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `TglU_Be4EditSupplier`;
DELIMITER ;;
CREATE TRIGGER `TglU_Be4EditSupplier` BEFORE UPDATE ON `apsupplier` FOR EACH ROW Begin
Set New.TglU = Now();
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

       Set GDGID_  = (Select GDGID From pxsystem);
       Set CABID_  = (Select CABID From pxsystem);
       
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
        #signal sqlstate '45000' set message_text = new.brgID;   

        -- Insert kedalam table INBarangHJual untuk pengaturan Harga Jual Pertama kali 
        -- Melakukan Pengecekan untuk penggunaan Hrg Utama yang digunakan di table PXSystem 
        -- Kemudian setelah mendapatkan Hrg utama, nilai dari profit dan profit nilai di isi dari table PXHarga
        -- Khusus profit jika ada nilainya > 0 maka nilai profit nilai di isi dari perhitungan profit dikalikan hpp
        Set Hrg_ = (Select HrgID From PXHarga Where EXISTS(Select * From pxsystem where HrgID = '01'));         
        If (New.HJual1 > 0) or (New.HJual2 > 0) or (New.Hjual3 > 0)Then
            Set Profit_ = (Select Presen_ From PxHarga Where HrgID = Hrg_);            
            If Profit_ > 0 Then
                  Set ProfitNilai_ =(((100 + Profit_) / 100 * New.Hbeli) - New.Hbeli);
            Else
                 -- Ambil profit nilai yang bukan prosentase
                 Set ProfitNilai_   = (Select Presen_Nilai From PxHarga Where HrgID = Hrg_);
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

-- ----------------------------
-- Auto increment value for `inbarangopname`
-- ----------------------------
ALTER TABLE `inbarangopname` AUTO_INCREMENT=2;

-- ----------------------------
-- Auto increment value for `inhisbarangopname`
-- ----------------------------
ALTER TABLE `inhisbarangopname` AUTO_INCREMENT=1;
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
       Set GolID_ = (Select Count(Distinct GolID)  From pxGolongan Where EXISTS(Select * From pxsystem where GolID = old.GolID));
       IF GolID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Golongan telah digunakan sebagai default utama sistem';    
       End IF;
       Set GolID_ = 0;
       -- Untuk melakukan pengecekan ke table INBarangGudang
       Set golID_ = (Select Count(Distinct GolID)  From pxGolongan Where EXISTS(Select * From INBarang where GolID = old.GolID));
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
       Set GDGID_ = (Select Count(Distinct GDGID)  From pxgudang Where EXISTS(Select * From pxsystem where GDGID = old.GDGID));
       IF GdgID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Gudang telah digunakan sebagai default utama sistem';    
       End IF;
       Set GDGID_ = 0;
       -- Untuk melakukan pengecekan ke table INBarangGudang
       Set GDGID_ = (Select Count(Distinct GDGID)  From pxgudang Where EXISTS(Select * From INBarangGudang where GDGID = old.GDGID));
       IF GdgID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Gudang telah digunakan sebagai Transaksi untuk pengaturan Min dan Max Per Gudang';    
       End IF;
       Set GDGID_ = 0;
       -- Untuk melakukan pengecekan ke table INBarangGudangRak
       Set GDGID_ = (Select Count(Distinct GDGID)  From pxgudang Where EXISTS(Select * From INBarangGudangRak where GDGID = old.GDGID));
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
       Set JNSID_ = (Select Count(Distinct JeNiSID)  From pxJenis Where EXISTS(Select * From INBarang where JNSID = old.JeNiSID));
       IF JNSID_ = 1 Then
            signal sqlstate '45000' set message_text = 'Maaf data Jenis telah digunakan sebagai Transaksi untuk pengaturan Iteml ';    
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
       -- Untuk melakukan pengecekan ke table INBarangGudang
       Set MerkID_ = (Select Count(Distinct MRKID)  From pxGolongan Where EXISTS(Select * From INBarang where Merek = old.MrkID));
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
       Set LKSID_ = (Select Count(Distinct RAKID)  From pxRAK Where EXISTS(Select * From INBARANG where Lks = old.RAKID));
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

-- ----------------------------
-- Auto increment value for `pxsystem`
-- ----------------------------
ALTER TABLE `pxsystem` AUTO_INCREMENT=2;
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

-- ----------------------------
-- Auto increment value for `pxvalutatukar`
-- ----------------------------
ALTER TABLE `pxvalutatukar` AUTO_INCREMENT=2;
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
