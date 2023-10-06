class Calculator {
  double bilanganPertama;
  double bilanganKedua;

  Calculator(this.bilanganPertama, this.bilanganKedua);

  double tambah() {
    return bilanganPertama + bilanganKedua;
  }

  double kurang() {
    return bilanganPertama - bilanganKedua;
  }

  double kali() {
    return bilanganPertama * bilanganKedua;
  }

  double bagi() {
    if (bilanganKedua != 0) {
      return bilanganPertama / bilanganKedua;
    } else {
      throw Exception("Pembagian oleh nol tidak diperbolehkan.");
    }
  }
}

