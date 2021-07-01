import 'dart:io';

void main(List<String> args) {
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

  int temp;
  int min;
  for (var i = 0; i < myArr.length - 1; i++) {
    min = i;
    for (var j = i + 1; j < myArr.length; j++) {
      if (myArr[j] < myArr[min]) {
        min = j;
      }
    }
    temp = myArr[i];
    myArr[i] = myArr[min];
    myArr[min] = temp;
  }

  print('\narray sesudah di sorting : ');
  print("ASCENDING : \n $myArr");

  int max;
  for (var i = 0; i < myArr.length - 1; i++) {
    max = i;
    for (var j = i + 1; j < myArr.length; j++) {
      if (myArr[j] > myArr[max]) {
        max = j;
      }
    }
    temp = myArr[i];
    myArr[i] = myArr[max];
    myArr[max] = temp;
  }

  print("DESCENDING : \n $myArr");
}
