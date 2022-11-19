import 'package:donut_app_ui/my_tab.dart';
import 'package:donut_app_ui/page/burger.dart';
import 'package:donut_app_ui/page/donut.dart';
import 'package:donut_app_ui/page/fried_chicken.dart';
import 'package:donut_app_ui/page/pizza.dart';
import 'package:donut_app_ui/page/smoothie.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    //donut tab
    MyTab(
      iconPath: "lib/icons/donut.png",
    ),
    //burger tab
    MyTab(
      iconPath: "lib/icons/hamburger.png",
    ),
    //pizza tab
    MyTab(
      iconPath: "lib/icons/pizza.png",
    ),
    //ice-cream tab
    MyTab(
      iconPath: "lib/icons/fried-chicken.png",
    ),
    //smoothie tab
    MyTab(
      iconPath: "lib/icons/smoothie.png",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.menu,
                    color: Colors.grey.shade600,
                    size: 30,
                  )),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.person,
                      color: Colors.grey.shade600,
                      size: 30,
                    )),
              )
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28, vertical: 14.0),
                child: Row(
                  children: [
                    Text(
                      "I Want to",
                      style: TextStyle(fontSize: 25, fontFamily: "Times New Roman"),
                    ),
                    Text(
                      " EAT",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Times New Roman",
                          fontWeight: FontWeight.bold,
                          color: Colors.brown
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),

              //tab bar
              TabBar(tabs: myTabs),

              //tabbar view
              Expanded(
                child: TabBarView(
                  children: [
                    DonutTab(),
                    BurgerTab(),
                    PizzaTab(),
                    FriedChickenTab(),
                    SmoothieTab(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
