import 'dart:io';

void main(List<String> args) {
  int key;
  print('===PROGRAM INSERTION SORTING===');
  stdout.write('\nmasukkan panjang array : ');
  var kelipatan = int.parse(stdin.readLineSync()!);

  var myArr = List.filled(kelipatan, 0);

  for (var i = 0; i < kelipatan; i++) {
    var indeks = i + 1;
    stdout.write('masukkan nilai array ke $indeks : ');
    myArr[i] = int.parse(stdin.readLineSync()!);
  }

  print('\narray sebelum di sorting : ');
  print(myArr);

  for (var i = 1; i < kelipatan; i++) {
    key = myArr[i];
    var j = i - 1;

    while (j >= 0 && myArr[j] > key) {
      myArr[j + 1] = myArr[j];
      j = j - 1;
      myArr[j + 1] = key;
    }
  }

  print('\narray setelah di sorting(Ascending) : ');
  print(myArr);

  for (var i = 1; i < kelipatan; i++) {
    key = myArr[i];
    var j = i - 1;

    while (j >= 0 && myArr[j] < key) {
      myArr[j + 1] = myArr[j];
      j = j - 1;
      myArr[j + 1] = key;
    }
  }

  print('\narray setelah di sorting(Descending) : ');
  print(myArr);
}
