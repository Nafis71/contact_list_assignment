import 'package:contact_list_assignment/utils/colors.dart';
import 'package:contact_list_assignment/views/homeScreen/form_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late TextEditingController _nameTEController;
  late TextEditingController _phoneNumberTEController;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _nameTEController = TextEditingController();
    _phoneNumberTEController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(appBarTitle),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(8.00),
          child: Column(
            children: [
              FormLayout(
                formKey: _formKey,
                nameTEController: _nameTEController,
                phoneNumberTEController: _phoneNumberTEController,
              ),
              const Gap(20),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text(contactAddButtonText),
                ),
              ),
              const Gap(50),
              ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Material(
                    color: whiteColor,
                    child: ListTile(
                      title: Text("Tonmoy"),
                      leading: Icon(Icons.person,size: 30,color: appPrimaryColor,),
                      subtitle: Text("01906729575"),
                      trailing: Icon(Icons.phone,color: Colors.blue,size: 25,),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      tileColor: greyColor,
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 10,
                  );
                },
                itemCount: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameTEController.dispose();
    _phoneNumberTEController.dispose();
    super.dispose();
  }
}
