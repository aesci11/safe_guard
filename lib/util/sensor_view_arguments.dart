import 'package:safe_guard/src/model/sensor_model.dart';

class SensorViewArguments {
  final String name;
  final List<SensorModel> sensorList;

  SensorViewArguments(this.name, this.sensorList);
}
