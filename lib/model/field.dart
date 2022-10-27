import 'package:hotelforyou/model/category.dart';
import 'package:hotelforyou/model/field_facility.dart';

class Field {
  String id;
  String name;
  String description;
  Category category;
  List<FieldFacility> facilities;
  String address;
  String phoneNumber;
  String openDay;
  String openTime;
  String closeTime;
  String imageAsset;
  int price;
  String author;
  String authorUrl;
  String imageUrl;

  Field(
      {required this.id,
      required this.name,
      required this.description,
      required this.category,
      required this.facilities,
      required this.address,
      required this.phoneNumber,
      required this.openDay,
      required this.openTime,
      required this.closeTime,
      required this.imageAsset,
      required this.price,
      required this.author,
      required this.authorUrl,
      required this.imageUrl});
}
