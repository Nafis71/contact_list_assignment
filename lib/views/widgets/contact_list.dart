import 'package:contact_list_assignment/providers/contact_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/colors.dart';

class ContactList extends StatelessWidget {
  final Function(int index) onTileTap;

  const ContactList({super.key, required this.onTileTap});

  @override
  Widget build(BuildContext context) {
    return Consumer<ContactListProvider>(
      builder: (context, contactListProvider, child) {
        return ListView.separated(
          itemCount: contactListProvider.contactList.length,
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) {
            return Material(
              color: whiteColor,
              child: InkWell(
                onLongPress: () => onTileTap(index),
                child: ListTile(
                  title:
                      Text(contactListProvider.contactList[index].contactName),
                  leading: Icon(
                    Icons.person,
                    size: 32,
                    color:
                        contactListProvider.contactList[index].contactIconColor,
                  ),
                  subtitle: Text(
                      contactListProvider.contactList[index].contactNumber),
                  trailing: const Icon(
                    Icons.phone,
                    color: Colors.blue,
                    size: 25,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  tileColor: greyColor,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 10,
            );
          },
        );
      },
    );
  }
}
