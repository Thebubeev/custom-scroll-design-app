class Days {
  final String month;
  final String number;
  final String day;
  final bool isToday;
  final bool isOrange;
  final bool isBlue;

  Days({
    required this.month,
    required this.number,
    required this.day,
    required this.isToday,
    required this.isOrange,
    required this.isBlue,
  });

  static List<Days> allDays = [
    Days(
      isToday: true,
      isOrange: true,
      isBlue: false,
      day: 'Mon',
      month: 'Oct',
      number: '18',
    ),
    Days(
      isToday: false,
      isOrange: false,
      isBlue: true,
      day: 'Tue',
      month: 'Oct',
      number: '19',
    ),
    Days(
      isOrange: false,
      isBlue: false,
      day: 'Wed',
      month: 'Oct',
      number: '20',
      isToday: false,
    ),
    Days(
      isOrange: true,
      isBlue: false,
      day: 'Thu',
      month: 'Oct',
      number: '21',
      isToday: false,
    ),
    Days(
      isOrange: false,
      isBlue: false,
      day: 'Fri',
      month: 'Oct',
      number: '22',
      isToday: false,
    ),
    Days(
      isOrange: false,
      isBlue: false,
      day: 'Sat',
      month: 'Oct',
      number: '23',
      isToday: false,
    ),
    Days(
      isOrange: false,
      isBlue: false,
      day: 'Sun',
      month: 'Oct',
      number: '24',
      isToday: false,
    ),
  ];
}
