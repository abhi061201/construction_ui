import 'package:construction_ui/AddProjectScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  int selectedindex = 0;
  void _ontap(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    ' Project\'s',
                    style: TextStyle(fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  const Text(
                    '  Your Projects',
                    style: TextStyle(fontSize: 18),
                  ),
                  Column(
                    children: [
                      Mycard(),
                      Mycard(),
                      Mycard(),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.16,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return AddProject();
                          }),
                        );
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.07,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 213, 212, 195),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.add_circle_outline),
                            SizedBox(width: MediaQuery.of(context).size.width*0.016,),
                            Text('Add Project'),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.account_circle,
                  ),
                  label: 'Account'),
            ],
            currentIndex: selectedindex,
            onTap: _ontap,
          )),
    );
  }
}

class Mycard extends StatelessWidget {
  const Mycard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        elevation: 0,
        shadowColor: Colors.grey,
        child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(236, 242, 213, 207),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Project Name',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                    ),
                    Text(
                      '13-12-2002',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(Icons.location_on),
                    Text('Location'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
