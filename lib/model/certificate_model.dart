class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    required this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Getting started with Flutter Development',
    organization: 'Udemy',
    date: 'September 2022',
    skills: 'Flutter . Dart',
    credential:  '',
  ),
  CertificateModel(
    name: 'Flutter SQLite Database with full project',
    organization: 'Udemy',
    date: 'June 2024',
    skills: 'Flutter . iOS Development . Android Development',
    credential:  'https://www.udemy.com/certificate/UC-7dea9644-e9f5-41a2-b32b-7e64c6c1cedc/',
  ),









];
