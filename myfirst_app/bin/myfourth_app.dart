import 'dart:io';

void main(List<String> args) {
  stdout.write("masukkan bilangan faktorial : ");
  int bilangan = int.parse(stdin.readLineSync()!);

  List<int> faktorial = List.filled(bilangan, 0);

  faktorial[0] = bilangan;

  for (var i = 1; i < bilangan; i++) {
    faktorial[i] = bilangan - i;
  }

  var hasil = 1;

  for (var i = 0; i < bilangan; i++) {
    hasil = hasil * faktorial[i];
  }

  stdout.write("\n$bilangan! = ");
  for (var i = 0; i < bilangan; i++) {
    stdout.write(faktorial[i]);
    stdout.write(" ");
  }
  print(" = $hasil");
}
