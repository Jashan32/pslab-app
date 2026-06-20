class CompassConfig {
  final bool includeLocationData;
  final int updatePeriod;

  const CompassConfig({
    this.includeLocationData = false,
    this.updatePeriod = 100,
  });

  CompassConfig copyWith({
    bool? includeLocationData,
    int? updatePeriod,
  }) {
    return CompassConfig(
      includeLocationData: includeLocationData ?? this.includeLocationData,
      updatePeriod: updatePeriod ?? this.updatePeriod,
    );
  }

  factory CompassConfig.fromJson(Map<String, dynamic> json) {
    return CompassConfig(
        includeLocationData: json['includeLocationData'] as bool? ?? false,
        updatePeriod: json['updatePeriod'] ?? 100);
  }

  Map<String, dynamic> toJson() {
    return {
      'includeLocationData': includeLocationData,
      'updatePeriod': updatePeriod
    };
  }
}
