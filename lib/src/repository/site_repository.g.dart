// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getSiteListHash() => r'6a80c15273101b61892cc8162bed3a6f18910924';

/// 사이트 리스트 요청
///
/// Copied from [getSiteList].
@ProviderFor(getSiteList)
final getSiteListProvider =
    AutoDisposeFutureProvider<List<SiteListModel>>.internal(
  getSiteList,
  name: r'getSiteListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getSiteListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetSiteListRef = AutoDisposeFutureProviderRef<List<SiteListModel>>;
String _$getSiteInfoHash() => r'3b55b1268fbf5663a8318abbe75f284a16019bc3';

/// 사이트 정보 요청
///
/// Copied from [getSiteInfo].
@ProviderFor(getSiteInfo)
final getSiteInfoProvider = AutoDisposeFutureProvider<SiteModel>.internal(
  getSiteInfo,
  name: r'getSiteInfoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$getSiteInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetSiteInfoRef = AutoDisposeFutureProviderRef<SiteModel>;
String _$getBuildingListHash() => r'd06b50965e5b49b6e5cf506882b1d4a3dbafcb50';

/// 빌딩 리스트 요청
///
/// Copied from [getBuildingList].
@ProviderFor(getBuildingList)
final getBuildingListProvider =
    AutoDisposeFutureProvider<List<BuildingModel>>.internal(
  getBuildingList,
  name: r'getBuildingListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getBuildingListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetBuildingListRef = AutoDisposeFutureProviderRef<List<BuildingModel>>;
String _$getBuildingStatusListHash() =>
    r'93ddbfa90ab041a4d37ae93f65d11e294e367103';

/// 빌딩 상태 리스트 요청
///
/// Copied from [getBuildingStatusList].
@ProviderFor(getBuildingStatusList)
final getBuildingStatusListProvider =
    AutoDisposeFutureProvider<List<BuildingStatusList>>.internal(
  getBuildingStatusList,
  name: r'getBuildingStatusListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getBuildingStatusListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetBuildingStatusListRef
    = AutoDisposeFutureProviderRef<List<BuildingStatusList>>;
String _$updateBuildingSecurityHash() =>
    r'213b3544dcd491d02acafaac50446bb8fa7e94b9';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// 빌딩 경계 시작 & 해제
///
/// Copied from [updateBuildingSecurity].
@ProviderFor(updateBuildingSecurity)
const updateBuildingSecurityProvider = UpdateBuildingSecurityFamily();

/// 빌딩 경계 시작 & 해제
///
/// Copied from [updateBuildingSecurity].
class UpdateBuildingSecurityFamily extends Family<AsyncValue<void>> {
  /// 빌딩 경계 시작 & 해제
  ///
  /// Copied from [updateBuildingSecurity].
  const UpdateBuildingSecurityFamily();

  /// 빌딩 경계 시작 & 해제
  ///
  /// Copied from [updateBuildingSecurity].
  UpdateBuildingSecurityProvider call(
    int securityCode,
    String buildingId,
  ) {
    return UpdateBuildingSecurityProvider(
      securityCode,
      buildingId,
    );
  }

  @override
  UpdateBuildingSecurityProvider getProviderOverride(
    covariant UpdateBuildingSecurityProvider provider,
  ) {
    return call(
      provider.securityCode,
      provider.buildingId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updateBuildingSecurityProvider';
}

/// 빌딩 경계 시작 & 해제
///
/// Copied from [updateBuildingSecurity].
class UpdateBuildingSecurityProvider extends AutoDisposeFutureProvider<void> {
  /// 빌딩 경계 시작 & 해제
  ///
  /// Copied from [updateBuildingSecurity].
  UpdateBuildingSecurityProvider(
    int securityCode,
    String buildingId,
  ) : this._internal(
          (ref) => updateBuildingSecurity(
            ref as UpdateBuildingSecurityRef,
            securityCode,
            buildingId,
          ),
          from: updateBuildingSecurityProvider,
          name: r'updateBuildingSecurityProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$updateBuildingSecurityHash,
          dependencies: UpdateBuildingSecurityFamily._dependencies,
          allTransitiveDependencies:
              UpdateBuildingSecurityFamily._allTransitiveDependencies,
          securityCode: securityCode,
          buildingId: buildingId,
        );

  UpdateBuildingSecurityProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.securityCode,
    required this.buildingId,
  }) : super.internal();

  final int securityCode;
  final String buildingId;

  @override
  Override overrideWith(
    FutureOr<void> Function(UpdateBuildingSecurityRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UpdateBuildingSecurityProvider._internal(
        (ref) => create(ref as UpdateBuildingSecurityRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        securityCode: securityCode,
        buildingId: buildingId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<void> createElement() {
    return _UpdateBuildingSecurityProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdateBuildingSecurityProvider &&
        other.securityCode == securityCode &&
        other.buildingId == buildingId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, securityCode.hashCode);
    hash = _SystemHash.combine(hash, buildingId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdateBuildingSecurityRef on AutoDisposeFutureProviderRef<void> {
  /// The parameter `securityCode` of this provider.
  int get securityCode;

  /// The parameter `buildingId` of this provider.
  String get buildingId;
}

class _UpdateBuildingSecurityProviderElement
    extends AutoDisposeFutureProviderElement<void>
    with UpdateBuildingSecurityRef {
  _UpdateBuildingSecurityProviderElement(super.provider);

  @override
  int get securityCode =>
      (origin as UpdateBuildingSecurityProvider).securityCode;
  @override
  String get buildingId =>
      (origin as UpdateBuildingSecurityProvider).buildingId;
}

String _$getSensorListHash() => r'afad9a7dbe5aa52323933d974a876e620e46a5d2';

/// 센서 리스트 요청
///
/// Copied from [getSensorList].
@ProviderFor(getSensorList)
const getSensorListProvider = GetSensorListFamily();

/// 센서 리스트 요청
///
/// Copied from [getSensorList].
class GetSensorListFamily extends Family<AsyncValue<List<SensorModel>>> {
  /// 센서 리스트 요청
  ///
  /// Copied from [getSensorList].
  const GetSensorListFamily();

  /// 센서 리스트 요청
  ///
  /// Copied from [getSensorList].
  GetSensorListProvider call(
    String buildingId,
  ) {
    return GetSensorListProvider(
      buildingId,
    );
  }

  @override
  GetSensorListProvider getProviderOverride(
    covariant GetSensorListProvider provider,
  ) {
    return call(
      provider.buildingId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getSensorListProvider';
}

/// 센서 리스트 요청
///
/// Copied from [getSensorList].
class GetSensorListProvider
    extends AutoDisposeFutureProvider<List<SensorModel>> {
  /// 센서 리스트 요청
  ///
  /// Copied from [getSensorList].
  GetSensorListProvider(
    String buildingId,
  ) : this._internal(
          (ref) => getSensorList(
            ref as GetSensorListRef,
            buildingId,
          ),
          from: getSensorListProvider,
          name: r'getSensorListProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSensorListHash,
          dependencies: GetSensorListFamily._dependencies,
          allTransitiveDependencies:
              GetSensorListFamily._allTransitiveDependencies,
          buildingId: buildingId,
        );

  GetSensorListProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.buildingId,
  }) : super.internal();

  final String buildingId;

  @override
  Override overrideWith(
    FutureOr<List<SensorModel>> Function(GetSensorListRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSensorListProvider._internal(
        (ref) => create(ref as GetSensorListRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        buildingId: buildingId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<SensorModel>> createElement() {
    return _GetSensorListProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSensorListProvider && other.buildingId == buildingId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, buildingId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetSensorListRef on AutoDisposeFutureProviderRef<List<SensorModel>> {
  /// The parameter `buildingId` of this provider.
  String get buildingId;
}

class _GetSensorListProviderElement
    extends AutoDisposeFutureProviderElement<List<SensorModel>>
    with GetSensorListRef {
  _GetSensorListProviderElement(super.provider);

  @override
  String get buildingId => (origin as GetSensorListProvider).buildingId;
}

String _$getSmokeSensorStatusHash() =>
    r'62a305f20f26785a837342cefd87b3c70980f939';

/// 복합 센서 정보 요청
///
/// Copied from [getSmokeSensorStatus].
@ProviderFor(getSmokeSensorStatus)
const getSmokeSensorStatusProvider = GetSmokeSensorStatusFamily();

/// 복합 센서 정보 요청
///
/// Copied from [getSmokeSensorStatus].
class GetSmokeSensorStatusFamily extends Family<AsyncValue<SmokeSensorModel?>> {
  /// 복합 센서 정보 요청
  ///
  /// Copied from [getSmokeSensorStatus].
  const GetSmokeSensorStatusFamily();

  /// 복합 센서 정보 요청
  ///
  /// Copied from [getSmokeSensorStatus].
  GetSmokeSensorStatusProvider call(
    String sensorId,
  ) {
    return GetSmokeSensorStatusProvider(
      sensorId,
    );
  }

  @override
  GetSmokeSensorStatusProvider getProviderOverride(
    covariant GetSmokeSensorStatusProvider provider,
  ) {
    return call(
      provider.sensorId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getSmokeSensorStatusProvider';
}

/// 복합 센서 정보 요청
///
/// Copied from [getSmokeSensorStatus].
class GetSmokeSensorStatusProvider
    extends AutoDisposeFutureProvider<SmokeSensorModel?> {
  /// 복합 센서 정보 요청
  ///
  /// Copied from [getSmokeSensorStatus].
  GetSmokeSensorStatusProvider(
    String sensorId,
  ) : this._internal(
          (ref) => getSmokeSensorStatus(
            ref as GetSmokeSensorStatusRef,
            sensorId,
          ),
          from: getSmokeSensorStatusProvider,
          name: r'getSmokeSensorStatusProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getSmokeSensorStatusHash,
          dependencies: GetSmokeSensorStatusFamily._dependencies,
          allTransitiveDependencies:
              GetSmokeSensorStatusFamily._allTransitiveDependencies,
          sensorId: sensorId,
        );

  GetSmokeSensorStatusProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sensorId,
  }) : super.internal();

  final String sensorId;

  @override
  Override overrideWith(
    FutureOr<SmokeSensorModel?> Function(GetSmokeSensorStatusRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetSmokeSensorStatusProvider._internal(
        (ref) => create(ref as GetSmokeSensorStatusRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sensorId: sensorId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<SmokeSensorModel?> createElement() {
    return _GetSmokeSensorStatusProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetSmokeSensorStatusProvider && other.sensorId == sensorId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sensorId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetSmokeSensorStatusRef
    on AutoDisposeFutureProviderRef<SmokeSensorModel?> {
  /// The parameter `sensorId` of this provider.
  String get sensorId;
}

class _GetSmokeSensorStatusProviderElement
    extends AutoDisposeFutureProviderElement<SmokeSensorModel?>
    with GetSmokeSensorStatusRef {
  _GetSmokeSensorStatusProviderElement(super.provider);

  @override
  String get sensorId => (origin as GetSmokeSensorStatusProvider).sensorId;
}

String _$getPanelStatusInfoHash() =>
    r'd3d8c3c872fea2a93b02870ad0dbb99bab0730f4';

/// 분전반 정보 요청
///
/// Copied from [getPanelStatusInfo].
@ProviderFor(getPanelStatusInfo)
const getPanelStatusInfoProvider = GetPanelStatusInfoFamily();

/// 분전반 정보 요청
///
/// Copied from [getPanelStatusInfo].
class GetPanelStatusInfoFamily extends Family<AsyncValue<PanelModel?>> {
  /// 분전반 정보 요청
  ///
  /// Copied from [getPanelStatusInfo].
  const GetPanelStatusInfoFamily();

  /// 분전반 정보 요청
  ///
  /// Copied from [getPanelStatusInfo].
  GetPanelStatusInfoProvider call(
    String sensorId,
  ) {
    return GetPanelStatusInfoProvider(
      sensorId,
    );
  }

  @override
  GetPanelStatusInfoProvider getProviderOverride(
    covariant GetPanelStatusInfoProvider provider,
  ) {
    return call(
      provider.sensorId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getPanelStatusInfoProvider';
}

/// 분전반 정보 요청
///
/// Copied from [getPanelStatusInfo].
class GetPanelStatusInfoProvider
    extends AutoDisposeFutureProvider<PanelModel?> {
  /// 분전반 정보 요청
  ///
  /// Copied from [getPanelStatusInfo].
  GetPanelStatusInfoProvider(
    String sensorId,
  ) : this._internal(
          (ref) => getPanelStatusInfo(
            ref as GetPanelStatusInfoRef,
            sensorId,
          ),
          from: getPanelStatusInfoProvider,
          name: r'getPanelStatusInfoProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getPanelStatusInfoHash,
          dependencies: GetPanelStatusInfoFamily._dependencies,
          allTransitiveDependencies:
              GetPanelStatusInfoFamily._allTransitiveDependencies,
          sensorId: sensorId,
        );

  GetPanelStatusInfoProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sensorId,
  }) : super.internal();

  final String sensorId;

  @override
  Override overrideWith(
    FutureOr<PanelModel?> Function(GetPanelStatusInfoRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetPanelStatusInfoProvider._internal(
        (ref) => create(ref as GetPanelStatusInfoRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sensorId: sensorId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<PanelModel?> createElement() {
    return _GetPanelStatusInfoProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetPanelStatusInfoProvider && other.sensorId == sensorId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sensorId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetPanelStatusInfoRef on AutoDisposeFutureProviderRef<PanelModel?> {
  /// The parameter `sensorId` of this provider.
  String get sensorId;
}

class _GetPanelStatusInfoProviderElement
    extends AutoDisposeFutureProviderElement<PanelModel?>
    with GetPanelStatusInfoRef {
  _GetPanelStatusInfoProviderElement(super.provider);

  @override
  String get sensorId => (origin as GetPanelStatusInfoProvider).sensorId;
}

String _$panelResetHash() => r'e4c51d1253c9fd7b4a508cb34783d99b28605dcf';

/// 분전반 리셋
///
/// Copied from [panelReset].
@ProviderFor(panelReset)
const panelResetProvider = PanelResetFamily();

/// 분전반 리셋
///
/// Copied from [panelReset].
class PanelResetFamily extends Family<AsyncValue<Map<String, dynamic>>> {
  /// 분전반 리셋
  ///
  /// Copied from [panelReset].
  const PanelResetFamily();

  /// 분전반 리셋
  ///
  /// Copied from [panelReset].
  PanelResetProvider call(
    String sensorId,
  ) {
    return PanelResetProvider(
      sensorId,
    );
  }

  @override
  PanelResetProvider getProviderOverride(
    covariant PanelResetProvider provider,
  ) {
    return call(
      provider.sensorId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'panelResetProvider';
}

/// 분전반 리셋
///
/// Copied from [panelReset].
class PanelResetProvider
    extends AutoDisposeFutureProvider<Map<String, dynamic>> {
  /// 분전반 리셋
  ///
  /// Copied from [panelReset].
  PanelResetProvider(
    String sensorId,
  ) : this._internal(
          (ref) => panelReset(
            ref as PanelResetRef,
            sensorId,
          ),
          from: panelResetProvider,
          name: r'panelResetProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$panelResetHash,
          dependencies: PanelResetFamily._dependencies,
          allTransitiveDependencies:
              PanelResetFamily._allTransitiveDependencies,
          sensorId: sensorId,
        );

  PanelResetProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.sensorId,
  }) : super.internal();

  final String sensorId;

  @override
  Override overrideWith(
    FutureOr<Map<String, dynamic>> Function(PanelResetRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PanelResetProvider._internal(
        (ref) => create(ref as PanelResetRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        sensorId: sensorId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Map<String, dynamic>> createElement() {
    return _PanelResetProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PanelResetProvider && other.sensorId == sensorId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, sensorId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PanelResetRef on AutoDisposeFutureProviderRef<Map<String, dynamic>> {
  /// The parameter `sensorId` of this provider.
  String get sensorId;
}

class _PanelResetProviderElement
    extends AutoDisposeFutureProviderElement<Map<String, dynamic>>
    with PanelResetRef {
  _PanelResetProviderElement(super.provider);

  @override
  String get sensorId => (origin as PanelResetProvider).sensorId;
}

String _$alarmClearHash() => r'9ff4bf323a6d0beca1acb535913bcd3195dabbc2';

/// 알람 확인
///
/// Copied from [alarmClear].
@ProviderFor(alarmClear)
const alarmClearProvider = AlarmClearFamily();

/// 알람 확인
///
/// Copied from [alarmClear].
class AlarmClearFamily extends Family<AsyncValue<String?>> {
  /// 알람 확인
  ///
  /// Copied from [alarmClear].
  const AlarmClearFamily();

  /// 알람 확인
  ///
  /// Copied from [alarmClear].
  AlarmClearProvider call(
    String alarmId,
  ) {
    return AlarmClearProvider(
      alarmId,
    );
  }

  @override
  AlarmClearProvider getProviderOverride(
    covariant AlarmClearProvider provider,
  ) {
    return call(
      provider.alarmId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'alarmClearProvider';
}

/// 알람 확인
///
/// Copied from [alarmClear].
class AlarmClearProvider extends AutoDisposeFutureProvider<String?> {
  /// 알람 확인
  ///
  /// Copied from [alarmClear].
  AlarmClearProvider(
    String alarmId,
  ) : this._internal(
          (ref) => alarmClear(
            ref as AlarmClearRef,
            alarmId,
          ),
          from: alarmClearProvider,
          name: r'alarmClearProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$alarmClearHash,
          dependencies: AlarmClearFamily._dependencies,
          allTransitiveDependencies:
              AlarmClearFamily._allTransitiveDependencies,
          alarmId: alarmId,
        );

  AlarmClearProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.alarmId,
  }) : super.internal();

  final String alarmId;

  @override
  Override overrideWith(
    FutureOr<String?> Function(AlarmClearRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: AlarmClearProvider._internal(
        (ref) => create(ref as AlarmClearRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        alarmId: alarmId,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String?> createElement() {
    return _AlarmClearProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AlarmClearProvider && other.alarmId == alarmId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, alarmId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AlarmClearRef on AutoDisposeFutureProviderRef<String?> {
  /// The parameter `alarmId` of this provider.
  String get alarmId;
}

class _AlarmClearProviderElement
    extends AutoDisposeFutureProviderElement<String?> with AlarmClearRef {
  _AlarmClearProviderElement(super.provider);

  @override
  String get alarmId => (origin as AlarmClearProvider).alarmId;
}

String _$getCameraPlayInfoHash() => r'6d4ee7dc086cd57e7e4d151ee882be8479c4da81';

/// 카메라 정보 요청
///
/// Copied from [getCameraPlayInfo].
@ProviderFor(getCameraPlayInfo)
final getCameraPlayInfoProvider =
    AutoDisposeFutureProvider<List<CameraModel>>.internal(
  getCameraPlayInfo,
  name: r'getCameraPlayInfoProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getCameraPlayInfoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetCameraPlayInfoRef = AutoDisposeFutureProviderRef<List<CameraModel>>;
String _$getAlarmHistoryListHash() =>
    r'd6c32fb0cb31807ccb2c345799d17bc7d1a9bbff';

/// 알람 이력 요청
///
/// Copied from [getAlarmHistoryList].
@ProviderFor(getAlarmHistoryList)
final getAlarmHistoryListProvider =
    AutoDisposeFutureProvider<List<HistoryModel>>.internal(
  getAlarmHistoryList,
  name: r'getAlarmHistoryListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getAlarmHistoryListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetAlarmHistoryListRef
    = AutoDisposeFutureProviderRef<List<HistoryModel>>;
String _$getSystemHistoryListHash() =>
    r'46f8fd3a5993839d9af9d6d21a96f0b9ee7ff9f8';

/// 시스템 이력 요청
///
/// Copied from [getSystemHistoryList].
@ProviderFor(getSystemHistoryList)
final getSystemHistoryListProvider =
    AutoDisposeFutureProvider<List<SystemModel>>.internal(
  getSystemHistoryList,
  name: r'getSystemHistoryListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getSystemHistoryListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetSystemHistoryListRef
    = AutoDisposeFutureProviderRef<List<SystemModel>>;
String _$getContactListHash() => r'8bace22aaaa9761a3a2760a108a2796c1e09cba8';

/// 유관 기관 정보 요청
///
/// Copied from [getContactList].
@ProviderFor(getContactList)
final getContactListProvider =
    AutoDisposeFutureProvider<List<ContactList>>.internal(
  getContactList,
  name: r'getContactListProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getContactListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GetContactListRef = AutoDisposeFutureProviderRef<List<ContactList>>;
String _$loginActionHash() => r'a537e3c411d661dd7f071c0d683677a60fa688a1';

/// 로그인 요청
///
/// Copied from [loginAction].
@ProviderFor(loginAction)
final loginActionProvider =
    AutoDisposeFutureProvider<Map<String, dynamic>>.internal(
  loginAction,
  name: r'loginActionProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$loginActionHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LoginActionRef = AutoDisposeFutureProviderRef<Map<String, dynamic>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
