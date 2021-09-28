// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tawaklna/passport.dart';
import 'package:tawaklna/placeholder.dart';

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
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Intl.defaultLocale = "ar_SA";
    var newFormat = DateFormat.yMMMMd('ar_SA');
    var now = DateTime.now();
    var formatter = DateFormat('EEE d MMM kk:mm').format(now);

    final logicalSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(
                  Icons.notifications_none_outlined,
                  color: Colors.teal,
                  size: 30,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                    child: Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 0),
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.15),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                            color: Colors.white,
                          ),
                          height: 220,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: const Image(
                            image: AssetImage('assets/images/triangle.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        const Positioned(
                          left: 100,
                          top: 20,
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Color(0xFF054921),
                            child: CircleAvatar(
                              radius: 45,
                              backgroundImage:
                                  AssetImage('assets/images/person.jpeg'),
                            ),
                          ),
                        ),
                        const Positioned(
                          left: 90,
                          top: 130,
                          child: Text(
                            'سليمان محمد سليمان البقري',
                            style: TextStyle(
                                color: Color(0xFF054921),
                                fontFamily: 'Arabic-Medium'),
                          ),
                        ),
                        const Positioned(
                          right: 120,
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
                          left: 0,
                          child: Container(
                              height: 25,
                              width: 70,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                  color: Color(0xFF054921))),
                        ),
                        const Positioned(
                            right: 0,
                            bottom: 10,
                            child: Image(
                              image: AssetImage('assets/images/takakkalna.png'),
                              height: 20,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Center(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: const Image(
                          image: AssetImage('assets/images/finalgit.gif'),
                          width: 400,
                        )),
                  ),
                  Positioned(
                    top: 35,
                    left: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('محصّن',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Arabic-Medium',
                            )),
                        const SizedBox(
                          width: 120,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'أكمل جرعات لقاح كورونا (كوفيد 19)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arabic-Medium',
                          ),
                          maxLines: 3,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          " آخر تحديث : $formatter",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Arabic-Medium',
                          ),
                          maxLines: 3,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 30,
                    child: GestureDetector(
                      onTap: () {
                        var now = DateTime.now();
                        DateFormat('EEE d MMM kk:mm').format(now);
                      },
                      child: Container(
                        color: Colors.transparent,
                        child: const Icon(
                          Icons.refresh,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),

              //
              // Center(
              //     child: Image(
              //   image: AssetImage('assets/images/finalgit.gif'),
              //   // height: 100,
              // )

              // Container(
              //   margin: const EdgeInsets.all(20),
              //   padding: const EdgeInsets.all(20),
              //   decoration: BoxDecoration(
              //       borderRadius: const BorderRadius.all(
              //         Radius.circular(15.0),
              //       ),
              //       boxShadow: [
              //         BoxShadow(
              //           color: Colors.grey.withOpacity(0.5),
              //           spreadRadius: 5,
              //           blurRadius: 7,
              //           offset:
              //               const Offset(0, 3), // changes position of shadow
              //         ),
              //       ],
              //       gradient: const LinearGradient(
              //         begin: Alignment.topRight,
              //         end: Alignment.bottomLeft,
              //         colors: [
              //           Color(0xE10C864D),
              //           Color(0xFF054921),
              //         ],
              //       )
              //       // color: Color(0xFF054921),
              //       ),
              //   width: MediaQuery.of(context).size.width * 0.9,
              //   child: Row(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Expanded(
              //           child: Center(
              //             child: Column(
              //               children: [
              //                 Container(
              //                   decoration: const BoxDecoration(
              //                       image: DecorationImage(
              //                     image:
              //                         AssetImage('assets/images/Qrcode.gif'),
              //                   )),
              //                   height: 100,
              //                   width: 100,
              //                   // child: RadialPainter(
              //                   //     80.0,
              //                   //     Color(0xff334556, StrokeCap.square,
              //                   //         PaintingStyle.stroke, 20.0, 10.0)),
              //
              //                   // child: const Image(
              //                   //   image: AssetImage('assets/images/20.png'),
              //                   //   height: 100,
              //                   //   fit: BoxFit.fill,
              //                   // ),
              //                   // (_controller != null
              //                   //     ? VideoPlayer(
              //                   //   _controller,
              //                   // )
              //                   //     : Container()),
              //                 ),
              //               ],
              //             ),
              //           ),
              //         ),
              //         const SizedBox(
              //           width: 10,
              //         ),
              //         Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             const Text('محصّن',
              //                 style: TextStyle(
              //                   color: Colors.white,
              //                   fontSize: 15,
              //                   fontWeight: FontWeight.bold,
              //                   fontFamily: 'Arabic-Medium',
              //                 )),
              //             const SizedBox(
              //               width: 120,
              //             ),
              //             const SizedBox(
              //               height: 10,
              //             ),
              //             const Text(
              //               'أكمل جرعات لقاح كورونا (كوفيد 19)',
              //               style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 12,
              //               ),
              //               maxLines: 3,
              //             ),
              //             const SizedBox(
              //               height: 10,
              //             ),
              //             Text(
              //               " آخر تحديث : $formatter",
              //               style: const TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 12,
              //               ),
              //               maxLines: 3,
              //             ),
              //           ],
              //         ),
              //         const SizedBox(
              //           width: 20,
              //         ),
              //
              //         // FloatingActionButton(
              //         //   onPressed: () {
              //         //     // createVideo();
              //         //     _controller.play();
              //         //   },
              //         //   child: Icon(Icons.play_arrow),
              //         // )
              //         GestureDetector(
              //           onTap: () {
              //             var now = DateTime.now();
              //             DateFormat('EEE d MMM kk:mm').format(now);
              //           },
              //           child: Container(
              //             color: Colors.transparent,
              //             child: const Icon(
              //               Icons.refresh,
              //               color: Colors.white,
              //             ),
              //           ),
              //         ),
              //       ]),
              // ),

              service(context, 10),
              Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
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
                    const Text(
                      'نشكرك علي وعيك بتحميل تطبيق تباعد',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontFamily: 'Arabic-Medium'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Image(
                          image: AssetImage('assets/images/23.png'),
                          height: 23,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          ' تــبـاعــــــد \n Taboud',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Arabic-Medium'),
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
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'الخدمات الحديثة',
                style: TextStyle(
                    fontSize: 16,
                    color: Color(0xE175A7A0),
                    letterSpacing: 0.192,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Arabic-Medium'),
                textAlign: TextAlign.start,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              GestureDetector(
                onTap: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "عرض الكل",
                      style: TextStyle(
                          fontSize: 11,
                          color: Color(0xff6d6d6d),
                          letterSpacing: 0.132,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'Arabic-Medium'),
                      textHeightBehavior:
                          TextHeightBehavior(applyHeightToFirstAscent: false),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ],
                ),
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
                // reverse: true,
                itemCount: model.length,
                itemBuilder: (context, position) {
                  int pos = position;
                  return SizedBox(
                      width: MediaQuery.of(context).size.width / 3.7,
                      child: mostPopularCateg(
                        context: context,
                        onPress: () {
                          position == 1
                              ? Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PassportHealth()))
                              : Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PlaceholderWidget()));
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
    required Function() onPress,
    required int position,
    required String icon,
    required String name,
    required BuildContext context,
  }) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.15),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
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
          const SizedBox(
            height: 20,
          ),
          Text(
            name,
            maxLines: 2,
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w100,
                color: Colors.black87,
                fontFamily: 'Arabic-Medium'),
          )
        ]),
      ),
    );
  }
}
//
// class RadialPainter extends CustomPainter {
//   final double progress;
//   final Color color;
//   final StrokeCap strokeCap;
//   final PaintingStyle paintingStyle;
//   final double initialPercentage;
//   final double totalPercentage;
//
//   RadialPainter(this.progress, this.color, this.strokeCap, this.paintingStyle,
//       this.initialPercentage, this.totalPercentage);
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..strokeWidth = 10
//       ..color = color
//       ..style = paintingStyle
//       ..strokeCap = strokeCap;
//
//     Offset center = Offset(size.width / 2, size.height / 2);
//     double relativeProgress = 360 * progress;
//
//     Rect rect = new Rect.fromCircle(
//       center: center,
//       radius: 80.0,
//     );
//
//     var initialPercentage = 10.0;
//
//     //SQUARE WITH PATH
//     var path = Path();
//     path.lineTo(size.width, 0);
//     path.lineTo(size.width, size.height);
//     path.lineTo(size.width / size.width, size.height);
//     path.lineTo(0, 1);
//     canvas.drawPath(path, paint);
//
//     //SQUARE WITH RECT
//     final left = 0.0;
//     final top = 0.0;
//     final right = size.width;
//     final bottom = size.height;
//     final rectx = Rect.fromLTRB(left, top, right, bottom);
//     canvas.drawRect(rectx, paint);
//
//     //CIRCULAR PROGRESS
//     canvas.drawArc(
//       Rect.fromCircle(center: center, radius: size.width / 2),
//       math.radians(-90),
//       math.radians(-relativeProgress),
//       false,
//       paint,
//     );
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return true;
//   }
// }

