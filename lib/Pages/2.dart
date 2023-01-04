import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 165,
        leading: Align(
          alignment: const Alignment(0, -0.5),
          child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (route) => false);
                });
              },
              child: const Icon(Icons.arrow_back_ios, size: 30)),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Text(
              "\nResume Workspace\n\n",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            Text(
              "Build Options",
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
            Expanded(
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400, width: 1),
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'third');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/images/contact-info.png",
                        title: "Contact Info")),
              ),
            ),
            Expanded(
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400, width: 1),
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'four');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/images/briefcase.png",
                        title: "Carrier Objective")),
              ),
            ),
            Expanded(
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400, width: 1),
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'five');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/images/user.png",
                        title: "Personal Details")),
              ),
            ),
            Expanded(
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400, width: 1),
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'six');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/images/mortarboard.png",
                        title: "Education")),
              ),
            ),
            Expanded(
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400, width: 1),
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'seven');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/images/thinking.png",
                        title: "Experiences")),
              ),
            ),
            Expanded(
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400, width: 1),
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'eight');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/images/skill.png",
                        title: "Technical Skills")),
              ),
            ),
            Expanded(
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400, width: 1),
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'nine');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/images/open-book.png",
                        title: "Interest/Hobbies")),
              ),
            ),
            Expanded(
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400, width: 1),
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'ten');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/images/project.png",
                        title: "Projects")),
              ),
            ),
            Expanded(
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400, width: 1),
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, 'eleven');
                    });
                  },
                  child: myContainer(
                      myImage: "assets/images/experience.png",
                      title: "Achievements"),
                ),
              ),
            ),
            Expanded(
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400, width: 1),
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'twel');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/images/handshake.png",
                        title: "References")),
              ),
            ),
            Expanded(
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade400, width: 1),
                ),
                child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pushNamed(context, 'tharteen');
                      });
                    },
                    child: myContainer(
                        myImage: "assets/images/declaration.png",
                        title: "Declaration")),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myContainer({required String myImage, required String title}) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Image.asset(myImage, height: 45),
            ),
          ),
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                title,
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 30),
              child: Icon(Icons.arrow_forward_ios_outlined,
                  size: 25, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
