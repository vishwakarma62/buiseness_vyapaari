// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:hive/hive.dart';

part 'formdata.g.dart';

@HiveType(typeId: 0)
class FormData {
  @HiveField(0)
  final String? name;

  @HiveField(1)
  final String? password;

  @HiveField(2)
  final String? email;

  @HiveField(3)
  final String? phone;

  @HiveField(4)
  final String? location;

  @HiveField(5)
  final String? zip;
  const FormData({
    this.name,
    this.password,
    this.email,
    this.phone,
    this.location,
    this.zip,
  });
}
