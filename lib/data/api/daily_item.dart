class DailyItem {
  late int dt;
  late double temp;
  late int wind;
  late int humidity;
  late int pressure;
  late String main;

  DailyItem({
      required this.dt,
      required this.temp,
      required this.wind,
      required this.humidity,
      required this.pressure,
      required this.main
  });
}