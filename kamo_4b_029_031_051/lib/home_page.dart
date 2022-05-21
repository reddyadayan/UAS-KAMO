import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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
            ActionChip(label: Text("Logout"), onPressed: () {}),
          ],
        ),
      )),
    );
  }
}
