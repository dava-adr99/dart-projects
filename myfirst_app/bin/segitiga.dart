import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  print("\n== PROGRAM BANGUN SEGITIGA ===");
  stdout.write("\nmasukkan alas segitiga : ");
  double alas = double.parse(stdin.readLineSync()!);

  stdout.write("masukkan tinggi segitiga : ");
  double tinggi = double.parse(stdin.readLineSync()!);

  print("\nSegitiga sama sisi ==>");
  segitiga(alas: alas);
  print("\nSegitiga sama kaki ==>");
  segitiga(alas: alas, tinggi: tinggi);
}

void tampilkan(double alas, double tinggi, double hasil) {
  print("Alas segitiga : $alas");
  print("Tinggi segitiga : $tinggi");
  print("Luas segitiga : $hasil");
}

void segitiga({double alas = 0, double tinggi = 0}) {
  double hasil = 0;
  double setengahAlas = 1 / 2 * alas;

  if (tinggi == 0) {
    tinggi = sqrt((alas * alas) - (setengahAlas * setengahAlas));
    hasil = 1 / 2 * alas * tinggi;
    tampilkan(alas, tinggi, hasil);
  } else {
    hasil = 1 / 2 * alas * tinggi;
    tampilkan(alas, tinggi, hasil);
  }
}
