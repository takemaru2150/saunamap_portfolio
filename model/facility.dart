///データモデルを定義
class Facility {
  final int id;
  final double lat;
  final double lng;
  final String facilityName;
  final String facilityType;
  final String saunaikitaiUrl;
  final String address;
  final String parking;
  final String tel;
  final String hpUrl;
  final String regularHoliday;
  final String businessHours;
  final String price;
  final String target;
  final int saunaikitaiCounter;
  final String manSauna1Temp;
  final String manSauna1Capacity;
  final String manSauna2Temp;
  final String manSauna2Capacity;
  final String manSauna3Temp;
  final String manSauna3Capacity;
  final String manSauna4Temp;
  final String manSauna4Capacity;
  final String manSauna5Temp;
  final String manSauna5Capacity;
  final String manSauna6Temp;
  final String manSauna6Capacity;
  final String manSauna7Temp;
  final String manSauna7Capacity;
  final String manWater1Temp;
  final String manWater1Capacity;
  final String manWater2Temp;
  final String manWater2Capacity;
  final String manWater3Temp;
  final String manWater3Capacity;
  final String manWater4Temp;
  final String manWater4Capacity;
  final String manWater5Temp;
  final String manWater5Capacity;
  final String manWater6Temp;
  final String manWater6Capacity;
  final int manAufguss;
  final int manAutoloyly;
  final int manSelfloyly;
  final int manGaikiyoku;
  final int manChair;
  final String womanSauna1Temp;
  final String womanSauna1Capacity;
  final String womanSauna2Temp;
  final String womanSauna2Capacity;
  final String womanSauna3Temp;
  final String womanSauna3Capacity;
  final String womanSauna4Temp;
  final String womanSauna4Capacity;
  final String womanSauna5Temp;
  final String womanSauna5Capacity;
  final String womanSauna6Temp;
  final String womanSauna6Capacity;
  final String womanWater1Temp;
  final String womanWater1Capacity;
  final String womanWater2Temp;
  final String womanWater2Capacity;
  final String womanWater3Temp;
  final String womanWater3Capacity;
  final String womanWater4Temp;
  final String womanWater4Capacity;
  final int womanAufguss;
  final int womanAutoloyly;
  final int womanSelfloyly;
  final int womanGaikiyoku;
  final int womanChair;
  final String unisexSauna1Temp;
  final String unisexSauna1Capacity;
  final String unisexSauna2Temp;
  final String unisexSauna2Capacity;
  final String unisexSauna3Temp;
  final String unisexSauna3Capacity;
  final String unisexSauna4Temp;
  final String unisexSauna4Capacity;
  final String unisexSauna5Temp;
  final String unisexSauna5Capacity;
  final String unisexSauna6Temp;
  final String unisexSauna6Capacity;
  final String unisexWater1Temp;
  final String unisexWater1Capacity;
  final String unisexWater2Temp;
  final String unisexWater2Capacity;
  final String unisexWater3Temp;
  final String unisexWater3Capacity;
  final String unisexWater4Temp;
  final String unisexWater4Capacity;
  final int unisexAufguss;
  final int unisexAutoloyly;
  final int unisexSelfloyly;
  final int unisexGaikiyoku;
  final int unisexChair;
  final String saunaikitaiImgUrl;
  final String manSauna1Tag1;
  final String manSauna1Tag2;
  final String manSauna1Tag3;
  final String manSauna1Tag4;
  final String manSauna1Tag5;
  final String manSauna2Tag1;
  final String manSauna2Tag2;
  final String manSauna2Tag3;
  final String manSauna2Tag4;
  final String manSauna2Tag5;
  final String manSauna3Tag1;
  final String manSauna3Tag2;
  final String manSauna3Tag3;
  final String manSauna3Tag4;
  final String manSauna3Tag5;
  final String manSauna4Tag1;
  final String manSauna4Tag2;
  final String manSauna4Tag3;
  final String manSauna4Tag4;
  final String manSauna4Tag5;
  final String manSauna5Tag1;
  final String manSauna5Tag2;
  final String manSauna5Tag3;
  final String manSauna5Tag4;
  final String manSauna5Tag5;
  final String manSauna6Tag1;
  final String manSauna6Tag2;
  final String manSauna6Tag3;
  final String manSauna6Tag4;
  final String manSauna6Tag5;
  final String manSauna7Tag1;
  final String manSauna7Tag2;
  final String manSauna7Tag3;
  final String manSauna7Tag4;
  final String manWater1Tag1;
  final String manWater1Tag2;
  final String manWater2Tag1;
  final String manWater2Tag2;
  final String manWater3Tag1;
  final String manWater3Tag2;
  final String manWater4Tag1;
  final String manWater4Tag2;
  final String manWater5Tag1;
  final String manWater5Tag2;
  final String manWater6Tag1;
  final String womanSauna1Tag1;
  final String womanSauna1Tag2;
  final String womanSauna1Tag3;
  final String womanSauna1Tag4;
  final String womanSauna1Tag5;
  final String womanSauna2Tag1;
  final String womanSauna2Tag2;
  final String womanSauna2Tag3;
  final String womanSauna2Tag4;
  final String womanSauna2Tag5;
  final String womanSauna3Tag1;
  final String womanSauna3Tag2;
  final String womanSauna3Tag3;
  final String womanSauna3Tag4;
  final String womanSauna3Tag5;
  final String womanSauna4Tag1;
  final String womanSauna4Tag2;
  final String womanSauna4Tag3;
  final String womanSauna4Tag4;
  final String womanSauna5Tag1;
  final String womanSauna5Tag2;
  final String womanSauna5Tag3;
  final String womanSauna5Tag4;
  final String womanSauna6Tag1;
  final String womanSauna6Tag2;
  final String womanWater1Tag1;
  final String womanWater1Tag2;
  final String womanWater2Tag1;
  final String womanWater2Tag2;
  final String womanWater3Tag1;
  final String womanWater3Tag2;
  final String womanWater4Tag1;
  final String unisexSauna1Tag1;
  final String unisexSauna1Tag2;
  final String unisexSauna1Tag3;
  final String unisexSauna1Tag4;
  final String unisexSauna1Tag5;
  final String unisexSauna2Tag1;
  final String unisexSauna2Tag2;
  final String unisexSauna2Tag3;
  final String unisexSauna2Tag4;
  final String unisexSauna2Tag5;
  final String unisexSauna3Tag1;
  final String unisexSauna3Tag2;
  final String unisexSauna3Tag3;
  final String unisexSauna3Tag4;
  final String unisexSauna3Tag5;
  final String unisexSauna4Tag1;
  final String unisexSauna4Tag2;
  final String unisexSauna4Tag3;
  final String unisexSauna4Tag4;
  final String unisexSauna4Tag5;
  final String unisexSauna5Tag1;
  final String unisexSauna5Tag2;
  final String unisexSauna5Tag3;
  final String unisexSauna5Tag4;
  final String unisexSauna5Tag5;
  final String unisexSauna6Tag1;
  final String unisexSauna6Tag2;
  final String unisexSauna6Tag3;
  final String unisexSauna6Tag4;
  final String unisexSauna6Tag5;
  final String unisexWater1Tag1;
  final String unisexWater1Tag2;
  final String unisexWater2Tag1;
  final String unisexWater2Tag2;
  final String unisexWater3Tag1;
  final String unisexWater3Tag2;
  final String unisexWater4Tag1;

