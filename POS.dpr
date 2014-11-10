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
  HBeli in 'Harga Beli\HBeli.pas' {HBeliForm},
  HJual in 'Harga Jual\HJual.pas' {HJualForm},
  JHarga in 'Jenis Harga\JHarga.pas' {JHargaForm},
  Login in 'Login\Login.pas' {LoginForm},
  HJualPerKode in 'Harga Jual\HJualPerKode.pas' {HJualPerKodeForm},
  HJualMassal in 'Harga Jual\HJualMassal.pas' {HJualMassalForm},
  HJualTerendah in 'Harga Jual\HJualTerendah.pas' {HJualTerendahForm},
  lokasiRak in 'Lokasi-Rak\lokasiRak.pas' {LokasiRakForm},
  Supplier in 'Supplier\Supplier.pas' {SupplierForm},
  FSupplier in 'Supplier\FSupplier.pas' {fSupplierForm},
  INNoUrut in 'Nourut\INNoUrut.pas' {INNoUrutForm},
  INNoUrutket in 'Nourut\INNoUrutket.pas' {innourutketForm},
  APNoUrut in 'Nourut\APNoUrut.pas' {APNOUrutForm},
  APNoUrutKet in 'Nourut\APNoUrutKet.pas' {APNoUrutKetForm},
  ARNoUrut in 'Nourut\ARNoUrut.pas' {ARNoUrutForm},
  ARNoUrutKet in 'Nourut\ARNoUrutKet.pas' {ARNoUrutKetForm},
  historiStock in 'Histori Stock\historiStock.pas' {historiStockForm},
  CreateMenu in 'Menu Aplikasi\CreateMenu.pas' {CreateMenuForm},
  konfBarang in 'Konfigurasi-Barang\konfBarang.pas' {konfigBarangForm},
  fkonfBarang in 'Konfigurasi-Barang\fkonfBarang.pas' {fkonfbarangform};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'POINT OF SALES BETA VERSION';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TkonfigBarangForm, konfigBarangForm);
  Application.CreateForm(Tfkonfbarangform, fkonfbarangform);
  Application.Run;
end.
