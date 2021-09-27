import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tawaklna/placeholder.dart';

import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Init.instance.initialize(),
      builder: (context, AsyncSnapshot snapshot) {
        // Show splash screen while waiting for app resources to load:
        if (snapshot.connectionState == ConnectionState.waiting) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
              ],
              supportedLocales: [
                const Locale('en', ''), // English, no country code
                const Locale('ar', ''), // Arabic, no country code
                const Locale('fr', ''),
                const Locale('pt_BR', ''),
              ],
              home: Splash());
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: MyHomePage(title: 'Flutter Demo Home Page'),
          );
        }
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  PageController controller = PageController(initialPage: 0, keepPage: true);
  late DateTime currentBackPressTime;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          extendBody: true,
          bottomNavigationBar: bottomAppBar((int position) {
            controller.animateToPage(position,
                duration: Duration(milliseconds: 1), curve: Curves.linear);
          }, controller, currentPage, context),
          body: WillPopScope(
            onWillPop: onWillPop,
            child: PageView(
              physics: NeverScrollableScrollPhysics(),
              controller: controller,
              children: [
                Home(),
                PlaceholderWidget(),
                PlaceholderWidget(),
                PlaceholderWidget(),
              ],
              onPageChanged: (page) {
                setState(() {
                  currentPage = page;
                });
              },
            ),
          ),
        ),
      ),
    );
    //   Scaffold(
    //   body: _children[_currentIndex], // new
    //   bottomNavigationBar: BottomNavigationBar(
    //     onTap: onTabTapped,
    //     showUnselectedLabels: true, // new
    //     currentIndex: _currentIndex, // new
    //     items: [
    //       new BottomNavigationBarItem(
    //         icon: Image(
    //           image: AssetImage("assets/icon/12.png"),
    //           height: 20,
    //         ),
    //         title: Text(
    //           'حسابي',
    //           style: TextStyle(color: Colors.black),
    //         ),
    //       ),
    //       new BottomNavigationBarItem(
    //         icon: Image(
    //           image: AssetImage("assets/icon/11.png"),
    //           height: 20,
    //         ),
    //         title: Text('لوحة البيانات', style: TextStyle(color: Colors.black)),
    //       ),
    //       new BottomNavigationBarItem(
    //           icon: Image(
    //             image: AssetImage("assets/icon/10.png"),
    //             height: 20,
    //           ),
    //           title: Text(
    //             'المحفظة الرقمية',
    //             style: TextStyle(color: Colors.black, fontSize: 12),
    //           )),
    //       new BottomNavigationBarItem(
    //           icon: Image(
    //             image: AssetImage("assets/icon/9.png"),
    //             height: 20,
    //           ),
    //           title: Text('الخدمات', style: TextStyle(color: Colors.black))),
    //       new BottomNavigationBarItem(
    //         icon: Image(
    //           image: AssetImage("assets/icon/8.png"),
    //           height: 20,
    //         ),
    //         title: Text('الرئيسية', style: TextStyle(color: Colors.black)),
    //       )
    //     ],
    //   ),
    // );
  }

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime) > Duration(seconds: 2)) {
      return Future.value(false);
    }
    return Future.value(true);
  }
}

Widget bottomAppBar(Function(int x) _selectionFunction,
    PageController controller, int currentPage, BuildContext context) {
  return BottomNavigationBar(
    backgroundColor: Colors.white,
    type: BottomNavigationBarType.fixed,
    elevation: 5,
    showUnselectedLabels: true,
    currentIndex: currentPage,
    selectedItemColor: Color(0xffffffff),
    unselectedItemColor: Color(0xccffffff),
    items: [
      BottomNavigationBarItem(
        icon: Image.asset(currentPage == 0 ? "tabHomeS" : "tabHome",
            width: 23, height: 23),
        title: Padding(
          padding: const EdgeInsets.only(top: 7),
          child: Text('الرئسية',
              style:
                  TextStyle(color: Colors.black, fontFamily: 'Arabic-Medium')),
        ),
      ),
      BottomNavigationBarItem(
          icon: Image.asset(
            currentPage == 1 ? "superior_fill_icon" : "superior_icon",
            width: 23,
            height: 23,
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Text('الخدمات',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Arabic-Medium')),
          )),
      BottomNavigationBarItem(
          icon: Image.asset(
            currentPage == 2 ? "tabNotificationS" : "tabNotification",
            width: 23,
            height: 23,
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Text('المحفظة الرقمية',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Arabic-Medium')),
          )),
      BottomNavigationBarItem(
          icon: Image.asset(
            currentPage == 3 ? "tabAccountS" : "tabAccount",
            width: 23,
            height: 23,
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Text('لوحة البيانات',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Arabic-Medium')),
          )),
      BottomNavigationBarItem(
          icon: Image.asset(
            currentPage == 3 ? "tabAccountS" : "tabAccount",
            width: 23,
            height: 23,
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 7),
            child: Text('حسابي',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Arabic-Medium')),
          )),
    ],
    onTap: _selectionFunction,
  );
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: new DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/splashTwaklana.jpeg")),
          ),
        ),
      ),
    );
  }
}

class Init {
  Init._();
  static final instance = Init._();

  Future initialize() async {
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    await Future.delayed(const Duration(seconds: 0));
  }
}
