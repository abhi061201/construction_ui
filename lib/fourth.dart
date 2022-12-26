import 'package:construction_ui/Generatebills.dart';
import 'package:construction_ui/ProjectScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FourthScreen extends StatefulWidget {
  const FourthScreen({super.key});

  @override
  State<FourthScreen> createState() => _FourthScreenState();
}

class _FourthScreenState extends State<FourthScreen> {
  @override
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.edit_outlined,
                      color: Colors.orange,
                    ),
                    Text(
                      'Edit   ',
                      style: TextStyle(fontSize: 18, color: Colors.orange),
                    ),
                  ],
                ),
                Mycard(),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Fuctions',
                        style: TextStyle(fontSize: 23),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Customcard(
                        title: 'Create Bill',
                        ontap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return GenerateBills();
                              },
                            ),
                          );
                        },
                      ),
                      Customcard(
                        title: 'Employees',
                        ontap: () {
                          
                        },
                      ),
                      Customcard(
                        title: 'Expenses',
                        ontap: () {},
                      ),
                      Customcard(
                        title: 'Recieving',
                        ontap: () {},
                      ),
                    ],
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

class Customcard extends StatelessWidget {
  String title;
  var ontap;
  Customcard({super.key, required this.title, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: InkWell(
        onTap: ontap,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.09,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color.fromARGB(236, 242, 213, 207),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
