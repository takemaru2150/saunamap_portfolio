class SelectedMarker {
  /// ._() のように書くことで、外部ファイルが Manager インスタンスを作成できないようにすることができる。
  SelectedMarker._();

  /// 内部の変数に ひとつだけ Manager のインスタンスを生成し代入する。
  static final instance = SelectedMarker._();

  /// ここに複数の画面間で使いたい変数群を書いていく
  int id = 0;
  double lat = 0.0;
  double lng = 0.0;
  String facilityName = '';
  String facilityType = '';
  String saunaikitaiUrl = '';
  String address = '';
  String access = '';
  String parking = '';
  String tel = '';
  String hpUrl = '';
  String regularHoliday = '';
  String businessHours = '';
  String price = '';
  String target = '';
  int saunaikitaiCounter = 0;
  String manSauna1Temp = '';
  String manSauna2Temp = '';
  String manSauna3Temp = '';
  String manSauna4Temp = '';
  String manSauna5Temp = '';
  String manSauna6Temp = '';
  String manSauna7Temp = '';
  String manWater1Temp = '';
  String manWater2Temp = '';
  String manWater3Temp = '';
  String manWater4Temp = '';
  String manWater5Temp = '';
  String manWater6Temp = '';
  String manSauna1Capacity = '';
  String manSauna2Capacity = '';
  String manSauna3Capacity = '';
  String manSauna4Capacity = '';
  String manSauna5Capacity = '';
  String manSauna6Capacity = '';
  String manSauna7Capacity = '';
  String manWater1Capacity = '';
  String manWater2Capacity = '';
  String manWater3Capacity = '';
  String manWater4Capacity = '';
  String manWater5Capacity = '';
  String manWater6Capacity = '';
  int manAufguss = 0;
  int manAutoloyly = 0;
  int manSelfloyly = 0;
  int manGaikiyoku = 0;
  int manChair = 0;
  String womanSauna1Temp = '';
  String womanSauna2Temp = '';
  String womanSauna3Temp = '';
  String womanSauna4Temp = '';
  String womanSauna5Temp = '';
  String womanSauna6Temp = '';
  String womanWater1Temp = '';
  String womanWater2Temp = '';
  String womanWater3Temp = '';
  String womanWater4Temp = '';
  String womanSauna1Capacity = '';
  String womanSauna2Capacity = '';
  String womanSauna3Capacity = '';
  String womanSauna4Capacity = '';
  String womanSauna5Capacity = '';
  String womanSauna6Capacity = '';
  String womanWater1Capacity = '';
  String womanWater2Capacity = '';
  String womanWater3Capacity = '';
  String womanWater4Capacity = '';
  int womanAufguss = 0;
  int womanAutoloyly = 0;
  int womanSelfloyly = 0;
  int womanGaikiyoku = 0;
  int womanChair = 0;
  String unisexSauna1Temp = '';
  String unisexSauna2Temp = '';
  String unisexSauna3Temp = '';
  String unisexSauna4Temp = '';
  String unisexSauna5Temp = '';
  String unisexSauna6Temp = '';
  String unisexWater1Temp = '';
  String unisexWater2Temp = '';
  String unisexWater3Temp = '';
  String unisexWater4Temp = '';
  String unisexSauna1Capacity = '';
  String unisexSauna2Capacity = '';
  String unisexSauna3Capacity = '';
  String unisexSauna4Capacity = '';
  String unisexSauna5Capacity = '';
  String unisexSauna6Capacity = '';
  String unisexWater1Capacity = '';
  String unisexWater2Capacity = '';
  String unisexWater3Capacity = '';
  String unisexWater4Capacity = '';
  int unisexAufguss = 0;
  int unisexAutoloyly = 0;
  int unisexSelfloyly = 0;
  int unisexGaikiyoku = 0;
  int unisexChair = 0;
  String saunaikitaiImgUrl = '';
  String manSauna1Tag1 = '';
  String manSauna1Tag2 = '';
  String manSauna1Tag3 = '';
  String manSauna1Tag4 = '';
  String manSauna1Tag5 = '';
  String manSauna2Tag1 = '';
  String manSauna2Tag2 = '';
  String manSauna2Tag3 = '';
  String manSauna2Tag4 = '';
  String manSauna2Tag5 = '';
  String manSauna3Tag1 = '';
  String manSauna3Tag2 = '';
  String manSauna3Tag3 = '';
  String manSauna3Tag4 = '';
  String manSauna3Tag5 = '';
  String manSauna4Tag1 = '';
  String manSauna4Tag2 = '';
  String manSauna4Tag3 = '';
  String manSauna4Tag4 = '';
  String manSauna4Tag5 = '';
  String manSauna5Tag1 = '';
  String manSauna5Tag2 = '';
  String manSauna5Tag3 = '';
  String manSauna5Tag4 = '';
  String manSauna5Tag5 = '';
  String manSauna6Tag1 = '';
  String manSauna6Tag2 = '';
  String manSauna6Tag3 = '';
  String manSauna6Tag4 = '';
  String manSauna6Tag5 = '';
  String manSauna7Tag1 = '';
  String manSauna7Tag2 = '';
  String manSauna7Tag3 = '';
  String manSauna7Tag4 = '';
  String manWater1Tag1 = '';
  String manWater1Tag2 = '';
  String manWater2Tag1 = '';
  String manWater2Tag2 = '';
  String manWater3Tag1 = '';
  String manWater3Tag2 = '';
  String manWater4Tag1 = '';
  String manWater4Tag2 = '';
  String manWater5Tag1 = '';
  String manWater5Tag2 = '';
  String manWater6Tag1 = '';
  String womanSauna1Tag1 = '';
  String womanSauna1Tag2 = '';
  String womanSauna1Tag3 = '';
  String womanSauna1Tag4 = '';
  String womanSauna1Tag5 = '';
  String womanSauna2Tag1 = '';
  String womanSauna2Tag2 = '';
  String womanSauna2Tag3 = '';
  String womanSauna2Tag4 = '';
  String womanSauna2Tag5 = '';
  String womanSauna3Tag1 = '';
  String womanSauna3Tag2 = '';
  String womanSauna3Tag3 = '';
  String womanSauna3Tag4 = '';
  String womanSauna3Tag5 = '';
  String womanSauna4Tag1 = '';
  String womanSauna4Tag2 = '';
  String womanSauna4Tag3 = '';
  String womanSauna4Tag4 = '';
  String womanSauna5Tag1 = '';
  String womanSauna5Tag2 = '';
  String womanSauna5Tag3 = '';
  String womanSauna5Tag4 = '';
  String womanSauna6Tag1 = '';
  String womanSauna6Tag2 = '';
  String womanWater1Tag1 = '';
  String womanWater1Tag2 = '';
  String womanWater2Tag1 = '';
  String womanWater2Tag2 = '';
  String womanWater3Tag1 = '';
  String womanWater3Tag2 = '';
  String womanWater4Tag1 = '';
  String unisexSauna1Tag1 = '';
  String unisexSauna1Tag2 = '';
  String unisexSauna1Tag3 = '';
  String unisexSauna1Tag4 = '';
  String unisexSauna1Tag5 = '';
  String unisexSauna2Tag1 = '';
  String unisexSauna2Tag2 = '';
  String unisexSauna2Tag3 = '';
  String unisexSauna2Tag4 = '';
  String unisexSauna2Tag5 = '';
  String unisexSauna3Tag1 = '';
  String unisexSauna3Tag2 = '';
  String unisexSauna3Tag3 = '';
  String unisexSauna3Tag4 = '';
  String unisexSauna3Tag5 = '';
  String unisexSauna4Tag1 = '';
  String unisexSauna4Tag2 = '';
  String unisexSauna4Tag3 = '';
  String unisexSauna4Tag4 = '';
  String unisexSauna4Tag5 = '';
  String unisexSauna5Tag1 = '';
  String unisexSauna5Tag2 = '';
  String unisexSauna5Tag3 = '';
  String unisexSauna5Tag4 = '';
  String unisexSauna5Tag5 = '';
  String unisexSauna6Tag1 = '';
  String unisexSauna6Tag2 = '';
  String unisexSauna6Tag3 = '';
  String unisexSauna6Tag4 = '';
  String unisexSauna6Tag5 = '';
  String unisexWater1Tag1 = '';
  String unisexWater1Tag2 = '';
  String unisexWater2Tag1 = '';
  String unisexWater2Tag2 = '';
  String unisexWater3Tag1 = '';
  String unisexWater3Tag2 = '';
  String unisexWater4Tag1 = '';

  Future<void> onMarkerTapped(
    int idValue,
    double latValue,
    double lngValue,
    String facilityNameValue,
    String facilityTypeValue,
    String saunaikitaiUrlValue,
    String addressValue,
    String parkingValue,
    String telValue,
    String hpUrlValue,
    String regularHolidayValue,
    String businessHoursValue,
    String priceValue,
    String targetValue,
    int saunaikitaiCounterValue,
    String manSauna1TempValue,
    String manSauna1CapacityValue,
    String manSauna2TempValue,
    String manSauna2CapacityValue,
    String manSauna3TempValue,
    String manSauna3CapacityValue,
    String manSauna4TempValue,
    String manSauna4CapacityValue,
    String manSauna5TempValue,
    String manSauna5CapacityValue,
    String manSauna6TempValue,
    String manSauna6CapacityValue,
    String manSauna7TempValue,
    String manSauna7CapacityValue,
    String manWater1TempValue,
    String manWater1CapacityValue,
    String manWater2TempValue,
    String manWater2CapacityValue,
    String manWater3TempValue,
    String manWater3CapacityValue,
    String manWater4TempValue,
    String manWater4CapacityValue,
    String manWater5TempValue,
    String manWater5CapacityValue,
    String manWater6TempValue,
    String manWater6CapacityValue,
    int manAufgussValue,
    int manAutoloylyValue,
    int manSelfloylyValue,
    int manGaikiyokuValue,
    int manChairValue,
    String womanSauna1TempValue,
    String womanSauna1CapacityValue,
    String womanSauna2TempValue,
    String womanSauna2CapacityValue,
    String womanSauna3TempValue,
    String womanSauna3CapacityValue,
    String womanSauna4TempValue,
    String womanSauna4CapacityValue,
    String womanSauna5TempValue,
    String womanSauna5CapacityValue,
    String womanSauna6TempValue,
    String womanSauna6CapacityValue,
    String womanWater1TempValue,
    String womanWater1CapacityValue,
    String womanWater2TempValue,
    String womanWater2CapacityValue,
    String womanWater3TempValue,
    String womanWater3CapacityValue,
    String womanWater4TempValue,
    String womanWater4CapacityValue,
    int womanAufgussValue,
    int womanAutoloylyValue,
    int womanSelfloylyValue,
    int womanGaikiyokuValue,
    int womanChairValue,
    String unisexSauna1TempValue,
    String unisexSauna1CapacityValue,
    String unisexSauna2TempValue,
    String unisexSauna2CapacityValue,
    String unisexSauna3TempValue,
    String unisexSauna3CapacityValue,
    String unisexSauna4TempValue,
    String unisexSauna4CapacityValue,
    String unisexSauna5TempValue,
    String unisexSauna5CapacityValue,
    String unisexSauna6TempValue,
    String unisexSauna6CapacityValue,
    String unisexWater1TempValue,
    String unisexWater1CapacityValue,
    String unisexWater2TempValue,
    String unisexWater2CapacityValue,
    String unisexWater3TempValue,
    String unisexWater3CapacityValue,
    String unisexWater4TempValue,
    String unisexWater4CapacityValue,
    int unisexAufgussValue,
    int unisexAutoloylyValue,
    int unisexSelfloylyValue,
    int unisexGaikiyokuValue,
    int unisexChairValue,
    String saunaikitaiImgUrlValue,
    String manSauna1Tag1Value,
    String manSauna1Tag2Value,
    String manSauna1Tag3Value,
    String manSauna1Tag4Value,
    String manSauna1Tag5Value,
    String manSauna2Tag1Value,
    String manSauna2Tag2Value,
    String manSauna2Tag3Value,
    String manSauna2Tag4Value,
    String manSauna2Tag5Value,
    String manSauna3Tag1Value,
    String manSauna3Tag2Value,
    String manSauna3Tag3Value,
    String manSauna3Tag4Value,
    String manSauna3Tag5Value,
    String manSauna4Tag1Value,
    String manSauna4Tag2Value,
    String manSauna4Tag3Value,
    String manSauna4Tag4Value,
    String manSauna4Tag5Value,
    String manSauna5Tag1Value,
    String manSauna5Tag2Value,
    String manSauna5Tag3Value,
    String manSauna5Tag4Value,
    String manSauna5Tag5Value,
    String manSauna6Tag1Value,
    String manSauna6Tag2Value,
    String manSauna6Tag3Value,
    String manSauna6Tag4Value,
    String manSauna6Tag5Value,
    String manSauna7Tag1Value,
    String manSauna7Tag2Value,
    String manSauna7Tag3Value,
    String manSauna7Tag4Value,
    String manWater1Tag1Value,
    String manWater1Tag2Value,
    String manWater2Tag1Value,
    String manWater2Tag2Value,
    String manWater3Tag1Value,
    String manWater3Tag2Value,
    String manWater4Tag1Value,
    String manWater4Tag2Value,
    String manWater5Tag1Value,
    String manWater5Tag2Value,
    String manWater6Tag1Value,
    String womanSauna1Tag1Value,
    String womanSauna1Tag2Value,
    String womanSauna1Tag3Value,
    String womanSauna1Tag4Value,
    String womanSauna1Tag5Value,
    String womanSauna2Tag1Value,
    String womanSauna2Tag2Value,
    String womanSauna2Tag3Value,
    String womanSauna2Tag4Value,
    String womanSauna2Tag5Value,
    String womanSauna3Tag1Value,
    String womanSauna3Tag2Value,
    String womanSauna3Tag3Value,
    String womanSauna3Tag4Value,
    String womanSauna3Tag5Value,
    String womanSauna4Tag1Value,
    String womanSauna4Tag2Value,
    String womanSauna4Tag3Value,
    String womanSauna4Tag4Value,
    String womanSauna5Tag1Value,
    String womanSauna5Tag2Value,
    String womanSauna5Tag3Value,
    String womanSauna5Tag4Value,
    String womanSauna6Tag1Value,
    String womanSauna6Tag2Value,
    String womanWater1Tag1Value,
    String womanWater1Tag2Value,
    String womanWater2Tag1Value,
    String womanWater2Tag2Value,
    String womanWater3Tag1Value,
    String womanWater3Tag2Value,
    String womanWater4Tag1Value,
    String unisexSauna1Tag1Value,
    String unisexSauna1Tag2Value,
    String unisexSauna1Tag3Value,
    String unisexSauna1Tag4Value,
    String unisexSauna1Tag5Value,
    String unisexSauna2Tag1Value,
    String unisexSauna2Tag2Value,
    String unisexSauna2Tag3Value,
    String unisexSauna2Tag4Value,
    String unisexSauna2Tag5Value,
    String unisexSauna3Tag1Value,
    String unisexSauna3Tag2Value,
    String unisexSauna3Tag3Value,
    String unisexSauna3Tag4Value,
    String unisexSauna3Tag5Value,
    String unisexSauna4Tag1Value,
    String unisexSauna4Tag2Value,
    String unisexSauna4Tag3Value,
    String unisexSauna4Tag4Value,
    String unisexSauna4Tag5Value,
    String unisexSauna5Tag1Value,
    String unisexSauna5Tag2Value,
    String unisexSauna5Tag3Value,
    String unisexSauna5Tag4Value,
    String unisexSauna5Tag5Value,
    String unisexSauna6Tag1Value,
    String unisexSauna6Tag2Value,
    String unisexSauna6Tag3Value,
    String unisexSauna6Tag4Value,
    String unisexSauna6Tag5Value,
    String unisexWater1Tag1Value,
    String unisexWater1Tag2Value,
    String unisexWater2Tag1Value,
    String unisexWater2Tag2Value,
    String unisexWater3Tag1Value,
    String unisexWater3Tag2Value,
    String unisexWater4Tag1Value,
  ) async {
    id = idValue;
    lat = latValue;
    lng = lngValue;
    facilityName = facilityNameValue;
    facilityType = facilityTypeValue;
    saunaikitaiUrl = saunaikitaiUrlValue;
    address = addressValue;
    parking = parkingValue;
    tel = telValue;
    hpUrl = hpUrlValue;
    regularHoliday = regularHolidayValue;
    businessHours = businessHoursValue;
    price = priceValue;
    target = targetValue;
    saunaikitaiCounter = saunaikitaiCounterValue;
    manSauna1Temp = manSauna1TempValue;
    manSauna2Temp = manSauna2TempValue;
    manSauna3Temp = manSauna3TempValue;
    manSauna4Temp = manSauna4TempValue;
    manSauna5Temp = manSauna5TempValue;
    manSauna6Temp = manSauna6TempValue;
    manSauna7Temp = manSauna7TempValue;
    manWater1Temp = manWater1TempValue;
    manWater2Temp = manWater2TempValue;
    manWater3Temp = manWater3TempValue;
    manWater4Temp = manWater4TempValue;
    manWater5Temp = manWater5TempValue;
    manWater6Temp = manWater6TempValue;
    manSauna1Capacity = manSauna1CapacityValue;
    manSauna2Capacity = manSauna2CapacityValue;
    manSauna3Capacity = manSauna3CapacityValue;
    manSauna4Capacity = manSauna4CapacityValue;
    manSauna5Capacity = manSauna5CapacityValue;
    manSauna6Capacity = manSauna6CapacityValue;
    manSauna7Capacity = manSauna7CapacityValue;
    manWater1Capacity = manWater1CapacityValue;
    manWater2Capacity = manWater2CapacityValue;
    manWater3Capacity = manWater3CapacityValue;
    manWater4Capacity = manWater4CapacityValue;
    manWater5Capacity = manWater5CapacityValue;
    manWater6Capacity = manWater6CapacityValue;
    manAufguss = manAufgussValue;
    manAutoloyly = manAutoloylyValue;
    manSelfloyly = manSelfloylyValue;
    manGaikiyoku = manGaikiyokuValue;
    manChair = manChairValue;
    womanSauna1Temp = womanSauna1TempValue;
    womanSauna2Temp = womanSauna2TempValue;
    womanSauna3Temp = womanSauna3TempValue;
    womanSauna4Temp = womanSauna4TempValue;
    womanSauna5Temp = womanSauna5TempValue;
    womanSauna6Temp = womanSauna6TempValue;
    womanWater1Temp = womanWater1TempValue;
    womanWater2Temp = womanWater2TempValue;
    womanWater3Temp = womanWater3TempValue;
    womanWater4Temp = womanWater4TempValue;
    womanSauna1Capacity = womanSauna1CapacityValue;
    womanSauna2Capacity = womanSauna2CapacityValue;
    womanSauna3Capacity = womanSauna3CapacityValue;
    womanSauna4Capacity = womanSauna4CapacityValue;
    womanSauna5Capacity = womanSauna5CapacityValue;
    womanSauna6Capacity = womanSauna6CapacityValue;
    womanWater1Capacity = womanWater1CapacityValue;
    womanWater2Capacity = womanWater2CapacityValue;
    womanWater3Capacity = womanWater3CapacityValue;
    womanWater4Capacity = womanWater4CapacityValue;
    womanAufguss = womanAufgussValue;
    womanAutoloyly = womanAutoloylyValue;
    womanSelfloyly = womanSelfloylyValue;
    womanGaikiyoku = womanGaikiyokuValue;
    womanChair = womanChairValue;
    unisexSauna1Temp = unisexSauna1TempValue;
    unisexSauna1Capacity = unisexSauna1CapacityValue;
    unisexSauna2Temp = unisexSauna2TempValue;
    unisexSauna2Capacity = unisexSauna2CapacityValue;
    unisexSauna3Temp = unisexSauna3TempValue;
    unisexSauna3Capacity = unisexSauna3CapacityValue;
    unisexSauna4Temp = unisexSauna4TempValue;
    unisexSauna4Capacity = unisexSauna4CapacityValue;
    unisexSauna5Temp = unisexSauna5TempValue;
    unisexSauna5Capacity = unisexSauna5CapacityValue;
    unisexSauna6Temp = unisexSauna6TempValue;
    unisexSauna6Capacity = unisexSauna6CapacityValue;
    unisexWater1Temp = unisexWater1TempValue;
    unisexWater1Capacity = unisexWater1CapacityValue;
    unisexWater2Temp = unisexWater2TempValue;
    unisexWater2Capacity = unisexWater2CapacityValue;
    unisexWater3Temp = unisexWater3TempValue;
    unisexWater3Capacity = unisexWater3CapacityValue;
    unisexWater4Temp = unisexWater4TempValue;
    unisexWater4Capacity = unisexWater4CapacityValue;
    unisexAufguss = unisexAufgussValue;
    unisexAutoloyly = unisexAutoloylyValue;
    unisexSelfloyly = unisexSelfloylyValue;
    unisexGaikiyoku = unisexGaikiyokuValue;
    unisexChair = unisexChairValue;
    saunaikitaiImgUrl = saunaikitaiImgUrlValue;
    manSauna1Tag1 = manSauna1Tag1Value;
    manSauna1Tag2 = manSauna1Tag2Value;
    manSauna1Tag3 = manSauna1Tag3Value;
    manSauna1Tag4 = manSauna1Tag4Value;
    manSauna1Tag5 = manSauna1Tag5Value;
    manSauna2Tag1 = manSauna2Tag1Value;
    manSauna2Tag2 = manSauna2Tag2Value;
    manSauna2Tag3 = manSauna2Tag3Value;
    manSauna2Tag4 = manSauna2Tag4Value;
    manSauna2Tag5 = manSauna2Tag5Value;
    manSauna3Tag1 = manSauna3Tag1Value;
    manSauna3Tag2 = manSauna3Tag2Value;
    manSauna3Tag3 = manSauna3Tag3Value;
    manSauna3Tag4 = manSauna3Tag4Value;
    manSauna3Tag5 = manSauna3Tag5Value;
    manSauna4Tag1 = manSauna4Tag1Value;
    manSauna4Tag2 = manSauna4Tag2Value;
    manSauna4Tag3 = manSauna4Tag3Value;
    manSauna4Tag4 = manSauna4Tag4Value;
    manSauna4Tag5 = manSauna4Tag5Value;
    manSauna5Tag1 = manSauna5Tag1Value;
    manSauna5Tag2 = manSauna5Tag2Value;
    manSauna5Tag3 = manSauna5Tag3Value;
    manSauna5Tag4 = manSauna5Tag4Value;
    manSauna5Tag5 = manSauna5Tag5Value;
    manSauna6Tag1 = manSauna6Tag1Value;
    manSauna6Tag2 = manSauna6Tag2Value;
    manSauna6Tag3 = manSauna6Tag3Value;
    manSauna6Tag4 = manSauna6Tag4Value;
    manSauna6Tag5 = manSauna6Tag5Value;
    manSauna7Tag1 = manSauna7Tag1Value;
    manSauna7Tag2 = manSauna7Tag2Value;
    manSauna7Tag3 = manSauna7Tag3Value;
    manSauna7Tag4 = manSauna7Tag4Value;
    manWater1Tag1 = manWater1Tag1Value;
    manWater1Tag2 = manWater1Tag2Value;
    manWater2Tag1 = manWater2Tag1Value;
    manWater2Tag2 = manWater2Tag2Value;
    manWater3Tag1 = manWater3Tag1Value;
    manWater3Tag2 = manWater3Tag2Value;
    manWater4Tag1 = manWater4Tag1Value;
    manWater4Tag2 = manWater4Tag2Value;
    manWater5Tag1 = manWater5Tag1Value;
    manWater5Tag2 = manWater5Tag2Value;
    manWater6Tag1 = manWater6Tag1Value;
    womanSauna1Tag1 = womanSauna1Tag1Value;
    womanSauna1Tag2 = womanSauna1Tag2Value;
    womanSauna1Tag3 = womanSauna1Tag3Value;
    womanSauna1Tag4 = womanSauna1Tag4Value;
    womanSauna1Tag5 = womanSauna1Tag5Value;
    womanSauna2Tag1 = womanSauna2Tag1Value;
    womanSauna2Tag2 = womanSauna2Tag2Value;
    womanSauna2Tag3 = womanSauna2Tag3Value;
    womanSauna2Tag4 = womanSauna2Tag4Value;
    womanSauna2Tag5 = womanSauna2Tag5Value;
    womanSauna3Tag1 = womanSauna3Tag1Value;
    womanSauna3Tag2 = womanSauna3Tag2Value;
    womanSauna3Tag3 = womanSauna3Tag3Value;
    womanSauna3Tag4 = womanSauna3Tag4Value;
    womanSauna3Tag5 = womanSauna3Tag5Value;
    womanSauna4Tag1 = womanSauna4Tag1Value;
    womanSauna4Tag2 = womanSauna4Tag2Value;
    womanSauna4Tag3 = womanSauna4Tag3Value;
    womanSauna4Tag4 = womanSauna4Tag4Value;
    womanSauna5Tag1 = womanSauna5Tag1Value;
    womanSauna5Tag2 = womanSauna5Tag2Value;
    womanSauna5Tag3 = womanSauna5Tag3Value;
    womanSauna5Tag4 = womanSauna5Tag4Value;
    womanSauna6Tag1 = womanSauna6Tag1Value;
    womanSauna6Tag2 = womanSauna6Tag2Value;
    womanWater1Tag1 = womanWater1Tag1Value;
    womanWater1Tag2 = womanWater1Tag2Value;
    womanWater2Tag1 = womanWater2Tag1Value;
    womanWater2Tag2 = womanWater2Tag2Value;
    womanWater3Tag1 = womanWater3Tag1Value;
    womanWater3Tag2 = womanWater3Tag2Value;
    womanWater4Tag1 = womanWater4Tag1Value;
    unisexSauna1Tag1 = unisexSauna1Tag1Value;
    unisexSauna1Tag2 = unisexSauna1Tag2Value;
    unisexSauna1Tag3 = unisexSauna1Tag3Value;
    unisexSauna1Tag4 = unisexSauna1Tag4Value;
    unisexSauna1Tag5 = unisexSauna1Tag5Value;
    unisexSauna2Tag1 = unisexSauna2Tag1Value;
    unisexSauna2Tag2 = unisexSauna2Tag2Value;
    unisexSauna2Tag3 = unisexSauna2Tag3Value;
    unisexSauna2Tag4 = unisexSauna2Tag4Value;
    unisexSauna2Tag5 = unisexSauna2Tag5Value;
    unisexSauna3Tag1 = unisexSauna3Tag1Value;
    unisexSauna3Tag2 = unisexSauna3Tag2Value;
    unisexSauna3Tag3 = unisexSauna3Tag3Value;
    unisexSauna3Tag4 = unisexSauna3Tag4Value;
    unisexSauna3Tag5 = unisexSauna3Tag5Value;
    unisexSauna4Tag1 = unisexSauna4Tag1Value;
    unisexSauna4Tag2 = unisexSauna4Tag2Value;
    unisexSauna4Tag3 = unisexSauna4Tag3Value;
    unisexSauna4Tag4 = unisexSauna4Tag4Value;
    unisexSauna4Tag5 = unisexSauna4Tag5Value;
    unisexSauna5Tag1 = unisexSauna5Tag1Value;
    unisexSauna5Tag2 = unisexSauna5Tag2Value;
    unisexSauna5Tag3 = unisexSauna5Tag3Value;
    unisexSauna5Tag4 = unisexSauna5Tag4Value;
    unisexSauna5Tag5 = unisexSauna5Tag5Value;
    unisexSauna6Tag1 = unisexSauna6Tag1Value;
    unisexSauna6Tag2 = unisexSauna6Tag2Value;
    unisexSauna6Tag3 = unisexSauna6Tag3Value;
    unisexSauna6Tag4 = unisexSauna6Tag4Value;
    unisexSauna6Tag5 = unisexSauna6Tag5Value;
    unisexWater1Tag1 = unisexWater1Tag1Value;
    unisexWater1Tag2 = unisexWater1Tag2Value;
    unisexWater2Tag1 = unisexWater2Tag1Value;
    unisexWater2Tag2 = unisexWater2Tag2Value;
    unisexWater3Tag1 = unisexWater3Tag1Value;
    unisexWater3Tag2 = unisexWater3Tag2Value;
    unisexWater4Tag1 = unisexWater4Tag1Value;
    print('SelectedMarker: $facilityNameValue');
    print(
        '$manSauna1Tag1, $manSauna1Tag2, $manSauna1Tag3, $manSauna1Tag4, $manSauna1Tag5, $manSauna2Tag1, $manSauna2Tag2, $manSauna2Tag3, $manSauna2Tag4, $manSauna2Tag5, $manSauna3Tag1, $manSauna3Tag2, $manSauna3Tag3, $manSauna3Tag4, $manSauna3Tag5, $manSauna4Tag1, $manSauna4Tag2, $manSauna4Tag3, $manSauna4Tag4, $manSauna4Tag5, $manSauna5Tag1, $manSauna5Tag2, $manSauna5Tag3, $manSauna5Tag4, $manSauna5Tag5, $manSauna6Tag1, $manSauna6Tag2, $manSauna6Tag3, $manSauna6Tag4, $manSauna6Tag5, $manSauna7Tag1, $manSauna7Tag2, $manSauna7Tag3, $manSauna7Tag4, $manWater1Tag1, $manWater1Tag2, $manWater2Tag1, $manWater2Tag2, $manWater3Tag1, $manWater3Tag2, $manWater4Tag1, $manWater4Tag2, $manWater5Tag1, $manWater5Tag2, $manWater6Tag1, $womanSauna1Tag1, $womanSauna1Tag2, $womanSauna1Tag3, $womanSauna1Tag4, $womanSauna1Tag5, $womanSauna2Tag1, $womanSauna2Tag2, $womanSauna2Tag3, $womanSauna2Tag4, $womanSauna2Tag5, $womanSauna3Tag1, $womanSauna3Tag2, $womanSauna3Tag3, $womanSauna3Tag4, $womanSauna3Tag5, $womanSauna4Tag1, $womanSauna4Tag2, $womanSauna4Tag3, $womanSauna4Tag4, $womanSauna5Tag1, $womanSauna5Tag2, $womanSauna5Tag3, $womanSauna5Tag4, $womanSauna6Tag1, $womanSauna6Tag2, $womanWater1Tag1, $womanWater1Tag2, $womanWater2Tag1, $womanWater2Tag2, $womanWater3Tag1, $womanWater3Tag2, $womanWater4Tag1');
  }
}
