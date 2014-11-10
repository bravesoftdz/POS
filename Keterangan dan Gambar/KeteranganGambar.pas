unit KeteranganGambar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, templatestayontop, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, dxBarDBNav,
  dxBar, ImgList, DBActns, ActnList, StdCtrls, ExtCtrls, cxPC, DBCtrls, Mask,
  DB, ADODB, Buttons, jpeg, ExtDlgs, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxDBEdit;

type
  TKeteranganGambarForm = class(TFormTemplateStayOnTop)
    connTrading: TADOConnection;
    INBarangGambar: TADODataSet;
    dsINBarangGambar: TDataSource;
    INBarangGambarBrgID: TStringField;
    INBarangGambarKeterangan: TMemoField;
    INBarangGambarPathGbr: TStringField;
    INBarangGambarTglu: TDateTimeField;
    lbl1: TLabel;
    lbl2: TLabel;
    grp1: TGroupBox;
    img1: TImage;
    lbl3: TLabel;
    Barang: TADODataSet;
    BarangBRGID: TStringField;
    BarangNama1: TStringField;
    btnF: TBitBtn;
    btnP: TBitBtn;
    dlgOpenPic1: TOpenPictureDialog;
    sp_input_Gambar: TADOStoredProc;
    mmo1: TMemo;
    dsBarang: TDataSource;
    btn3: TButton;
    edtBrg: TEdit;
    Simpan: TAction;
    Cancel: TAction;
    edt1: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnFClick(Sender: TObject);
    procedure btnPClick(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure edtBrgExit(Sender: TObject);
    procedure SimpanExecute(Sender: TObject);
    procedure CancelExecute(Sender: TObject);
    procedure edtBrgKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure SimpanFoto;
    procedure tampilFoto;
    procedure hapusfoto;
  public
  var
     fileSource, fileDest: string;
     mutex : THandle;
    { Public declarations }
  end;

var
  KeteranganGambarForm: TKeteranganGambarForm;

implementation

uses Search;

{$R *.dfm}

procedure TKeteranganGambarForm.btn3Click(Sender: TObject);
begin
  inherited;
  INBarangGambar.Close;
  INBarangGambar.Open;
  SearchForm := TSearchForm.create(nil);
  SearchForm.FormStyle := fsNormal;
//  SearchForm.Left := Self.Width + 30;
//  SearchForm.Top  := Self.Top  + 100;
  SearchForm.Hide;
  searchForm.dscari.DataSet := INBarangGambar;
  if SearchForm.ShowModal =mrOk then
    begin
      edtBrg.Text := INBarangGambarBrgID.Value;
      edtBrg.ReadOnly:= true;
      mmo1.Text   := INBarangGambarKeterangan.Value;
      mmo1.SetFocus;
      tampilFoto;
    end
  else
  begin
    edtBrg.setfocus;
    edtBrg.ReadOnly:= false;
  end;
  searchForm.Close;
end;

procedure TKeteranganGambarForm.btnFClick(Sender: TObject);
begin
  inherited;
  dlgOpenPic1.FileName := '';
  dlgOpenPic1.Execute;
  try
    img1.Picture.LoadFromFile(dlgOpenPic1.FileName);
    img1.Refresh;
    SimpanFoto;
  except
  //ShowMessage('Belum ada foto');
  end;
end;

procedure TKeteranganGambarForm.btnPClick(Sender: TObject);
begin
  inherited;
  if (MessageDlg('Anda yakin akan Menghapus Foto Ini..?', mtConfirmation,
  [mbYes, mbNo], 0) = mrYes) then begin
    hapusfoto;
    img1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) + '\Photo\none.jpg');
    btnP.Enabled := false;
  end;
end;

procedure TKeteranganGambarForm.CancelExecute(Sender: TObject);
begin
  inherited;
  INBarangGambar.Cancel;
  edtBrg.Clear;
  mmo1.Clear;
  img1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) + '\Photo\none.jpg');
end;

