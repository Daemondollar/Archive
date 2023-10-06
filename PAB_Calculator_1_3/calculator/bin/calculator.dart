class Calculator {
  double firstNumber;
  double secondNumber;

  Calculator(this.firstNumber, this.secondNumber);

  double tambah() {
    return firstNumber + secondNumber;
  }

  double kurang() {
    return firstNumber - secondNumber;
  }

  double kali() {
    return firstNumber * secondNumber;
  }

  double bagi() {
    if (secondNumber != 0) {
      return firstNumber / secondNumber;
    } else {
      throw Exception("Pembagian oleh nol tidak diperbolehkan.");
    }
  }
}

