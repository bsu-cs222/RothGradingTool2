import 'package:flutter_test/flutter_test.dart';
import 'package:grading_tool/grading_tool.dart';

void main() {
  List<int> scores = [101, 96, 86, 76, 66, 56, -1];
  List<String> grades = ['A', 'A', 'B', 'C', 'D', 'F', 'F'];
  final calculator = GradeTool();

  for (int i = 0; i < grades.length; i++) {
    test('$scores will be converted to $grades', () {
      String result = calculator.letterGradeCalculator(scores[i]);
      expect(result, grades[i]);
    });
  }
}
