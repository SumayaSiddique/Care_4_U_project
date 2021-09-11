import 'package:care_4_u_project/Datamodel/User/Usermodel.dart';
import 'package:care_4_u_project/Services/FirestoreManager/User/UserDataUpdate.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class UserDetails extends StatelessWidget {
  final CollectionReference users =
      FirebaseFirestore.instance.collection('users');

  late Usermodel usermodel;

  final Stream<DocumentSnapshot<Map<String, dynamic>>> _userDocument =
      FirebaseFirestore.instance
          .collection('users')
          .doc(FirebaseAuth.instance.currentUser!.uid)
          .snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdbefe1),
      // appBar: AppBar(
      //   title: Text("User Details"),
      //   actions: [
      //     IconButton(
      //       onPressed: () {
      //         Get.bottomSheet(
      //           UserEditableBottomSheet(
      //             usermodel: usermodel,
      //           ),
      //           // barrierColor: Colors.red[50],
      //           isDismissible: true,
      //         );
      //       },
      //       icon: Icon(
      //         Icons.edit,
      //       ),
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                StreamBuilder<DocumentSnapshot>(
                  // stream: _userDocument,
                  stream: _userDocument,
                  builder: (BuildContext context,
                      AsyncSnapshot<DocumentSnapshot> snapshot) {
                    if (snapshot.hasError) {
                      return Text("Something went wrong");
                    }

                    if (snapshot.hasData && !snapshot.data!.exists) {
                      return Text("Document does not exist");
                    }

                    if (snapshot.connectionState == ConnectionState.active) {
                      Usermodel usermodel = Usermodel(
                        fullName: snapshot.data!.get('name'),
                        age: snapshot.data!.get('age'),
                        email: snapshot.data!.get('email'),
                        password: "",
                        height: snapshot.data!.get('height') / 1.0,
                        weight: snapshot.data!.get('weight') / 1.0,
                        isMale: snapshot.data!.get('isMale'),
                      );
                      this.usermodel = usermodel;
                      return BuildUserInfo(usermodel: usermodel);
                    }

                    // print(snapshot.data!.get('name'));

                    return Text("loading");
                  },
                ),
              ],
            ),
          ),
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
  late double height;
  late double weight;

  @override
  void initState() {
    super.initState();
    height = widget.usermodel.height;
    weight = widget.usermodel.weight;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: SingleChildScrollView(
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
          height: Get.height / 2.1,
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
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () async {
                    await UserDataUpdate.updateUserData(height, weight);

                    Get.back();
                    Get.snackbar(
                      "Care 4 U",
                      "Data Updated",
                      // icon: Icon(Icons.person, color: Colors.white),
                      snackPosition: SnackPosition.BOTTOM,
                      //backgroundColor: Colors.white,
                    );
                  },
                  child: Text("Update Data"),
                ),
                SizedBox(height: 30),
              ],
            ),
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
    final img = usermodel.isMale ? "male" : "female";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              "Profile",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                color: Color(0xff1d617A),
              ),
            ),
            Spacer(),
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
        Center(
          child: Image(
            image: AssetImage("images/" + img + ".png"),
            height: 200,
          ),
        ),
        SizedBox(height: 20),
        Text(
          "Name",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Color(0xff1d617A),
          ),
        ),
        SizedBox(height: 6),
        Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Row(
              children: [
                SizedBox(width: 7),
                Text(
                  usermodel.fullName,
                  style: TextStyle(
                    fontSize: 22,
                    // fontWeight: FontWeight.w700,
                    color: Color(0xff1d617A),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          "Age",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Color(0xff1d617A),
          ),
        ),
        SizedBox(height: 6),
        Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Row(
              children: [
                SizedBox(width: 7),
                Text(
                  "${usermodel.age}",
                  style: TextStyle(
                    fontSize: 22,
                    // fontWeight: FontWeight.w700,
                    color: Color(0xff1d617A),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 20),
        Text(
          "Email",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w300,
            color: Color(0xff1d617A),
          ),
        ),
        SizedBox(height: 6),
        Container(
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            children: [
              SizedBox(width: 7),
              Text(
                usermodel.email,
                style: TextStyle(
                  fontSize: 22,
                  // fontWeight: FontWeight.w700,
                  color: Color(0xff1d617A),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Height",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff1d617A),
                  ),
                ),
                SizedBox(height: 6),
                Container(
                  height: 60,
                  width: (Get.width / 2) - 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      usermodel.height.toString() + " cm",
                      style: TextStyle(
                        fontSize: 22,
                        // fontWeight: FontWeight.w700,
                        color: Color(0xff1d617A),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Weight",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff1d617A),
                  ),
                ),
                SizedBox(height: 6),
                Container(
                  height: 60,
                  width: (Get.width / 2) - 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Center(
                    child: Text(
                      usermodel.weight.toString() + " KG",
                      style: TextStyle(
                        fontSize: 22,
                        // fontWeight: FontWeight.w700,
                        color: Color(0xff1d617A),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20),
        // Text(
        //   usermodel.isMale ? "Gender: Male" : "Gender: Female",
        //   style: TextStyle(
        //     fontSize: 25,
        //     fontWeight: FontWeight.w800,
        //     color: Color(0xff1d617A),
        //   ),
        // ),
      ],
    );
  }
}
