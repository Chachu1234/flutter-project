import 'package:flutter/material.dart';
import 'package:mobile_app/widgets/login.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bit Student Grouping System"),
        centerTitle: true,
        elevation: 0,
        leading: CircleAvatar(
          child: Image.asset(
            "assets/images/bdu.jpg",
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.white10,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20.0, bottom: 10),
              child: Center(
                child: Text(
                  "WORKING IN GROUP FOR GREAT SUCCESS!!",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              height: 300,
              width: MediaQuery.of(context).size.width - 10,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/picture-1.jpeg'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.lightBlue,
                    width: 2,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(15))),
            ),
            const SizedBox(
              height: 10,
            ),
            const Expanded(child: LoginPage())
          ],
        ),
      ),
    );
  }
}
