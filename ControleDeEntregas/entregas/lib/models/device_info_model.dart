class DeviceUtsNameModel {
  final String sysname;
  final String nodename;
  final String release;
  final String version;
  final String machine;
  DeviceUtsNameModel(
    this.sysname,
    this.nodename,
    this.release,
    this.version,
    this.machine,
  );
}

class DeviceInfoModel {
  final String name;
  final String systemName;
  final String systemVersion;
  final String model;
  final String localizedModel;
  final String identifierForVendor;
  final String isPhysicalDevice;
  final DeviceUtsNameModel utsnameDevice;
  DeviceInfoModel(
    this.name,
    this.systemName,
    this.systemVersion,
    this.model,
    this.localizedModel,
    this.identifierForVendor,
    this.isPhysicalDevice,
    this.utsnameDevice,
  );
}
