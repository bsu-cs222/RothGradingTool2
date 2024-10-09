class GradeTool {
  String calculateLetterGrade(int score) {
    switch (score) {
      case >= 90:
        return "A";
      case >= 80:
        return "B";
      case >= 70:
        return "C";
      case >= 60:
        return "D";
      default:
        return "F";
    }
  }
}
