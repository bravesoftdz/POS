/*
Navicat MySQL Data Transfer

Source Server         : client
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : trading

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2013-06-01 08:38:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Procedure structure for `PX_Find_Barang`
-- ----------------------------
DROP PROCEDURE IF EXISTS `PX_Find_Barang`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `PX_Find_Barang`(IN `@Nama` varchar(50))
BEGIN
	#Routine body goes here...	
	Select IFNULL(BRGID,'') As Nama From inbarang WHERE
	(BRGID =@Nama) or (Nama1 =@Nama);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `px_find_table`
-- ----------------------------
DROP PROCEDURE IF EXISTS `px_find_table`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `px_find_table`(in brgID_ varchar(30), in CabID_ varchar(5), in GdgID_ varchar(5), in Table_ varchar(50))
BEGIN
	#Routine body goes here...
	Declare hasil varchar(1000);
	IF Table_ ='inbarangopname' THEN
		Set hasil =	(select BrgID as Nama from inbarangopname where GDGID=GdgID_
								 and brgID =brgID_ and cabID =cabiD_);
	ELSEIF Table_ = 'pxsystem' THEN
		set Hasil =(Select CabID As Nama From pxcabang where EXISTS(select CabId from pxsystem));
  ElseIF Table_ = 'inbarangGudang' THEN
    set Hasil = (select brgID as nama from inbaranggudang WHERE GDGID=GdgID_
								 and brgID =brgID_ and cabID =cabiD_);
  ElseIF Table_ = 'inbarangHBeli' THEN
    set Hasil = (select brgID as nama from inbarangHbeli WHERE brgID =brgID_ and cabID =cabiD_);
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
  End If;
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
-- Procedure structure for `sp_find_opname`
-- ----------------------------
DROP PROCEDURE IF EXISTS `sp_find_opname`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_find_opname`(IN BrgIDAwal varchar(30), IN BrgIDAkhir varchar(30), IN GDGIDTemp varchar(5), IN StatAll smallint, in cari varchar(30))
BEGIN
	DECLARE Metode_ VARCHAR(1);
	SET metode_= (Select Metode from pxsystem);  
	 
	  if statall = 0 THEN
						SELECT M.NOMOR, M.BRGID, M.NSTN, M.HPOKOK, M.QTY, M.POSISI, M.GDGID
						FROM inbarangopname M LEFT Outer Join inbaranghbeli b on m.BRGID = b.BRGID where M.GDGID = GDGIDTemp
				UNION ALL
						select 1 as nomor, m.BRGID, b.Stn3, CASE metode_
            WHEN '0' THEN M.hbeli 
            ELSE M.hpp END AS HPokok, 0 as QTY, Curdate() as Posisi,b.Nama1 as Nama
            from inbaranghbeli m LEFT OUTER JOIN inbarang as b on m.BrgID = b.BRGID where M.BRGID not in
						(select BRGID from inbarangopname where GDGID = GDGIDTemp order by m.BRGID );
		ELSE
				 if Cari ='BRGID' THEN
							 SELECT M.NOMOR,M.BRGID, M.NSTN, M.HPOKOK, M.QTY, M.POSISI, M.GDGID
							 FROM inbarangopname M LEFT Outer Join inbaranghbeli b on m.BRGID = b.BRGID where M.GDGID = GDGIDTemp
						 UNION
							 select 0 as nomor, m.BRGID, b.Stn3, CASE metode_
							 WHEN '0' THEN M.hbeli 
							 ELSE M.hpp END AS HPokok, 0 as QTY, Curdate() as Posisi, b.Nama1 as Nama
							 from inbaranghbeli m LEFT OUTER JOIN inbarang as b on m.BrgID = b.BRGID where M.BRGID not in
							 (select BRGID from inbarangopname order by m.BRGID) and m.BRGID>=BRGIDAwal and m.BRGID<=BRGIDakhir;
         End IF; 

			 	 if Cari ='Jns' THEN
								SELECT M.NOMOR,M.BRGID, M.NSTN, M.HPOKOK, M.QTY, M.POSISI, M.GDGID
								FROM inbarangopname M LEFT Outer Join inbaranghbeli b on m.BRGID = b.BRGID where M.GDGID = GDGIDTemp
						UNION
								select 0 as nomor, m.BRGID, b.Stn3, CASE metode_
								WHEN '0' THEN M.hbeli 
								ELSE M.hpp END AS HPokok, 0 as QTY, Curdate() as Posisi, b.Nama1 as Nama
								from inbaranghbeli m LEFT OUTER JOIN inbarang as b on m.BrgID = b.BRGID where M.BRGID not in
								(select BRGID from inbarangopname order by m.BRGID) and b.Jns>=BRGIDAwal and b.Jns<=BRGIDakhir;
				 End If;
	
		     if Cari ='Gol' THEN
  							SELECT M.NOMOR,M.BRGID, M.NSTN, M.HPOKOK, M.QTY, M.POSISI, M.GDGID
	    					FROM inbarangopname M LEFT Outer Join inbaranghbeli b on m.BRGID = b.BRGID where M.GDGID = GDGIDTemp
						 UNION
  							select 0 as nomor, m.BRGID, b.Stn3, CASE metode_
	  						WHEN '0' THEN M.hbeli 
		  					ELSE M.hpp END AS HPokok, 0 as QTY, Curdate() as Posisi, b.Nama1 as Nama
			  				from inbaranghbeli m LEFT OUTER JOIN inbarang as b on m.BrgID = b.BRGID where M.BRGID not in
				  			(select BRGID from inbarangopname  order by m.BRGID) and b.gol>=BRGIDAwal and b.gol<=BRGIDakhir;
          End If;

			    If Cari ='Mrk' THEN
								SELECT M.NOMOR,M.BRGID, M.NSTN, M.HPOKOK, M.QTY, M.POSISI, M.GDGID
								FROM inbarangopname M LEFT Outer Join inbaranghbeli b on m.BRGID = b.BRGID Where m.GDGID =GDGIDtemp
							UNION
								select 0 as nomor, m.BRGID, b.Stn3, CASE metode_
								WHEN '0' THEN M.hbeli 
								ELSE M.hpp END AS HPokok, 0 as QTY, Curdate() as Posisi, b.Nama1 as Nama
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
