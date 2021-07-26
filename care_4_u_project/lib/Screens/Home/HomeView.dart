import 'package:care_4_u_project/FirebaseAuth/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
            onPressed: () async {
              await context.read<AuthService>().logOut();
            },
            icon: Icon(Icons.power_off),
          )
        ],
      ),
      body: Column(),
    );
  }
}
