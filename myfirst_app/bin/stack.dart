import 'dart:io';

import 'package:stack/stack.dart';

void main() {
  try {
    Stack<String> stack = new Stack();

    stdin.readLineSync();

    while (true) {
      print("\n---Contoh stack---");
      print(
          "\nPilih menu : \n1. Push \n2. Pop \n3. Peek\n4. Tampilkan\n5. Exit\n\nMasukkan pilihan : ");
      int pilihan = int.parse(stdin.readLineSync()!);

      switch (pilihan) {
        case 1:
          {
            stdout.write("\nMasukkan data yang ingin di push : ");
            stack.push(stdin.readLineSync()!);
            print("Berhasil Push data");
            break;
          }
          ;
        case 2:
          {
            print("Data yang di pop " + stack.pop());
            print("Berhasil pop data");
            break;
          }

        case 3:
          {
            print("\n---- Hasil Peek ----");
            print(stack.top());
            print("---------------------");
            break;
          }
        case 4:
          {
            print("\n------- Stack --------");
            print(stack.toString());
            print("---------------------");
            break;
          }
        case 5:
          exit(0);
      }
    }
  } catch (NosuchElementException, EmptyStackException) {
    print("Stack masih kosong");
  }
}