  const Facility({
    required this.id,
    required this.lat,
    required this.lng,
    required this.facilityName,
    required this.facilityType,
    required this.saunaikitaiUrl,
    required this.address,
    required this.parking,
    required this.tel,
    required this.hpUrl,
    required this.regularHoliday,
    required this.businessHours,
    required this.price,
    required this.target,
    required this.saunaikitaiCounter,
    required this.manSauna1Temp,
    required this.manSauna1Capacity,
    required this.manSauna2Temp,
    required this.manSauna2Capacity,
    required this.manSauna3Temp,
    required this.manSauna3Capacity,
    required this.manSauna4Temp,
    required this.manSauna4Capacity,
    required this.manSauna5Temp,
    required this.manSauna5Capacity,
    required this.manSauna6Temp,
    required this.manSauna6Capacity,
    required this.manSauna7Temp,
    required this.manSauna7Capacity,
    required this.manWater1Temp,
    required this.manWater1Capacity,
    required this.manWater2Temp,
    required this.manWater2Capacity,
    required this.manWater3Temp,
    required this.manWater3Capacity,
    required this.manWater4Temp,
    required this.manWater4Capacity,
    required this.manWater5Temp,
    required this.manWater5Capacity,
    required this.manWater6Temp,
    required this.manWater6Capacity,
    required this.manAufguss,
    required this.manAutoloyly,
    required this.manSelfloyly,
    required this.manGaikiyoku,
    required this.manChair,
    required this.womanSauna1Temp,
    required this.womanSauna1Capacity,
    required this.womanSauna2Temp,
    required this.womanSauna2Capacity,
    required this.womanSauna3Temp,
    required this.womanSauna3Capacity,
    required this.womanSauna4Temp,
    required this.womanSauna4Capacity,
    required this.womanSauna5Temp,
    required this.womanSauna5Capacity,
    required this.womanSauna6Temp,
    required this.womanSauna6Capacity,
    required this.womanWater1Temp,
    required this.womanWater1Capacity,
    required this.womanWater2Temp,
    required this.womanWater2Capacity,
    required this.womanWater3Temp,
    required this.womanWater3Capacity,
    required this.womanWater4Temp,
    required this.womanWater4Capacity,
    required this.womanAufguss,
    required this.womanAutoloyly,
    required this.womanSelfloyly,
    required this.womanGaikiyoku,
    required this.womanChair,
    required this.unisexSauna1Temp,
    required this.unisexSauna1Capacity,
    required this.unisexSauna2Temp,
    required this.unisexSauna2Capacity,
    required this.unisexSauna3Temp,
    required this.unisexSauna3Capacity,
    required this.unisexSauna4Temp,
    required this.unisexSauna4Capacity,
    required this.unisexSauna5Temp,
    required this.unisexSauna5Capacity,
    required this.unisexSauna6Temp,
    required this.unisexSauna6Capacity,
    required this.unisexWater1Temp,
    required this.unisexWater1Capacity,
    required this.unisexWater2Temp,
    required this.unisexWater2Capacity,
    required this.unisexWater3Temp,
    required this.unisexWater3Capacity,
    required this.unisexWater4Temp,
    required this.unisexWater4Capacity,
    required this.unisexAufguss,
    required this.unisexAutoloyly,
    required this.unisexSelfloyly,
    required this.unisexGaikiyoku,
    required this.unisexChair,
    required this.saunaikitaiImgUrl,
    required this.manSauna1Tag1,
    required this.manSauna1Tag2,
    required this.manSauna1Tag3,
    required this.manSauna1Tag4,
    required this.manSauna1Tag5,
    required this.manSauna2Tag1,
    required this.manSauna2Tag2,
    required this.manSauna2Tag3,
    required this.manSauna2Tag4,
    required this.manSauna2Tag5,
    required this.manSauna3Tag1,
    required this.manSauna3Tag2,
    required this.manSauna3Tag3,
    required this.manSauna3Tag4,
    required this.manSauna3Tag5,
    required this.manSauna4Tag1,
    required this.manSauna4Tag2,
    required this.manSauna4Tag3,
    required this.manSauna4Tag4,
    required this.manSauna4Tag5,
    required this.manSauna5Tag1,
    required this.manSauna5Tag2,
    required this.manSauna5Tag3,
    required this.manSauna5Tag4,
    required this.manSauna5Tag5,
    required this.manSauna6Tag1,
    required this.manSauna6Tag2,
    required this.manSauna6Tag3,
    required this.manSauna6Tag4,
    required this.manSauna6Tag5,
    required this.manSauna7Tag1,
    required this.manSauna7Tag2,
    required this.manSauna7Tag3,
    required this.manSauna7Tag4,
    required this.manWater1Tag1,
    required this.manWater1Tag2,
    required this.manWater2Tag1,
    required this.manWater2Tag2,
    required this.manWater3Tag1,
    required this.manWater3Tag2,
    required this.manWater4Tag1,
    required this.manWater4Tag2,
    required this.manWater5Tag1,
    required this.manWater5Tag2,
    required this.manWater6Tag1,
    required this.womanSauna1Tag1,
    required this.womanSauna1Tag2,
    required this.womanSauna1Tag3,
    required this.womanSauna1Tag4,
    required this.womanSauna1Tag5,
    required this.womanSauna2Tag1,
    required this.womanSauna2Tag2,
    required this.womanSauna2Tag3,
    required this.womanSauna2Tag4,
    required this.womanSauna2Tag5,
    required this.womanSauna3Tag1,
    required this.womanSauna3Tag2,
    required this.womanSauna3Tag3,
    required this.womanSauna3Tag4,
    required this.womanSauna3Tag5,
    required this.womanSauna4Tag1,
    required this.womanSauna4Tag2,
    required this.womanSauna4Tag3,
    required this.womanSauna4Tag4,
    required this.womanSauna5Tag1,
    required this.womanSauna5Tag2,
    required this.womanSauna5Tag3,
    required this.womanSauna5Tag4,
    required this.womanSauna6Tag1,
    required this.womanSauna6Tag2,
    required this.womanWater1Tag1,
    required this.womanWater1Tag2,
    required this.womanWater2Tag1,
    required this.womanWater2Tag2,
    required this.womanWater3Tag1,
    required this.womanWater3Tag2,
    required this.womanWater4Tag1,
    required this.unisexSauna1Tag1,
    required this.unisexSauna1Tag2,
    required this.unisexSauna1Tag3,
    required this.unisexSauna1Tag4,
    required this.unisexSauna1Tag5,
    required this.unisexSauna2Tag1,
    required this.unisexSauna2Tag2,
    required this.unisexSauna2Tag3,
    required this.unisexSauna2Tag4,
    required this.unisexSauna2Tag5,
    required this.unisexSauna3Tag1,
    required this.unisexSauna3Tag2,
    required this.unisexSauna3Tag3,
    required this.unisexSauna3Tag4,
    required this.unisexSauna3Tag5,
    required this.unisexSauna4Tag1,
    required this.unisexSauna4Tag2,
    required this.unisexSauna4Tag3,
    required this.unisexSauna4Tag4,
    required this.unisexSauna4Tag5,
    required this.unisexSauna5Tag1,
    required this.unisexSauna5Tag2,
    required this.unisexSauna5Tag3,
    required this.unisexSauna5Tag4,
    required this.unisexSauna5Tag5,
    required this.unisexSauna6Tag1,
    required this.unisexSauna6Tag2,
    required this.unisexSauna6Tag3,
    required this.unisexSauna6Tag4,
    required this.unisexSauna6Tag5,
    required this.unisexWater1Tag1,
    required this.unisexWater1Tag2,
    required this.unisexWater2Tag1,
    required this.unisexWater2Tag2,
    required this.unisexWater3Tag1,
    required this.unisexWater3Tag2,
    required this.unisexWater4Tag1,
  });
}
