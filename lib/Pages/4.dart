import 'package:flutter/material.dart';

import '../global.dart';

class four extends StatefulWidget {
  const four({Key? key}) : super(key: key);

  @override
  State<four> createState() => _fourState();
}

class _fourState extends State<four> {
  TextEditingController text = TextEditingController(text: Global.des);
  TextEditingController text1 = TextEditingController(text: Global.exp);
  GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 165,
        leading: Align(
          alignment: const Alignment(0, -0.03),
          child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamedAndRemoveUntil(
                      context, 'second', (route) => false);
                });
              },
              child: const Icon(Icons.arrow_back_ios, size: 30)),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              "Carrier Objective",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 5),
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff0475ff),
        elevation: 5,
      ),
      backgroundColor: Colors.white,
      body: Form(
        key: key,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(50),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.31,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                color: Colors.grey.shade50,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Carrier Objective",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0475ff),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      controller: text,
                      onSaved: (val) {
                        setState(() {
                          Global.des = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "please enter your carrier objective...";
                        } else {
                          return null;
                        }
                      },
                      maxLines: 5,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Description",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey.shade500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.21,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(20),
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Current Designation (Experienced\nCndidate",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0475ff),
                      ),
                    ),
                    SizedBox(height: 5),
                    TextFormField(
                      controller: text1,
                      onSaved: (val) {
                        setState(() {
                          Global.exp = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Please enter your current designation...";
                        } else {
                          return null;
                        }
                      },
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Software Engineer",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    if (key.currentState!.validate()) {
                      key.currentState!.save();
                    }
                    print(Global.exp);
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width / 3,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    key.currentState!.reset();
                    setState(() {
                      text.clear();
                      text1.clear();
                      Global.des = null;
                      Global.exp = null;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width / 3,
                    alignment: Alignment.center,
                    child: Text(
                      "Reset",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.grey.shade50,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
