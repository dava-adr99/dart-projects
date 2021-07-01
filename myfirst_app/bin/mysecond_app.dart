import 'dart:io';

void main(List<String> args) {
  int i = 0;

  print("Masukkan Bilangan : ");
  int batas = int.parse(stdin.readLineSync()!);

  if (batas % 2 == 0) {
    stdout.write("kelipatan bilangan ganjil : ");
    for (i = 0; i < batas; i++) {
      i = i + 1;
      stdout.write("$i, ");
    }
  } else if (batas % 2 == 1) {
    stdout.write("kelipatan bilangan genap : ");
    for (i = 1; i < batas; i++) {
      i = i + 1;
      stdout.write("$i, ");
    }
  } else {
    print("bilangan yang anda masukkan salah");
  }
}
