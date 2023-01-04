import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../global.dart';

class five extends StatefulWidget {
  const five({Key? key}) : super(key: key);

  @override
  State<five> createState() => _fiveState();
}

class _fiveState extends State<five> {
  TextEditingController dob = TextEditingController(text: Global.birth);
  TextEditingController nation = TextEditingController(text: Global.nation);
  String? group;
  List languages = [];
  Color myColor = Colors.grey.shade500;
  Color myColor1 = Colors.grey.shade500;
  bool isSelected = false;
  GlobalKey<FormState> key = GlobalKey<FormState>();

  @override
  void initState() {
    group = Global.group;
    languages = Global.myLanguage;
    languages = Global.myLanguage;
  }

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
              "Personal Details",
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
            Container(
              height: MediaQuery.of(context).size.height * 0.670,
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.only(left: 20,right: 20,top: 20),
              color: Colors.grey.shade50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "DOB",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0475ff),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: dob,
                    onTap: () async {
                      DateTime? pick = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2101),
                      );
                      if (pick != null) {
                        setState(() {
                          dob.text = DateFormat('dd/MM/yyyy').format(pick);
                          Global.birth = dob.text;
                        });
                      }
                    },
                    onSaved: (val) {
                      setState(() {
                        val;
                      });
                    },
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please tap on this textfield...";
                      } else {
                        return null;
                      }
                    },
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                    maxLength: 10,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      hintText: "DD/MM/YYYY",
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      counterText: "",
                      hintStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Marital Status",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0475ff)),
                  ),
                  SizedBox(
                    height: 37,
                    child: RadioListTile(
                        title: Text(
                          "Single",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        value: "Single",
                        groupValue: group,
                        onChanged: (val) {
                          setState(() {
                            group = val as String?;
                          });
                        }),
                  ),
                  SizedBox(
                    height: 37,
                    child: RadioListTile(
                        title: Text(
                          "Married",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.shade500,
                          ),
                        ),
                        value: "married",
                        groupValue: group,
                        onChanged: (val) {
                          setState(() {
                            group = val as String?;
                          });
                        }),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Languages Known",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0475ff),
                    ),
                  ),
                  SizedBox(
                    height: 37,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(
                        "English",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: myColor1,
                        ),
                      ),
                      value: Global.english,
                      onChanged: (val) {
                        setState(() {
                          Global.english = val!;
                          (Global.english)
                              ? (languages).add("English")
                              : (languages).remove("English");
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 37,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(
                        "Hindi",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: myColor1,
                        ),
                      ),
                      value: Global.hindi,
                      onChanged: (val) {
                        setState(() {
                          Global.hindi = val!;
                          (Global.hindi)
                              ? (languages).add("Hindi")
                              : (languages).remove("Hindi");
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: 37,
                    child: CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text(
                        "Gujarati",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: myColor1,
                        ),
                      ),
                      value: Global.gujarati,
                      onChanged: (val) {
                        setState(() {
                          Global.gujarati = val!;
                          (Global.gujarati)
                              ? (languages).add("Gujarati")
                              : (languages).remove("Gujarati");
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Nationality",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff0475ff)),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: nation,
                    onSaved: (val) {
                      setState(() {
                        Global.nation = val;
                      });
                    },
                    validator: (val) {
                      if (val!.isEmpty) {
                        return "Please enter your nationality...";
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
                      hintText: "Indian",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    if (key.currentState!.validate()) {
                      key.currentState!.save();
                    }
                    setState(() {
                      Global.group = group;
                      Global.myLanguage = languages;
                    });
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
                      dob.clear();
                      nation.clear();
                      Global.birth = null;
                      Global.nation = null;
                      Global.english = false;
                      Global.hindi = false;
                      Global.gujarati = false;
                      group = null;
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