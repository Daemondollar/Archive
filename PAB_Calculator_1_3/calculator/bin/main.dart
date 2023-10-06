import 'dart:io';
import 'calculator.dart';

void main() {
  while (true) {
    try {
      stdout.write("Masukkan bilangan pertama: ");
      final firstNumber = double.parse(stdin.readLineSync()!);

      stdout.write("Masukkan bilangan kedua: ");
      final secondNumber = double.parse(stdin.readLineSync()!);

      final calculator = Calculator(firstNumber, secondNumber);

      print("Pilih operasi matematika:");
      print("[1] Tambah");
      print("[2] Kurang");
      print("[3] Kali");
      print("[4] Bagi");
      stdout.write("Pilihan (1/2/3/4): ");
      final choice = stdin.readLineSync();

      double result;

      switch (choice) {
        case '1':
          result = calculator.tambah();
          break;
        case '2':
          result = calculator.kurang();
          break;
        case '3':
          result = calculator.kali();
          break;
        case '4':
          result = calculator.bagi();
          break;
        default:
          throw Exception("Pilihan operasi tidak valid.");
      }

      print("Hasil perhitungan: $result");

      stdout.write("Lakukan perhitungan lagi? (Y/T): ");
      final ulangi = stdin.readLineSync();

      if (ulangi?.toLowerCase() != 'y') {
        break;
      }
    } catch (error) {
      print("Terjadi kesalahan: $error");
    }
  }
}