procedure TKeteranganGambarForm.edtBrgExit(Sender: TObject);
begin
  inherited;
  if edtBrg.Text = '' then
  begin
    MessageDlg('Tidak Boleh Kosong'#13'Silahkan pilih Kode Barang Terlebih Dahulu !!!',(mtError),[mbOK],0);
    edtBrg.SetFocus;
    Abort;
  end;
end;

procedure TKeteranganGambarForm.edtBrgKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_f4 then
  begin
    btn3Click(sender);
  end;
end;

procedure TKeteranganGambarForm.FormCreate(Sender: TObject);
begin
  inherited;
//  mutex := CreateMutex(nil, True, 'KeteranganGambar');
//  if (mutex = 0) or (GetLastError in [ERROR_ALREADY_EXISTS, ERROR_ACCESS_DENIED]) then
//  begin
//      MessageBox(0, PChar('Aplikasi Sudah Berjalan'),
//      PChar(application.exename), MB_OK or MB_ICONERROR);
//      Self.close;
//  end else
//  begin
    conntrading.Close;
    conntrading.ConnectionString := DBConnectMasterMysql;
    try
//      INBarangGambar.Open;
//      Barang.open;
//      str := ExtractFilePath(Application.ExeName)+'skins';
//      sSkinManager1.SkinDirectory :=  str ;
//      sSkinManager1.SkinName      := 'Office2007';
//      sSkinManager1.Active := true;
    except
      MessageDlg('Tidak dapat melanjutkan operasi selanjutnya karena terjadi ' + #13 +
                'kerusakan, silahkan cek konektivitas Database anda atau hubungi' + #13 +
                'developer sistem ini untuk penanganan lebih lanjut.',(mtError),[mbYes],0);
      self.close;
    end;
//  end;
end;

procedure TKeteranganGambarForm.tampilfoto;
var
lok3:string;
begin//
  if INBarangGambarPathGbr.AsString = '' then
  begin
    img1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) + '\Photo\none.jpg');
  end else
    img1.Picture.LoadFromFile(INBarangGambarPathGbr.AsString);
end;

procedure TKeteranganGambarForm.SimpanExecute(Sender: TObject);
begin
  inherited;
  if edtbrg.Text = '' then
  begin
    MessageDlg('Tidak Boleh Kosong'#13'Silahkan pilih Kode Barang Terlebih Dahulu !!!',(mtError),[mbOK],0);
    edtBrg.SetFocus;
    Abort;
  end;

  with sp_input_Gambar do
  begin
    close;
    Parameters.ParamByName('pathtemp').Value := edt1.Text;
    Parameters.ParamByName('tempketerangan').Value := mmo1.Text;
    Parameters.ParamByName('tempbrgId').Value := edtBrg.Text;
    ExecProc;
  end;
  ShowMessage('Data Berhasil Disimpan');
end;

procedure TKeteranganGambarForm.simpanfoto;
var
  bmp: TBitmap;
  jpg: TJpegImage;
  scale: Double;
  lok1: string;
begin
  jpg := TJpegImage.Create;
  try
    jpg.Loadfromfile(dlgOpenPic1.filename);
    if jpg.Height > jpg.Width then
      scale := 400 / jpg.Height
    else
      scale := 400 / jpg.Width;
    bmp := TBitmap.Create;
    try
      {Create thumbnail bitmap, keep pictures aspect ratio}
      bmp.Width := Round(jpg.Width * scale);
      bmp.Height := Round(jpg.Height * scale);
      bmp.Canvas.StretchDraw(bmp.Canvas.Cliprect, jpg);
      //Self.Canvas.Draw(100, 10, bmp);
      {Convert back to JPEG and save to file}
      //
    jpg.Loadfromfile(dlgOpenPic1.filename);
    if jpg.Height > jpg.Width then
      scale := 400 / jpg.Height
    else
      scale := 400 / jpg.Width;
      lok1:= ExtractFileDir(Application.ExeName);
      {Convert back to JPEG and save to file}
      //
      jpg.Assign(bmp);
      jpg.SaveToFile(ChangeFileExt(lok1+ '\Photo' + '\' +  edtBrg.Text + '', '.jpg')); //ubah nama gambar menjadi = primary key field
    finally
      bmp.free;
    end;
  finally
    jpg.free;
  end;
  fileSource := ChangeFileExt(lok1 + '\Photo' + '\' + edtBrg.Text + '', '.jpg');
  fileDest := lok1 + '\Photo' + '\' + edtBrg.Text + '.jpg';
  edt1.Text := fileDest;
  CopyFile(pchar(fileSource), PChar(fileDest), false);
end;

procedure TKeteranganGambarForm.hapusfoto;
var
  imge,lok2: string;
begin
    //
//      if (path.Caption='Jaringan') then
//      begin
//        lok2:=Label1.Caption;
//      end
//      else
//      begin
        lok2:= ExtractFileDir(Application.ExeName);
//      end;
      //
  imge := INBarangGambarPathGbr.AsString;
  DeleteFile(imge);
  img1.Picture.LoadFromFile(ExtractFileDir(Application.ExeName) + '\Photo\none.jpg');
end;

end.
