import 'dart:io';
import 'calculator.dart';

void main() {
  while (true) {
    try {
      stdout.write("Masukkan bilangan pertama: ");
      final inputBilanganPertama = double.parse(stdin.readLineSync()!);

      stdout.write("Masukkan bilangan kedua: ");
      final inputBilanganKedua = double.parse(stdin.readLineSync()!);

      final calculator = Calculator(inputBilanganPertama, inputBilanganKedua);

      print("Pilih operasi matematika:");
      print("[1] Tambah");
      print("[2] Kurang");
      print("[3] Kali");
      print("[4] Bagi");
      stdout.write("Pilihan (1/2/3/4): ");
      final pilihan = stdin.readLineSync();

      double hasil;

      switch (pilihan) {
        case '1':
          hasil = calculator.tambah();
          break;
        case '2':
          hasil = calculator.kurang();
          break;
        case '3':
          hasil = calculator.kali();
          break;
        case '4':
          hasil = calculator.bagi();
          break;
        default:
          throw Exception("Pilihan operasi tidak valid.");
      }

      print("Hasil perhitungan: $hasil");

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
