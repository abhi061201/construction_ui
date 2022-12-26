import 'package:construction_ui/fourth.dart';
import 'package:construction_ui/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddProject extends StatefulWidget {
  const AddProject({super.key});

  @override
  State<AddProject> createState() => _AddProjectState();
}

enum choice { Yes, No }

class _AddProjectState extends State<AddProject> {
  @override
  choice? _userChoice = choice.Yes;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  ' Add Project',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.035,
                ),
                MyTextField(
                  title: 'Project Name',
                  icon: Icon(Icons.home_work_outlined),
                  keyboardtype: TextInputType.name,
                ),
                MyTextField(
                  title: 'Location',
                  icon: Icon(Icons.location_on),
                  keyboardtype: TextInputType.streetAddress
                ),
                MyTextField(
                  title: 'Start Date',
                  icon: Icon(Icons.calendar_month),
                  keyboardtype: TextInputType.datetime,
                ),
                Row(
                  children: [
                    Text(
                      'With Materials',
                      style: TextStyle(fontSize: 17),
                    ),
                    Radio<choice>(
                      groupValue: _userChoice,
                      onChanged: (val) {
                        setState(() {
                          _userChoice = val;
                        });
                      },
                      value: choice.Yes,
                    ),
                    const Text(
                      'Yes',
                      style: TextStyle(fontSize: 16),
                    ),
                    Radio<choice>(
                      groupValue: _userChoice,
                      onChanged: (val) {
                        setState(() {
                          _userChoice = val;
                        });
                      },
                      value: choice.No,
                    ),
                    const Text(
                      'No',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const Text(
                  'Items',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                MyRow(),
                MyRow(),
                MyRow(),
                MyRow(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return FourthScreen();
                          }));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(191, 212, 209, 209),
                              borderRadius: BorderRadius.circular(3)),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.add_circle),
                                Text('Add'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
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

class MyTextField extends StatelessWidget {
  String title;
  Icon icon;
  var keyboardtype;
  MyTextField({super.key, required this.title, required this.icon, required this.keyboardtype});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 6, right: 6, top: 5, bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(104, 171, 167, 167),
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width,
        child: TextFormField(
          keyboardType: keyboardtype,
          decoration: InputDecoration(
            prefixIcon: icon,
            hintText: title,
            hintStyle: TextStyle(fontSize: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}

class MyRow extends StatefulWidget {
  const MyRow({super.key});

  @override
  State<MyRow> createState() => _MyRowState();
}

class _MyRowState extends State<MyRow> {
  @override
  Widget build(BuildContext context) {
    String dropDownvalue = "1";
    var itemlist = [
      "1",
      "2",
      "3",
      "4",
      "5",
      "6",
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 4),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            decoration: BoxDecoration(
              color: Color.fromARGB(104, 171, 167, 167),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  hintText: 'Item Name',
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.25,
            decoration: BoxDecoration(
              color: Color.fromARGB(104, 171, 167, 167),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  hintText: 'Rate/Unit',
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.2,
            decoration: BoxDecoration(
              color: Color.fromARGB(104, 171, 167, 167),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 5),
              child: DropdownButton(
                value: dropDownvalue,
                items: itemlist.map(
                  (String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  },
                ).toList(),
                onChanged: (String? newval) {
                  setState(() {
                    dropDownvalue = newval!;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
