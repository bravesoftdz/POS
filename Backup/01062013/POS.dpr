program POS;

uses
  Forms,
  Main in 'Menu Aplikasi\Main.pas' {MainForm},
  info in 'Informasi\info.pas' {InformasiFrame: TFrame},
  template in 'Template\template.pas' {templateForm},
  Merk in 'Merk\Merk.pas' {MerkForm},
  uInfoHardware in 'Library\uInfoHardware.pas' {FMInfoAplikasi},
  AES in 'Library\AES.pas',
  ElAES in 'Library\ElAES.pas',
  eshardwareid in 'Library\eshardwareid.pas',
  FormConnection in 'Library\FormConnection.pas' {DatabasePromptForm},
  Kategori in 'Kategori\Kategori.pas' {KategoriForm},
  Rak in 'Lokasi-Rak\Rak.pas' {RakForm},
  Barang in 'Barang\Barang.pas' {BarangForm},
  templatestayontop in 'Template\templatestayontop.pas' {FormTemplateStayOnTop},
  FBarang in 'Barang\FBarang.pas' {TransaksiBarang},
  Jenis in 'Jenis\Jenis.pas' {JenisForm},
  Golongan in 'Golongan\Golongan.pas' {GolonganForm},
  Gudang in 'Gudang\Gudang.pas' {GudangForm},
  Cabang in 'Cabang\Cabang.pas' {CabangForm},
  ValutaPurchase in 'Valuta Purchase\ValutaPurchase.pas' {ValutaPurchaseForm},
  ValutaSales in 'Valuta Sales\ValutaSales.pas' {ValutaSalesForm},
  SaldoAwalBarang in 'Saldo Awal\Barang\SaldoAwalBarang.pas' {SaldoAwalBarangForm},
  Search in 'Search\Search.pas' {SearchForm},
  WilayahPurchase in 'WilayahPurchase\WilayahPurchase.pas' {WilayahPurchaseForm},
  WilayahSales in 'WilayahSales\WilayahSales.pas' {WilayahSalesForm},
  KeteranganGambar in 'Keterangan dan Gambar\KeteranganGambar.pas' {KeteranganGambarForm},
  MinMax in 'Min_Max\MinMax.pas' {MinMaxForm},
  HBeli in 'Harga Beli\HBeli.pas' {HBeliForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'POINT OF SALES BETA VERSION';
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
