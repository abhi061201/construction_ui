import 'package:construction_ui/Profile.dart';
import 'package:construction_ui/ProjectScreen.dart';
import 'package:construction_ui/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  List<Image> list = const <Image>[
    Image(
      height: 30,
      image: AssetImage(
        'image/indianflag.png',
      ),
    ),
    Image(
      height: 30,
      image: AssetImage(
        'image/israel.png',
      ),
    ),
  ];
  Widget build(BuildContext context) {
    Image dropDownvalue = list.first;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.45,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(238, 240, 135, 111),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  ),
                ),
                child: const Image(
                  image: AssetImage('image/1.webp'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:30.0,right: 30, top: 20,bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage('image/1.webp'),
                      height: 50,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      'Brikow',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'India\'s #1 Construction Billing',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  Text(
                    'and Property Management App',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Center(
                child: Text(
                  'Login in or sign up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                    color: Colors.grey,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10,top: 10),
                child: Row(
                  children: [
                    Card(
                      shadowColor: Colors.grey,
                      child: DropdownButton<Image>(
                        value: dropDownvalue,
                        onChanged: (Image? value) {
                          setState(() {
                            dropDownvalue = value!;
                          });
                        },
                        items: list.map<DropdownMenuItem<Image>>((Image value) {
                          return DropdownMenuItem<Image>(
                              value: value, child: value);
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Card(
                      shadowColor: Color.fromARGB(255, 185, 183, 183),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 235,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: const InputDecoration(
                            hintText: '+91',
                            prefixStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                            prefixIcon: Icon(Icons.phone),
                            // prefixText: '+91',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 35, right: 35, top: 35),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Profile(),
                      ),
                    );
                  },
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(238, 240, 135, 111),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Center(
                      child: Text(
                        'Continue',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
