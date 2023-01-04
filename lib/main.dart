import 'package:flutter/material.dart';
import 'Pages/10.dart';
import 'Pages/11.dart';
import 'Pages/12.dart';
import 'Pages/13.dart';
import 'Pages/14.dart';
import 'Pages/15.dart';
import 'Pages/2.dart';
import 'Pages/3.dart';
import 'Pages/4.dart';
import 'Pages/5.dart';
import 'Pages/6.dart';
import 'Pages/7.dart';
import 'Pages/8.dart';
import 'Pages/9.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const Resume(),
      'second': (context) => const second(),
      'third': (context) => const three(),
      'four': (context) => const four(),
      'five': (context) => const five(),
      'six': (context) => const six(),
      'seven': (context) => const seven(),
      'eight': (context) => const eight(),
      'nine': (context) => const nine(),
      'ten': (context) => const Ten(),
      'eleven': (context) => const eleven(),
      'twel': (context) => const twelve(),
      'tharteen': (context) => const Thirteen(),
      'fourteen': (context) => const fourteen(),
      'fifthteen': (context) => const fifteen(),
    },
  ));
}

class Resume extends StatefulWidget {
  const Resume({Key? key}) : super(key: key);

  @override
  State<Resume> createState() => _ResumeState();
}

class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 165,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              "\nResume Builder\n\n",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            Text(
              "RESUMES",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 5),
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff0475ff),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, 'second');
                });
              },
              child: Image.asset("assets/images/open-cardboard-box.png",
                  height: 120),
            ),
            const Text(
              "No Resumes + Create new resume.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff959595)),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                Navigator.pushNamed(context, 'second');
              });
            },
            backgroundColor: const Color(0xff0475ff),
            child: const Icon(Icons.add, size: 50, color: Colors.white),
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                Navigator.pushNamed(context, 'fourteen');
              });
            },
            backgroundColor: const Color(0xff0475ff),
            child: const Icon(Icons.download, size: 40, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
