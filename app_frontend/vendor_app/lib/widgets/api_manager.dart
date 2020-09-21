import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:vendor_app/constants.dart';

import 'vendor_info.dart';

// ignore: camel_case_types
class API_Manager {
  Future<VendorList> getVendors() async {
    var client = http.Client();
    var vendorList = null;

    try {
      var response = await client.get(kUrl);
      if (response.statusCode == 200) {
        var jsonString = response.body;
        var jsonMap = json.decode(jsonString);

        vendorList = VendorList.fromJson(jsonMap);
      }
    } catch (Exception) {
      print(Exception);
    }
    return vendorList;
  }
}
