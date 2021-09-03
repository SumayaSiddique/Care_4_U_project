import 'package:care_4_u_project/Datamodel/User/Usermodel.dart';
import 'package:care_4_u_project/Services/FirestoreManager/User/UserDataUpdate.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class UserDetails extends StatelessWidget {
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');
  double height = 0;

  late Usermodel usermodel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Details"),
        actions: [
          IconButton(
            onPressed: () {
              Get.bottomSheet(
                UserEditableBottomSheet(
                  usermodel: usermodel,
                ),
                // barrierColor: Colors.red[50],
                isDismissible: true,
              );
            },
            icon: Icon(
              Icons.edit,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FutureBuilder<DocumentSnapshot>(
              future: users.doc(FirebaseAuth.instance.currentUser!.uid).get(),
              builder: (BuildContext context,
                  AsyncSnapshot<DocumentSnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text("Something went wrong");
                }

                if (snapshot.hasData && !snapshot.data!.exists) {
                  return Text("Document does not exist");
                }

                if (snapshot.connectionState == ConnectionState.done) {
                  Map<String, dynamic> data =
                      snapshot.data!.data() as Map<String, dynamic>;
                  Usermodel usermodel = Usermodel(
                    fullName: data['name'],
                    email: data['email'],
                    password: "",
                    height: data['height'] / 1.0,
                    weight: data['weight'] / 1.0,
                    isMale: data['isMale'],
                  );
                  this.usermodel = usermodel;
                  return BuildUserInfo(usermodel: usermodel);
                }

                return Text("loading");
              },
            ),
          ],
        ),
      ),
    );
  }
}

class UserEditableBottomSheet extends StatefulWidget {
  final Usermodel usermodel;
  UserEditableBottomSheet({
    required this.usermodel,
  });
  @override
  _UserEditableBottomSheetState createState() =>
      _UserEditableBottomSheetState();
}

class _UserEditableBottomSheetState extends State<UserEditableBottomSheet> {
  double height = 0.0;
  double weight = 0.0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        height: Get.height / 2.5,
        // color: Colors.greenAccent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                "Update User info",
                style: TextStyle(
                  fontSize: Get.textTheme.headline5!.fontSize,
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                initialValue: widget.usermodel.weight.toString(),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Weight",
                  hintText: 'Enter your weight in kg',
                  fillColor: Color.fromRGBO(230, 230, 230, 1.0),
                  filled: true,
                  prefixIcon: (Icon(Icons.monitor_weight)),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    borderSide: BorderSide(
                      style: BorderStyle.none,
                      width: 0.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your weight';
                  }
                  return null;
                },
                onChanged: (value) {
                  weight = double.parse(value);
                },
                // inputFormatters: [
                //   FilteringTextInputFormatter.digitsOnly,
                // ],
              ),
              SizedBox(height: 30),
              TextFormField(
                initialValue: widget.usermodel.height.toString(),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Height",

                  // contentPadding: EdgeInsets.symmetric(
                  //   horizontal: size.width * 0.05,
                  //   vertical: size.height * 0.015,
                  // ),
                  hintText: 'Enter your height in cm',
                  fillColor: Color.fromRGBO(230, 230, 230, 1.0),
                  filled: true,
                  prefixIcon: (Icon(Icons.height_sharp)),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                    borderSide: BorderSide(
                      style: BorderStyle.none,
                      width: 0.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20.0),
                    ),
                  ),
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your height';
                  }
                  return null;
                },
                onChanged: (value) {
                  height = double.parse(value);
                },
                // inputFormatters: [
                //   FilteringTextInputFormatter.digitsOnly,
                //   // FilteringTextInputFormatter.allow(".")
                // ],
              ),
              ElevatedButton(
                onPressed: () async {
                  await UserDataUpdate.updateUserData(height, weight);
                  Get.snackbar(
                    "Care 4 U",
                    "Data Updated",
                    // icon: Icon(Icons.person, color: Colors.white),
                    snackPosition: SnackPosition.BOTTOM,
                    // backgroundColor: Colors.white,
                  );
                },
                child: Text("Update Data"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BuildUserInfo extends StatelessWidget {
  const BuildUserInfo({
    Key? key,
    required this.usermodel,
  }) : super(key: key);

  final Usermodel usermodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Full Name: " + usermodel.fullName),
        Text("Email : " + usermodel.email),
        Text("Height : " + usermodel.height.toString() + " cm"),
        Text("Weight : " + usermodel.weight.toString() + " KG"),
        Text(usermodel.isMale ? "Gender : Male" : "Gender : Female"),
      ],
    );
  }
}
