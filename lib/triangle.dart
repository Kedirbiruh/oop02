import 'dart:collection';

enum MeasurementSystem { mm, cm, dm, m, inch, feet }

class Triangle {
  //in mm
  final double widthInMm;
  final double heightInMm;
  final MeasurementSystem measurementSystem;

  // Privater interner Konstruktor
  Triangle._internal(this.widthInMm, this.heightInMm, this.measurementSystem);

  // öffentliche Konstruktoren
  Triangle.mm(double width, double height)
    : this._internal(width, height, MeasurementSystem.mm);

  Triangle.cm(double width, double height)
    : this._internal(width * 10, height * 10, MeasurementSystem.cm);

  Triangle.dm(double width, double height)
    : this._internal(width * 100, height * 100, MeasurementSystem.dm);

  Triangle.m(double width, double height)
    : this._internal(width * 1000, height * 1000, MeasurementSystem.m);

  Triangle.inch(double width, double height)
    : this._internal(width * 25.4, height * 25.4, MeasurementSystem.inch);

  Triangle.feet(double width, double height)
    : this._internal(width * 304.8, height * 304.8, MeasurementSystem.feet);

  // Konstruktor mit beliebigem System
  Triangle.from(double width, double height, MeasurementSystem system)
    : this._internal(width * factor(system), height * factor(system), system);

  static double factor(MeasurementSystem measurementSystem) {
    switch (measurementSystem) {
      case MeasurementSystem.mm:
        return 1.0;
      case MeasurementSystem.cm:
        return 10.0;
      case MeasurementSystem.dm:
        return 100.0;
      case MeasurementSystem.m:
        return 1000.0;
      case MeasurementSystem.inch:
        return 25.4;
      case MeasurementSystem.feet:
        return 304.8;
    }
  }

  // area in mm2
  double get areaInMm2 => 0.5 * widthInMm * heightInMm;

  @override
  String toString() {
    return 'Triangle(width: $widthInMm mm, height: $heightInMm mm, system: $measurementSystem, area: ${areaInMm2.toString} mm²)';
  }
}
