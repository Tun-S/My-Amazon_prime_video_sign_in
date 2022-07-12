import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Hompage(),
  ));
}

class Hompage extends StatelessWidget {
  const Hompage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(children: [
          Text(
            "Back",
            style: TextStyle(color: Colors.blue[900]),
          ),
          SizedBox(
            width: 60,
          ),
          Image.asset(
            'images/Amazon_logo.jpg',
            fit: BoxFit.contain,
            height: 50,
          ),
        ]),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.refresh,
              size: 30,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.black87,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: EdgeInsets.all(12),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Create Account",
              style: TextStyle(color: Colors.grey, fontSize: 27),
            ),
            SizedBox(
              height: 16,
            ),
            TextField(
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "Email",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 13,
            ),
            TextField(
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "Your email Address",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 13,
            ),
            TextField(
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                  hintText: "Create a password",
                  border: OutlineInputBorder()),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Icon(
                  Icons.info,
                  color: Colors.green,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Passwors must be at least 6 characters.",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (a) {},
                ),
                SizedBox(
                  width: 2,
                ),
                Text(
                  "Show Password",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                )
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Material(
              color: Color(0xff01A0c7),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                onPressed: () {},
                child: Text(
                  "Create your Amazon account",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "By creating an account, you agree to the ",
                  style: TextStyle(color: Colors.grey)),
              TextSpan(
                  text: "Prime Video Terms of Use",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 14)),
              TextSpan(
                  text:
                      " and license agreements which can be found on the Amazon website",
                  style: TextStyle(color: Colors.grey)),
            ])),
            SizedBox(
              height: 16,
            ),
            Text(
              "Already have an account?",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 16,
            ),
            Material(
              color: Colors.grey,
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width,
                padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                onPressed: null,
                child: Text(
                  "Sing-In now",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 90,
            ),
            Text(
              "c 1996-2021,Amazon.com,Inc. or its affiliates",
              style: TextStyle(color: Colors.grey),
            )
          ]),
        ),
      ),
    );
  }
}
