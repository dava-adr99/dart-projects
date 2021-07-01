import 'dart:io';

void main(List<String> args) {
  print("\n=== Program Menentukan Bangun Persegi & Persegi Panjang ===");

  int lebar;
  stdout.write("masukkan nilai lebar : ");
  lebar = int.parse(stdin.readLineSync()!);

  int panjang;
  stdout.write("masukkan nilai panjang : ");
  panjang = int.parse(stdin.readLineSync()!);

  kotak(panjang: lebar, lebar: panjang);
  kotak(lebar: panjang);
}

void kotak({int panjang = 0, int lebar = 0}) {
  int hasil;
  if (panjang == 0) {
    hasil = lebar * lebar;
    print("hasil dari luas Persegi adalah $hasil");
  } else {
    hasil = lebar * panjang;
    print("hasil dari luas Persegi Panjang adalah $hasil");
  }
}
