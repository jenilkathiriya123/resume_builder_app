import 'package:flutter/material.dart';
import '../global.dart';

class six extends StatefulWidget {
  const six({Key? key}) : super(key: key);

  @override
  State<six> createState() => _sixState();
}

class _sixState extends State<six> {
  TextEditingController course = TextEditingController(text: Global.course);
  TextEditingController college = TextEditingController(text: Global.college);
  TextEditingController per = TextEditingController(text: Global.percentage);
  TextEditingController year = TextEditingController(text: Global.year);
  GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 165,
        leading: Align(
          alignment: const Alignment(0, -0.05),
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
              "Education",
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
              padding: const EdgeInsets.all(30),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.61,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
                color: Colors.grey.shade50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Course/Degree",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0475ff),
                      ),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      controller: course,
                      onSaved: (val) {
                        setState(() {
                          Global.course = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter your degree name";
                        } else {
                          return null;
                        }
                      },
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      cursorColor: Colors.black,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "B.Tech Computer Engineering",
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "School/College/Institute",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0475ff),
                      ),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: college,
                      onSaved: (val) {
                        setState(() {
                          Global.college = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter your school name";
                        } else {
                          return null;
                        }
                      },
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "Bhagwan Mahavir University",
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Percentage",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0475ff),
                      ),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: per,
                      onSaved: (val) {
                        setState(() {
                          Global.percentage = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter your percentage";
                        } else {
                          return null;
                        }
                      },
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "70% (or) 7.0 CGPA",
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Year Of Pass",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0475ff),
                      ),
                    ),
                    const SizedBox(height: 5),
                    TextFormField(
                      textInputAction: TextInputAction.next,
                      controller: year,
                      onSaved: (val) {
                        setState(() {
                          Global.year = val;
                        });
                      },
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Enter your college passing year";
                        } else {
                          return null;
                        }
                      },
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: "2019",
                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
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
            // const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    if (key.currentState!.validate()) {
                      key.currentState!.save();
                    }
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width / 3,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: const Text(
                      "Submit",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    key.currentState!.reset();
                    setState(() {
                      course.clear();
                      college.clear();
                      per.clear();
                      year.clear();
                      Global.course = null;
                      Global.college = null;
                      Global.percentage = null;
                      Global.year = null;
                    });
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width / 3,
                    alignment: Alignment.center,
                    child: const Text(
                      "Reset",
                      style: TextStyle(
                        fontSize: 20,
                        // color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
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
