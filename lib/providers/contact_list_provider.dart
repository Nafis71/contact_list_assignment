import 'dart:math';

import 'package:contact_list_assignment/models/contact_model.dart';
import 'package:contact_list_assignment/utils/colors.dart';
import 'package:flutter/material.dart';

class ContactListProvider extends ChangeNotifier {
  final List<ContactModel> _contactList = [];

  void saveContactInformation(String contactName, String contactNumber) {
    Random random = Random();
    int randomIndexNumber = random.nextInt(contactColorList.length);
    ContactModel contactModel =
        ContactModel(contactName: contactName, contactNumber: contactNumber, contactIconColor: contactColorList[randomIndexNumber]);
    _contactList.add(contactModel);
    notifyListeners();
  }

  void deleteContactInformation(int index){
    _contactList.removeAt(index);
    notifyListeners();
  }

  List<ContactModel> get contactList => _contactList
    ..sort((firstValue, secondValue) =>
        firstValue.contactName.compareTo(secondValue.contactName));
}
