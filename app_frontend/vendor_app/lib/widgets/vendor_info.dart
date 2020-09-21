// To parse this JSON data, do
//
//     final vendorList = vendorListFromJson(jsonString);

import 'dart:convert';

List<VendorList> vendorListFromJson(String str) =>
    List<VendorList>.from(json.decode(str).map((x) => VendorList.fromJson(x)));

String vendorListToJson(List<VendorList> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class VendorList {
  VendorList({
    this.id,
    this.vendorName,
    this.vendorEmail,
    this.vendorPhone,
    this.vendorAddress,
  });

  int id;
  String vendorName;
  String vendorEmail;
  String vendorPhone;
  String vendorAddress;

  factory VendorList.fromJson(Map<String, dynamic> json) => VendorList(
        id: json["id"],
        vendorName: json["vendor_name"],
        vendorEmail: json["vendor_email"],
        vendorPhone: json["vendor_phone"],
        vendorAddress: json["vendor_address"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "vendor_name": vendorName,
        "vendor_email": vendorEmail,
        "vendor_phone": vendorPhone,
        "vendor_address": vendorAddress,
      };
}
