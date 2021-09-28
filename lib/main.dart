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
          return const MaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
              ],
              supportedLocales: [
                Locale('en', ''), // English, no country code
                Locale('ar', ''), // Arabic, no country code
                Locale('fr', ''),
                Locale('pt_BR', ''),
              ],
              home: Splash());
        } else {
          return const MaterialApp(
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
  bool pressed = true;
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
                duration: const Duration(milliseconds: 1),
                curve: Curves.linear);
          }, controller, currentPage, context),
          body: WillPopScope(
            onWillPop: onWillPop,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller,
              children: const [
                Home(),
                PlaceholderWidget(),
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
    if (now.difference(currentBackPressTime) > const Duration(seconds: 2)) {
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
    selectedItemColor: const Color(0xffffffff),
    unselectedItemColor: const Color(0xccffffff),
    items: [
      BottomNavigationBarItem(
        icon: Image.asset(
            currentPage == 0 ? "assets/iconBar/3.png" : "assets/iconBar/8.png",
            width: 23,
            height: 23),
        title: const Padding(
          padding: EdgeInsets.only(top: 7),
          child: Text('الرئسية',
              style:
                  TextStyle(color: Colors.black, fontFamily: 'Arabic-Medium')),
        ),
      ),
      BottomNavigationBarItem(
          icon: Image.asset(
            currentPage == 1 ? "assets/iconBar/1.png" : "assets/iconBar/6.png",
            width: 23,
            height: 23,
          ),
          title: const Padding(
            padding: EdgeInsets.only(top: 7),
            child: Text('الخدمات',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Arabic-Medium')),
          )),
      BottomNavigationBarItem(
          icon: Image.asset(
            currentPage == 2 ? "assets/iconBar/2.png" : "assets/iconBar/7.png",
            width: 23,
            height: 23,
          ),
          title: const Padding(
            padding: EdgeInsets.only(top: 7),
            child: Text('المحفظة الرقمية',
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Arabic-Medium',
                    fontSize: 12)),
          )),
      BottomNavigationBarItem(
          icon: Image.asset(
            currentPage == 3 ? "assets/iconBar/4.png" : "assets/iconBar/9.png",
            width: 23,
            height: 23,
          ),
          title: const Padding(
            padding: EdgeInsets.only(top: 7),
            child: Text('لوحة البيانات',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Arabic-Medium')),
          )),
      BottomNavigationBarItem(
          icon: Image.asset(
            currentPage == 4 ? "assets/iconBar/5.png" : "assets/iconBar/10.png",
            width: 23,
            height: 23,
          ),
          title: const Padding(
            padding: EdgeInsets.only(top: 7),
            child: Text('حسابي',
                style: TextStyle(
                    color: Colors.black, fontFamily: 'Arabic-Medium')),
          )),
    ],
    onTap: _selectionFunction,
  );
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
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