// class HexagonalProgress extends StatefulWidget {
//   final double size;
//   final Color backgroundColor;
//   final Color color;
//   HexagonalProgress(
//       {Key? key,
//       required this.size,
//       this.backgroundColor = Colors.grey,
//       this.color = Colors.blue})
//       : super(key: key);
//
//   @override
//   _HexagonalProgress createState() => new _HexagonalProgress();
// }
//
// class _HexagonalProgress extends State<HexagonalProgress>
//     with SingleTickerProviderStateMixin {
//   late AnimationController controller;
//   late Animation animation;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     controller = new AnimationController(
//         vsync: this, duration: const Duration(milliseconds: 5000))
//       ..repeat();
//     animation = Tween(begin: 0.0, end: 360.0).animate(controller);
//     controller.addListener(() {
//       setState(() {});
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return new Stack(
//       alignment: Alignment.center,
//       children: <Widget>[
//         new CustomPaint(
//           painter: new _HexagonalCanvas(
//               progress: animation.value,
//               backgroundColor: widget.backgroundColor,
//               color: widget.color),
//           size: new Size(widget.size, widget.size),
//         ),
//         new Text(
//           '${(animation.value / 360 * 100).round()}%',
//           style: new TextStyle(
//               color: Colors.white,
//               fontSize: widget.size / 5,
//               fontWeight: FontWeight.bold),
//         )
//       ],
//     );
//   }
// }
//
// class _HexagonalCanvas extends CustomPainter {
//   final double progress;
//   final Color backgroundColor;
//   final Color color;
//
//   _HexagonalCanvas(
//       {required this.progress,
//       this.backgroundColor = Colors.grey,
//       this.color = Colors.blue});
//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = new Paint();
//     paint
//       ..color = backgroundColor
//       ..strokeWidth = size.width / 10
//       ..strokeCap = StrokeCap.round
//       ..style = PaintingStyle.stroke;
//
//     var path = new Path();
//     path.moveTo(size.width / 4 * 1, size.height / 4 * 0);
//     path.lineTo(size.width / 4 * 3, size.height / 4 * 0);
//     // path.lineTo(size.width / 4 * 4, size.height / 4 * 1);
//     path.lineTo(size.width / 4 * 4, size.height / 4 * 3);
//
//     // path.lineTo(size.width / 4 * 3, size.height / 4 * 4);
//     path.lineTo(size.width / 4 * 1, size.height / 4 * 4);
//     // path.lineTo(size.width / 4 * 0, size.height / 4 * 3);
//     path.lineTo(size.width / 4 * 0, size.height / 4 * 1);
//     // path.lineTo(size.width / 4 * 1, size.height / 4 * 0);
//
//     canvas.drawPath(path, paint);
//
//     var angle = 45;
//     var pathb = new Path();
//     pathb.moveTo(size.width / 4 * 1, size.height / 4 * 0);
//
//     pathb.lineTo(
//         size.width / 4 * 1 +
//             ((angle - progress) > 0 ? ((progress) / angle) : 1) *
//                 size.width /
//                 2,
//         size.height / 4 * 0);
//
//     if (progress > angle)
//       pathb.lineTo(
//           size.width / 4 * 3 +
//               ((angle * 2 - progress) > 0 ? ((progress - angle) / angle) : 1) *
//                   size.width /
//                   4,
//           size.height / 4 * 0 +
//               ((angle * 2 - progress) > 0 ? ((progress - angle) / angle) : 1) *
//                   size.height /
//                   4);
//
//     // if (progress > angle * 2)
//     //   pathb.lineTo(
//     //       size.width / 4 * 4,
//     //       size.height / 4 * 1 +
//     //           ((angle * 3 - progress) > 0
//     //                   ? ((progress - angle * 2) / angle)
//     //                   : 1) *
//     //               size.height /
//     //               2);
//
//     if (progress > angle * 3)
//       pathb.lineTo(
//           size.width / 4 * 4 -
//               ((angle * 4 - progress) > 0
//                       ? ((progress - angle * 3) / angle)
//                       : 1) *
//                   size.width /
//                   4,
//           size.height / 4 * 3 +
//               ((angle * 4 - progress) > 0
//                       ? ((progress - angle * 3) / angle)
//                       : 1) *
//                   size.height /
//                   4);
//
//     // if (progress > angle * 4)
//     //   pathb.lineTo(
//     //       size.width / 4 * 3 -
//     //           ((angle * 5 - progress) > 0
//     //                   ? ((progress - angle * 4) / angle)
//     //                   : 1) *
//     //               size.width /
//     //               2,
//     //       size.height / 4 * 4 +
//     //           0 *
//     //               ((angle * 5 - progress) > 0
//     //                   ? ((progress - angle * 4) / angle)
//     //                   : 1) *
//     //               size.height /
//     //               4);
//
//     if (progress > angle * 5)
//       pathb.lineTo(
//           size.width / 4 * 1 -
//               ((angle * 6 - progress) > 0
//                       ? ((progress - angle * 5) / angle)
//                       : 1) *
//                   size.width /
//                   4,
//           size.height / 4 * 4 -
//               ((angle * 6 - progress) > 0
//                       ? ((progress - angle * 5) / angle)
//                       : 1) *
//                   size.height /
//                   4);
//
//     if (progress > angle * 6)
//       pathb.lineTo(
//           size.width / 4 * 0 -
//               0 *
//                   ((angle * 7 - progress) > 0
//                       ? ((progress - angle * 6) / 45)
//                       : 1) *
//                   size.width /
//                   4,
//           size.height / 4 * 3 -
//               ((angle * 7 - progress) > 0
//                       ? ((progress - angle * 6) / angle)
//                       : 1) *
//                   size.height /
//                   2);
//
//     // if (progress > angle * 7)
//     //   pathb.lineTo(
//     //       size.width / 4 * 0 +
//     //           ((angle * 8 - progress) > 0 ? ((progress - angle * 7) / 45) : 1) *
//     //               size.width /
//     //               4,
//     //       size.height / 4 * 1 -
//     //           ((angle * 8 - progress) > 0
//     //                   ? ((progress - angle * 7) / angle)
//     //                   : 1) *
//     //               size.height /
//     //               4);
//
//     Rect rect = new Offset(0.0, 0.0) & size;
//     paint
//       ..shader = new LinearGradient(
//               colors: [Colors.yellow, Colors.red],
//               begin: Alignment.topRight,
//               end: Alignment.bottomLeft)
//           .createShader(rect);
//     canvas.drawPath(
//         pathb,
//         paint
//           ..color = color
//           ..strokeWidth = size.width / 12);
//   }
//
//   @override
//   bool shouldRepaint(_HexagonalCanvas oldDelegate) {
//     return oldDelegate.progress != progress;
//   }
// }

// class RectanglePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint()
//       ..color = Colors.blue
//       ..strokeWidth = 3
//       ..style = PaintingStyle.stroke;
//
//     final a = Offset(size.width * 1 / 50, size.height * 1 / 40);
//     final b = Offset(size.width * 5.3 / 5, size.height * 3.2 / 3);
//     final rect = Rect.fromPoints(a, b);
//
//     canvas.drawRect(rect, paint);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }

// class Line extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _LineState();
// }
//
// class _LineState extends State<Line> with SingleTickerProviderStateMixin {
//   double _progress = 0.0;
//   late Animation<double> animation;
//
//   @override
//   void initState() {
//     super.initState();
//     var controller = AnimationController(
//         duration: Duration(milliseconds: 3000), vsync: this);
//
//     animation = Tween(begin: 1.0, end: 1.0).animate(controller)
//       ..addListener(() {
//         setState(() {
//           _progress = animation.value;
//         });
//       });
//
//     controller.forward();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(painter: LinePainter(_progress, Paint()));
//   }
// }
//

// class Line extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _LineState();
// }
//
// class _LineState extends State<Line> with SingleTickerProviderStateMixin {
//   double _progress = 0.0;
//   late Animation<double> animation;
//
//   @override
//   void initState() {
//     super.initState();
//     var controller = AnimationController(
//         duration: Duration(milliseconds: 3000), vsync: this);
//
//     animation = Tween(begin: 0.0, end: 1.0).animate(controller)
//       ..addListener(() {
//         setState(() {
//           _progress = animation.value;
//         });
//       });
//
//     controller.forward();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(painter: LinePainter(_progress, Paint()));
//   }
// }
//
// class LinePainter extends CustomPainter {
//   Paint _paint;
//   double _progress;
//
//   LinePainter(this._progress, this._paint) {
//     _paint = Paint()
//       ..color = Colors.green
//       ..strokeWidth = 8.0;
//   }
//
//   // @override
// // void paint(Canvas canvas, Size size) {
// //   canvas.drawLine(
// //       Offset(0.0, 0.0),
// //       Offset(size.width - size.width * _progress,
// //           size.height - size.height * _progress),
// //       _paint);
// // }
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     const left = 0.0;
//     const top = 0.0;
//     const right = 100.0;
//     const bottom = 100.0;
//     final rect = Rect.fromLTRB(left * _progress, top * _progress,
//         right * _progress, bottom * _progress);
//     // final rec = Rect.fromPoints(Offset(left, right), Offset(bottom, top));
//     final paint = _paint
//       ..color = Colors.black
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = 4;
//     // canvas.drawLine(paint);
//     // canvas.drawLine(Offset(100.0 * _progress, 0.100 * _progress),
//     // Offset(50.0, 0.100 * _progress), paint);
//     // canvas.drawLine(Offset(left * _progress, right * _progress),
//     //     Offset(right, left * _progress), paint);
//
//     // Timer(const Duration(milliseconds: 3000), () {});
//
//     //left
//     canvas.drawLine(Offset(0.100, 100.100 * _progress),
//         Offset(0.0 * _progress, 0.0 * _progress), paint);
//
//     //top
//     canvas.drawLine(Offset(100.100, 0.100 * _progress),
//         Offset(0.0 * _progress, 0.0 * _progress), paint);
//     //right
//     canvas.drawLine(Offset(100.0, 100.100 * _progress),
//         Offset(100.0 * _progress, 0.100 * _progress), paint);
//
//     // Down
//     canvas.drawLine(Offset(100.100, 100.100 * _progress),
//         Offset(100.100 * _progress, 100.100 * _progress), paint);
//
//     // canvas.drawLine(Offset(100.100, 100.100 * _progress),
//     //     Offset(100.100 * _progress, 100.100 * _progress), paint);
//     // canvas.drawLine(Offset(100.100, 0.100 * _progress),
//     //     Offset(0.0 * _progress, 0.0 * _progress), paint);
//   }
//
//   @override
//   bool shouldRepaint(LinePainter oldDelegate) {
//     return oldDelegate._progress != _progress;
//   }
// }
//
// // void
// // paint(Canvas canvas, Size size) {
// //   final left = 50.0;
// //   final top = 100.0;
// //   final right = 250.0;
// //   final bottom = 200.0;
// //   final rect = Rect.fromLTRB(left, top, right, bottom);
// //   final paint = Paint()
// //     ..color = Colors.black
// //     ..style = PaintingStyle.stroke
// //     ..strokeWidth = 4;
// //   canvas.drawRect(rect, paint);
// // }
