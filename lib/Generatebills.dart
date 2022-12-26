import 'package:construction_ui/AddProjectScreen.dart';
import 'package:construction_ui/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GenerateBills extends StatefulWidget {
  const GenerateBills({super.key});

  @override
  State<GenerateBills> createState() => _GenerateBillsState();
}

class _GenerateBillsState extends State<GenerateBills> {
  @override
  String dropDownvalue = "1";
  var itemlist = [
    "1",
    "2",
    "3",
    "4",
    "5",
    "6",
  ];
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
                SizedBox(height: 10,),
                Text(
                  ' Generate Bills',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                MyTextField(
                  title: 'Title',
                  icon: Icon(Icons.construction),
                  keyboardtype: TextInputType.name,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '  Details',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    MyTextField(
                      title: 'Description',
                      icon: Icon(Icons.edit),
                      keyboardtype: TextInputType.name,
                    ),
                    MyTextField(
                      title: 'Brief',
                      icon: Icon(Icons.mode),
                      keyboardtype: TextInputType.name,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyField(
                            title: 'Nos',
                            width: 45,
                          ),
                          MyField(
                            title: 'Length',
                            width: 55,
                          ),
                          MyField(
                            title: 'Width',
                            width: 53,
                          ),
                          MyField(
                            title: 'Height',
                            width: 55,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width * 0.2,
                            decoration: BoxDecoration(
                              color:  Color.fromARGB(104, 171, 167, 167),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left:20 , right: 5),
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
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Add Breif',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 16
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.05,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 240, 168, 60),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 4, right: 6),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                    Text('Add Details',
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(191, 212, 209, 209),
                                  borderRadius: BorderRadius.circular(3)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25, right: 25),
                                  child: Text('Finish'),
                                ),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(191, 212, 209, 209),
                                  borderRadius: BorderRadius.circular(3)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Text('Save and Create new Title'),
                                ),
                              ),
                            ),
                          ),
                        ],
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

class MyField extends StatelessWidget {
  String title;
  double width;
  MyField({super.key, required this.title, required this.width});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3, right: 3, top: 5, bottom: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(104, 171, 167, 167),
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: MediaQuery.of(context).size.height * 0.07,
        width: width,
        child: TextFormField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: title,
            hintStyle: TextStyle(fontSize: 10),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
