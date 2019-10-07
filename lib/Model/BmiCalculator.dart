import 'dart:math';

class BmiCalculator {
  final double height;
  final double weight;

  double _bmi;

  BmiCalculator({this.height, this.weight});

  String getBmiResult() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getResultString() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Nomal";
    } else {
      return "Underweight";
    }
  }

  String getInterpertation() {
    if (_bmi >= 25) {
      return "You have a higher than nomal body weight. Try to excercise more.";
    } else if (_bmi > 18.5) {
      return "You have a nomal body weight. Good job!";
    } else {
      return "You have lower  than nomal body weight. You can eat more.";
    }
  }
}
