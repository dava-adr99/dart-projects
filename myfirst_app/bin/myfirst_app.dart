import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Nama : ");
  String nama = stdin.readLineSync()!;

  stdout.write("Umur : ");
  int umur = int.parse(stdin.readLineSync()!);

  stdout.write("TTL : ");
  String ttl = stdin.readLineSync()!;

  print("\n hai $nama selamat datang di program biodata");
  print("ini adalah keterangan dari diri kamu");
  print("umur kamu : $umur");
  print("tempat tanggal lahir : $ttl");
}
