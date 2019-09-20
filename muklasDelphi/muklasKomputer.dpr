program muklasKomputer;
{*************************
 *************************
 ***  Muklas Rahmanto  ***
 ***       RPL 1       ***
 ***   SMKN 1 BANTUL   ***
 *************************
 *************************}
uses
  Forms,
  muklasUtama in 'muklasUtama.pas' {muklasFUtama},
  muklasBarang in 'muklasBarang.pas' {muklasFBarang},
  muklasBarangTambah in 'muklasBarangTambah.pas' {muklasFBarangTambah},
  muklasKaryawan in 'muklasKaryawan.pas' {muklasFKaryawan},
  muklasKaryawanTambah in 'muklasKaryawanTambah.pas' {muklasFKaryawanTambah},
  muklasTransaksi in 'muklasTransaksi.pas' {muklasFTransaksi},
  muklasFQR_U in 'muklasFQR_U.pas' {muklasFQR},
  muklasLogTransaksi in 'muklasLogTransaksi.pas' {muklasFLogTransaksi},
  muklasLogDetail in 'muklasLogDetail.pas' {muklasFDetail},
  muklasLogin in 'muklasLogin.pas' {muklasFLogin},
  muklasSeting in 'muklasSeting.pas' {muklasFSeting};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'MyCart';
  Application.CreateForm(TmuklasFLogin, muklasFLogin);
  Application.CreateForm(TmuklasFQR, muklasFQR);
  Application.CreateForm(TmuklasFUtama, muklasFUtama);
  Application.CreateForm(TmuklasFTransaksi, muklasFTransaksi);
  Application.Run;
end.
