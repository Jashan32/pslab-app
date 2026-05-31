class AccelerometerConfig {
  final int updatePeriod;
  final int highLimit;
  final int depthLimit;
  final String activeSensor;
  final int sensorGain;
  final bool includeLocationData;

  const AccelerometerConfig({
    this.updatePeriod = 1000,
    this.highLimit = 20,
    this.depthLimit = 20,
    this.activeSensor = 'In-built Sensor',
    this.sensorGain = 1,
    this.includeLocationData = true,
  });

  AccelerometerConfig copyWith({
    int? updatePeriod,
    int? highLimit,
    int? depthLimit,
    String? activeSensor,
    int? sensorGain,
    bool? includeLocationData,
  }) {
    return AccelerometerConfig(
      updatePeriod: updatePeriod ?? this.updatePeriod,
      highLimit: highLimit ?? this.highLimit,
      depthLimit: depthLimit ?? this.depthLimit,
      activeSensor: activeSensor ?? this.activeSensor,
      sensorGain: sensorGain ?? this.sensorGain,
      includeLocationData: includeLocationData ?? this.includeLocationData,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'updatePeriod': updatePeriod,
      'highLimit': highLimit,
      'depthLimit': depthLimit,
      'activeSensor': activeSensor,
      'sensorGain': sensorGain,
      'includeLocationData': includeLocationData,
    };
  }

  factory AccelerometerConfig.fromJson(Map<String, dynamic> json) {
    return AccelerometerConfig(
      updatePeriod: json['updatePeriod'] ?? 1000,
      highLimit: json['highLimit'] ?? 2000,
      depthLimit: json['depthLimit'] ?? 2000,
      activeSensor: json['activeSensor'] ?? 'In-built Sensor',
      sensorGain: json['sensorGain'] ?? 1,
      includeLocationData: json['includeLocationData'] ?? true,
    );
  }
}
