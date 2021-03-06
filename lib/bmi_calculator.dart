import 'dart:math';

class BMICalculator {
  int height;
  int weight;

  double _bmi;

  BMICalculator({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You need to go on a diet. I suggest keto.';
    } else if (_bmi > 18.5) {
      return "You're in good shape as is!";
    } else {
      return 'Eat more food!';
    }
  }
}
