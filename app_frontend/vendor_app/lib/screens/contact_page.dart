import 'package:flutter/material.dart';
import 'package:vendor_app/constants.dart';
import 'package:vendor_app/widgets/api_manager.dart';
import 'package:vendor_app/widgets/vendor_info.dart';

class ContactPage extends StatefulWidget {
  static String id = "contact_screen";

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  Future<VendorList> _vendorList;

  @override
  void initState() {
    _vendorList = API_Manager().getVendors();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kScaffoldBackgroundColor,
      ),
      body: Container(
        child: FutureBuilder(
            future: _vendorList,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                  );
                });
              } else
                return CircularProgressIndicator();
            }),
      ),
    );
  }
}
