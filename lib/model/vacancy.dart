class Vacancy {

  Vacancy({this.title, this.successRate, this.time, this.isActive = false});

  final String title;
  final int successRate;
  final String time;
  bool isActive;
}

List<Vacancy> allVacancies = [
  Vacancy(
    title: 'User Interface Designer',
    successRate: 12,
    time: '3s ago',
  ),
  Vacancy(
    title: 'UX Designer',
    successRate: 66,
    time: '13:03'
  ),
  Vacancy(
    title: 'Motion Designer',
    successRate: 2,
    time: '09:20'
  )
];