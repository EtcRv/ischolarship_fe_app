class ScholarshipModel {
  ScholarshipModel(
      {required this.id,
      required this.name,
      required this.image,
      required this.organization,
      required this.location,
      required this.deadline,
      required this.level,
      required this.field,
      required this.link,
      required this.requirement,
      required this.description,
      required this.type,
      this.applyLocation = "",
      this.ranking = 0,
      this.value = ""});

  final String id;
  final String name;
  final String image;
  final String organization;
  final String location;
  final String applyLocation;
  final int ranking;
  final String deadline;
  final ScholarshipType type;
  final String value;
  final DegreeType level;
  final String field;
  final String link;
  final Requirement requirement;
  final String description;
}

enum ScholarshipType {
  academic,
  government,
  full,
  tuition,
  shortterm,
  organizations,
  exchange,
  financial
}

enum DegreeType { intermediate, collage, university, master, doctoral }

class Requirement {
  Requirement(
      {required this.score,
      required this.competitions,
      required this.experience,
      required this.activities});

  final Score score;
  final bool competitions;
  final bool experience;
  final String activities;
}

class Score {
  Score(
      {this.CPA = 0,
      this.CompetencyAssessment = 0,
      this.GraduationExam = 0,
      this.IELTS = 0,
      this.SAT = 0,
      this.TOEIC = 0,
      this.TOELF = 0});

  double CPA;
  double GraduationExam;
  double CompetencyAssessment;
  double SAT;
  double IELTS;
  double TOEIC;
  double TOELF;
}
