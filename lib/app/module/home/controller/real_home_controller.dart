
import 'dart:convert';

import 'package:get/get.dart';
import 'package:getx_statemanagement/app/data/models/contact_model.dart';

import '../../../data/constants/apis.dart';
import 'package:http/http.dart' as http;

class RealHomeController extends GetxController {

  Rx<ContactModel?> contacts = Rx(null); //Rx used in custom class

  Future<ContactModel> fetchContact() async {
    final response = await  http.get(Uri.parse(api));

   print(response.body);

    try {
      final model = ContactModel.fromJson(jsonDecode(response.body));

      contacts.value = model;

      return model;
    } catch (e) {
      print(e);
      rethrow;
    }


  }
}