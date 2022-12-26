import 'package:construction_ui/AddProjectScreen.dart';
import 'package:construction_ui/ProjectScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

enum choice { Registered, Unregistered }

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  choice? _userChoice = choice.Registered;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ' Profile',
                  style: TextStyle(fontSize: 30),
                ),
                MyTextField(
                  title: 'Contractor',
                  icon: Icon(Icons.person_add_alt_1),
                  keyboardtype: TextInputType.name,
                ),
                MyTextField(
                  title: 'Your Name',
                  icon: Icon(Icons.person),
                  keyboardtype: TextInputType.name,
                ),
                MyTextField(
                  title: 'Mobile Number',
                  icon: Icon(Icons.phone_android),
                  keyboardtype: TextInputType.number,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6.0, right: 6),
                  child: Row(
                    children: [
                      Text(
                        'GST',
                      ),
                      Radio(
                          value: choice.Registered,
                          groupValue: _userChoice,
                          onChanged: (value) {
                            setState(() {
                              _userChoice = value;
                            });
                          }),
                      Text('Registered'),
                      Radio(
                          value: choice.Unregistered,
                          groupValue: _userChoice,
                          onChanged: (value) {
                            setState(() {
                              _userChoice = value;
                            });
                          }),
                      Text('Unregistered'),
                    ],
                  ),
                ),
                MyTextField(
                  title: 'GST Number',
                  icon: Icon(Icons.edit_calendar_outlined),
                  keyboardtype: TextInputType.name,
                ),
                MyTextField(
                  title: 'Pan Number',
                  icon: Icon(Icons.edit_calendar_outlined),
                  keyboardtype: TextInputType.name,
                ),
                MyTextField(
                  title: 'Firm/Company Name',
                  icon: Icon(Icons.home_work_outlined),
                  keyboardtype: TextInputType.name,
                ),
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Project();
                      }));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(3)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 30,
                            right: 30,
                          ),
                          child: Text('Save Profile',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
