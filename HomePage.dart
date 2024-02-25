import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_2/customWidget/customeContainer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey,
                    width: 4.0,
                    style: BorderStyle.solid), //Border.all

                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white10,
                    offset: const Offset(
                      1.0,
                      1.0,
                    ),
                    blurRadius: 20.0,
                    spreadRadius: 20.0,
                  ),
                  BoxShadow(
                    color: Colors.black54,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ]),
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 66,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-6/412122730_909070284149430_8539896982692686703_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=RhRwqg_87twAX9_ud3K&_nc_ht=scontent.fcai19-7.fna&oh=00_AfDXLvnhx47bDgX8YZsEhGyivcUHMxwhaPvyVejBC2BlIA&oe=65E10D72"),
                    radius: 64,
                  ),
                  backgroundColor: Colors.green,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Belal Youssef (4B)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CostumContainer(
                      data1: "age",
                      data2: "26 ",
                      data3: "years",
                      icon: Icon(
                        Icons.calendar_month,
                        color: Colors.blue,
                        size: 35,
                      ),
                      ContainerColor: Colors.blue.shade200,
                      BorderColor: Colors.blue.shade900,
                    ),
                    CostumContainer(
                      data1: "Weight",
                      data2: "78",
                      data3: "Kg",
                      icon: Icon(
                        Icons.anchor_rounded,
                        color: Colors.green.shade900,
                        size: 35,
                      ),
                      ContainerColor: Colors.green.shade300,
                      BorderColor: Colors.green,
                    ),
                    CostumContainer(
                      data1: "Height",
                      data2: "179",
                      data3: "cm",
                      icon: Icon(
                        Icons.upgrade_rounded,
                        color: Colors.orange.shade800,
                        size: 35,
                      ),
                      ContainerColor: Colors.orange.shade200,
                      BorderColor: Colors.orange,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey,
                    width: 4.0,
                    style: BorderStyle.solid), //Border.all

                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white10,
                    offset: const Offset(
                      1.0,
                      1.0,
                    ),
                    blurRadius: 20.0,
                    spreadRadius: 20.0,
                  ),
                  BoxShadow(
                    color: Colors.black54,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ]),
            child: Column(
              children: [
                ListTile(
                    leading: Icon(
                      Icons.sunny,
                      color: Colors.yellow,
                    ),
                    title: Text("Light Theme"),
                    trailing: Switch(
                      value: value,
                      onChanged: (val) {
                        setState(() {
                          value = val;
                        });
                      },
                    )),
                SizedBox(
                  height: 5,
                ),
                ListTile(
                    leading: Icon(
                      Icons.language,
                      color: Colors.green,
                      size: 30,
                    ),
                    title: Text("English"),
                    trailing: Icon(Icons.arrow_drop_down_sharp))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey,
                    width: 4.0,
                    style: BorderStyle.solid), //Border.all

                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white10,
                    offset: const Offset(
                      1.0,
                      1.0,
                    ),
                    blurRadius: 20.0,
                    spreadRadius: 20.0,
                  ),
                  BoxShadow(
                    color: Colors.black54,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //BoxShadow
                ]),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  title: Text("Log out"),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black26,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white10,
                    offset: const Offset(
                      1.0,
                      1.0,
                    ),
                    blurRadius: 20.0,
                    spreadRadius: 20.0,
                  ),
                  BoxShadow(
                    color: Colors.black54,
                    offset: const Offset(0.0, 0.0),
                    blurRadius: 0.0,
                    spreadRadius: 0.0,
                  ), //B,
                ]),
            width: 650,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  child: Icon(Icons.home),
                ),
                InkWell(
                  child: Icon(Icons.analytics),
                ),
                InkWell(
                  child: Icon(Icons.recycling_rounded),
                ),
                InkWell(
                  child: Icon(Icons.accessible_sharp),
                ),
              ],
            ),
          ),
        ]),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   unselectedItemColor: Colors.white,
      //   type: BottomNavigationBarType.fixed,
      //   items: [
      //     BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home,
      //           color: Colors.white,
      //         ),
      //         label: "Home"),
      //     BottomNavigationBarItem(

      //         icon: Icon(Icons.analytics, color: Colors.white),
      //         label: "Analytics"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.precision_manufacturing, color: Colors.white),
      //         label: "prescripitons"),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.person_off_outlined, color: Colors.white),
      //         label: "profile")
      //   ],
      // ),
    );
  }
}
