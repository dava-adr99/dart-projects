import 'dart:io';

void main(List<String> args) {
  var kelipatan = 10;

  stdout.write("Masukkan bilangan untuk dilipatkan :");
  var bilangan = int.parse(stdin.readLineSync()!);

  var myArr = new List.filled(kelipatan, 0);

  for (int i = 0; i < kelipatan; i++) {
    myArr[i] = bilangan *= kelipatan;
  }

  print(myArr);
}
