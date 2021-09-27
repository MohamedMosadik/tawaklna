import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'ServiceModel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<ServiceModel> model = [
    ServiceModel("التبرع بالأعضاء", 'assets/icon/1.png'),
    ServiceModel("الجواز الصحي", 'assets/icon/2.png'),
    ServiceModel("لقاح كرورنا", 'assets/icon/3.png'),
    ServiceModel("تعريف رقم الجوال", 'assets/icon/4.png'),
    ServiceModel("بطاقة الوضع الصحي", 'assets/icon/5.png'),
    ServiceModel("فحص كرورنا", 'assets/icon/6.png'),
    ServiceModel("باركود زيارة تجمع", 'assets/icon/7.png'),
  ];

  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = "ar_SA";
    var newFormat = new DateFormat.yMMMMd('ar_SA');
    var now = DateTime.now();
    var formatter = DateFormat('EEE d MMM kk:mm').format(now);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.teal,
                  size: 30,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.15),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                          ),
                          height: 220,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Image(
                            image: AssetImage('assets/image/triangle.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Positioned(
                          left: 100,
                          top: 20,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Color(0xFF054921),
                            child: CircleAvatar(
                              radius: 45,
                              backgroundImage:
                                  AssetImage('assets/image/person.jpeg'),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 90,
                          top: 130,
                          child: Text(
                            'سليمان محمد سليمان البقري',
                            style: TextStyle(
                                color: Color(0xFF054921),
                                fontFamily: 'Arabic-Medium'),
                          ),
                        ),
                        Positioned(
                          left: 120,
                          top: 150,
                          child: Text(
                            '٢٤٦١٢٤٥١٠٨',
                            style: TextStyle(
                                color: Color(0xFF054921),
                                fontFamily: 'Arabic-Medium'),
                          ),
                        ),
                        Positioned(
                          top: 190,
                          child: Container(
                              height: 25,
                              width: 70,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                  color: Color(0xFF054921))),
                        ),
                        Positioned(
                            right: 0,
                            bottom: 10,
                            child: Image(
                              image: AssetImage('assets/image/takakkalna.png'),
                              height: 20,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xE10C864D),
                          Color(0xFF054921),
                        ],
                      )
                      // color: Color(0xFF054921),
                      ),
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            var now = DateTime.now();
                            DateFormat('EEE d MMM kk:mm').format(now);
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Icon(
                              Icons.refresh,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text('محصّن',
                                // textDirection: TextDirection.RTL,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Arabic-Medium')),
                            SizedBox(
                              width: 120,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'أكمل جرعات لقاح كورونا (كوفيد 19)',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              maxLines: 3,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              " آخر تحديث : $formatter",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                              maxLines: 3,
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          child: Center(
                            child: Container(
                              height: 100,
                              width: 100,
                              // child:
                              // (_controller != null
                              //     ? VideoPlayer(
                              //   _controller,
                              // )
                              //     : Container()),
                            ),
                          ),

                          // Image(
                          //   image: AssetImage('assets/image/barcode.jpeg'),
                          //   height: 100,
                          //   fit: BoxFit.fill,
                          // ),
                        ),
                        // FloatingActionButton(
                        //   onPressed: () {
                        //     // createVideo();
                        //     _controller.play();
                        //   },
                        //   child: Icon(Icons.play_arrow),
                        // )
                      ]),
                ),
              ),
              service(context, 10),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  ),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.5),
                  //     spreadRadius: 5,
                  //     blurRadius: 7,
                  //     offset: Offset(0, 3), // changes position of shadow
                  //   ),
                  // ],
                  color: Color(0xE14AAF9E),
                  // color: Color(0xFF054921),
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Text(
                      'نشكرك علي وعيك بتحميل تطبيق تباعد',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          ' تــبـاعــــد \n Taboud',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Image(
                          image: AssetImage('assets/image/23.png'),
                          height: 25,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget service(BuildContext context, int position) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.arrow_back_ios,
                      size: 15,
                      color: Colors.black.withOpacity(0.7),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "عرض الكل",
                      style: TextStyle(
                          fontSize: 11,
                          color: const Color(0xff6d6d6d),
                          letterSpacing: 0.132,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Arabic-Medium'),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
              ),
              Text(
                'الخدمات الحديثة',
                style: TextStyle(
                    fontSize: 16,
                    color: const Color(0xE175A7A0),
                    letterSpacing: 0.192,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Arabic-Medium'),
                textAlign: TextAlign.start,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        SizedBox(
            height: 190,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                physics: const AlwaysScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                reverse: true,
                itemCount: model.length,
                itemBuilder: (context, position) {
                  int pos = position;
                  return Container(
                      width: MediaQuery.of(context).size.width / 3.7,
                      child: mostPopularCateg(
                        context: context,
                        onPress: () {
                          // position == 1
                          //     ? Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) => PassportHealth()))
                          //     : Navigator.push(
                          //         context,
                          //         MaterialPageRoute(
                          //             builder: (context) =>
                          //                 PlaceholderWidget()));
                        },
                        position: pos,
                        name: model[position].name,
                        icon: model[position].image,
                      ));
                },
              ),
            )),
      ],
    );
  }

  Widget mostPopularCateg({
    required Function onPress,
    required int position,
    required String icon,
    required String name,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          color: Colors.white,
        ),
        // color: Colors.black,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(
            width: 50,
            height: 50,
            child: Image.asset(
              icon,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            name,
            maxLines: 2,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontFamily: 'RB-Light'),
          )
        ]),
      ),
    );
  }
}
