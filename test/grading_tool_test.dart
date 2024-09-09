import 'package:flutter_test/flutter_test.dart';
import 'package:grading_tool/grading_tool.dart';

void main() {
  List<int> scores = [96, 86, 76, 66, 56];
  List<String> grades = ['A', 'B', 'C', 'D', 'F'];

  final calculator = GradingTool();

  for (int i = 0; i < grades.length; i++) {
    test('$scores will be converted to $grades', () {
      String result = calculator.letterGrade(scores[i]);
      expect(result, grades[i]);
    });
  }
}
