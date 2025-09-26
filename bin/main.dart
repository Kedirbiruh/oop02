import '../lib/triangle.dart';

void main() {
  final t1 = Triangle.mm(100, 40);
  final t2 = Triangle.cm(40, 20);
  final t3 = Triangle.dm(10, 4);
  final t4 = Triangle.m(7, 9);
  final t5 = Triangle.from(2.5, 3.0, MeasurementSystem.m);

  print(t1);
  print(t2);
  print(t3);
  print(t4);
  print(t5);

  print("Fläche in cm²: ${t1.areaInMm2}");
  print("Fläche in m²: ${t4.areaInMm2}");
}
