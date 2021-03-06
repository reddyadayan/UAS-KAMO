import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kamo_4b_029_031_051/Fungsi/user_fungsi.dart';
import 'package:kamo_4b_029_031_051/login_page.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  User? user = FirebaseAuth.instance.currentUser;
  UserFungsi loggedInUser = UserFungsi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KASIR KAMO"),
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AddBarangPage(),
                    )),
              },
              child: Text('add', style: TextStyle(fontSize: 15.0)),
              style: ElevatedButton.styleFrom(primary: Colors.yellow),
            ),
            SizedBox(
              height: 150,
            ),
            Text("SELAMAT DATANG DI KASIR KAMO"),
            SizedBox(
              height: 10,
            ),
            Text("Nama",
                style: TextStyle(
                    color: Colors.black26, fontWeight: FontWeight.w200)),
            Text("Email",
                style: TextStyle(
                    color: Colors.black26, fontWeight: FontWeight.w200)),
            SizedBox(
              height: 15,
            ),
            ActionChip(
                label: Text("Logout"),
                onPressed: () {
                  logout(context);
                }),
          ],
        ),
      )),
    );
  }

  Future<void> logout(BuildContext context) async {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
