import 'package:flutter/material.dart';
import 'package:mobile_app/widgets/studentRegistration.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

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
        color: Colors.white,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
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
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StudentRegister(),
                        )),
                    child: Row(
                      children: const [
                        Icon(Icons.person_add),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Student",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const StudentRegister(),
                          )),
                      child: Row(
                        children: const [
                          Icon(Icons.groups_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Generate  member",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.lightGreen,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  border: Border.all(color: Colors.blue, width: 2)),
            )
          ],
        ),
      ),
    );
  }
}
