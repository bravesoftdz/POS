CREATE DEFINER = CURRENT_USER PROCEDURE `NewProc`()
BEGIN
	#Routine body goes here...	
	Declare blntemp integer;
	Declare tgltemp integer;
	Declare D1temp decimal(28,8);
	Declare D2temp decimal(28,8);
	Declare D3temp decimal(28,8);
	Declare D4temp decimal(28,8);
	Declare D5temp decimal(28,8);
	Declare D6temp decimal(28,8);
	Declare D7temp decimal(28,8);
	Declare D8temp decimal(28,8);
	Declare D9temp decimal(28,8);
	Declare D10temp decimal(28,8);
	Declare D11temp decimal(28,8);
	Declare D12temp decimal(28,8);

  #####
	Declare cekmutasi SMALLINT;
  DECLARE cekmutasiAwal SMALLINT;
  #####

	Select IFNULL(1,'0') into cekmutasi from apmutasihutang where SupID IN (Select SupID From apmutasihutang where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ );
  if ISNULL(cekmutasi) then set cekmutasi = 0; End If;			 
     
  Select IFNULL(1,'0') into cekmutasiAwal from apmutasihutang where SupID IN (Select SupID From apmutasihutang where SupID=SupID_ and CabID=CabID_ and thn=thntemp_ );			 
	if ISNULL(cekmutasiAwal) then set cekmutasiAwal = 0; End If;

	if cekmutasiAwal  = 0 THEN
			Set Awaltemp   = 0;			
	else 
			set Awaltemp   =(Select IFNULL((Awal+ UMuka + Giro + (D1+D2+D3+D4+D5+D6+D7+D8+D9+D10+D11+D12) - (K1+K2+K3+K4+K5+K6+K7+K8+K9+K10+K11+K12)),'0') from apmutasihutang where SupID=SupID_ and CabID=CabID_ and thn<=thntemp_ order by thn desc);			 			
	end if;

	if cekmutasi = 0 then
			insert into apmutasihutang(SupID, cabid, thn, Awal, UMuka, Giro, NAkhir) values (SupID_, cabid_, thntemp_, AwalTemp, 0); 
	End If;
  -- trans_ = 0 ( Stock StockAwalHutang ) dan Trans_ = 1 ( Pembelian )
	-- signal sqlstate '45000' set message_text = trans_;
	Case trans_ 
			 WHEN 0 THEN
					Case blntemp
							 WHEN 1 THEN 
										set d1temp = Saldo_;
										set isi = IFNULL((Select 1 from apmutasihutang where  supID=SupID_ 
															and valID=ValID_ and Thn=tgltemp),0);

										if isi  = 0 then 
												 Insert into apmutasihutang(SupID, valID, Thn, company, awal, k1, cab) VALUES(new.sup, new.val, tgltemp, '', '0', d1temp, new.cab);
										else
												 begin
												 declare d1newtemp decimal(28,8);
												 set d1newtemp=(Select k1 from svapmmhut where  sup=new.sup and val=new.val and Thn=tgltemp);
												 set d1temp =  d1newtemp + new.saldo;
												 UPDATE svapmmhut set company= '', awal='0', k1=d1temp, cab=new.cab where sup=new.sup and val=new.val and Thn=tgltemp;
												 end;
										end if;
								When 2 THEN
														set d1temp =new.saldo;
														set isi =(Select count(*) from svapmmhut where  sup=new.sup and val=new.val and Thn=tgltemp);

														if isi = 0 then 
																		 Insert into svapmmhut(sup, val, thn, company, awal, k1, cab) VALUES(new.sup, new.val, tgltemp, '', '0', d1temp, new.cab);
														else
																 begin
																 declare d1newtemp decimal(28,8);
																 set d1newtemp=(Select k1 from svapmmhut where  sup=new.sup and val=new.val and Thn=tgltemp);
																 set d1temp =  d1newtemp + new.saldo;
																 UPDATE svapmmhut set company= '', awal='0', k1=d1temp, cab=new.cab where sup=new.sup and val=new.val and Thn=tgltemp;
																 end;
														end if; 		
					End CASE;
			 WHEN 1 THEN
	End Case;
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
  
END;;

