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
                          right: 100,
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
                    child: GestureDetector(
                      onTap: () {
                        _modalBottomSheetMenu();
                      },
                      // child: Container(
                      //   height: 100,
                      //   color: Colors.blueAccent,
                      // )

                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: const Image(
                            image: AssetImage('assets/images/finalgit.gif'),
                            width: 400,
                          )),
                    ),
                  ),
                  Positioned(
                    top: 35,
                    left: 70,
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

  void _modalBottomSheetMenu() {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.5,
            maxHeight: MediaQuery.of(context).size.height * 0.95),
        builder: (builder) {
          var now = DateTime.now();
          var formatter = DateFormat('EEE d MMM kk:mm').format(now);
          return Container(
            color: Colors.transparent,
            padding: EdgeInsets.all(20),
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                    child: Container(
                      decoration: const BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: Colors.grey,
                      ),
                      height: 5,
                      width: 50,
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.15),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(20),
                            margin: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(29))),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Icon(Icons.refresh),
                                const Center(
                                  child: Image(
                                    image:
                                        AssetImage('assets/images/second.gif'),
                                    width: 400,
                                  ),
                                ),
                                Center(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      const Text('لم تثبت إصابته'),
                                      Text(
                                        " آخر تحديث : $formatter",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Arabic-Medium',
                                        ),
                                        maxLines: 3,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  const Text(
                    'الوضع الصحي',
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Arabic-Medium'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'تعتبر الأكوادالملونة طريقة لحفظ الخصوصية ومعرفه الوضع الصحي للمستخدم وفقا للبيانات الرسمية التي تصلنا من وزارة الصحة، كما أنها تحفظ البيانات الشخصية بتشفير عالي.',
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Arabic-Medium'),
                  ),
                  dataForBottomSheet(
                      'محصن',
                      'محصن : \n يوضح أن المستخدم قد أكمل جرعات لقاح (كوفيد-١٩). \n \n محصن جرعة أولي : \n يوضح أن المستخدم قد حصل علي حزء من اللقاحات ويتم عرضها بعد مرور ١٤ يوم من الحصول علي الجرعة وتستمر لمدة ١٨٠ يوما ما لم يكمل المستفيد كامل الجرعات او عند ثبوت إصابته. \n محصن متعافي : \n  يوضح أن المستخدم تعافي من اصابته وتكونت لديه مناعة طبيعية حيث تستمر لمدة ١٨٠ يوما مالم يتعرض المستفيد لأصابتة أخري أو عند حصوبة علي اللقاح. \n مسثني لأسباب طبية : \n يوضح أن المستفيد أعتمد من قبل لجنة الاستثناءات الطبية في الصحة العامة وأنه مستثني من تلقي لقاح كورونا.',
                      'assets/iconCode/16.png',
                      Colors.green,
                      Colors.greenAccent,
                      Colors.white),
                  const Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  dataForBottomSheet(
                      'لم تثبت إصابته',
                      'اللون الآبيض يوضح أن المستفيد أكبر من ١٢ سنة ولم تثبت إصابتة ولم يتلق لقاح كرونا',
                      'assets/iconCode/16.png',
                      Colors.white,
                      Colors.white,
                      Colors.green),
                  const Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  dataForBottomSheet(
                      'لم تثبت إصابته',
                      'اللون الأخضر يوضح أن المستفيد ذو من ١٢ سنة أو اقل ولم تثبت إصابتة ولم يتلق لقاح كرونا',
                      'assets/iconCode/16.png',
                      Colors.greenAccent,
                      Colors.green,
                      Colors.white),
                  const Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  dataForBottomSheet(
                      'مخالط',
                      'اللون البرتقالي يوضح أن المستفيد تم اكتشاف مخالتطه لشخص مصاب او يسكن معه في نفس السكن ويجب عليه الالتزام بالحجر الصحي المنزلي لمدخه ٧ ايام في حاله وجود نتيجه فحص سلبيه بعد اليوم الرابع من المخالصة او ١٠ ايام ',
                      'assets/iconCode/16.png',
                      Colors.amber,
                      Colors.amberAccent,
                      Colors.white),
                  const Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  dataForBottomSheet(
                      'المصاب',
                      'اللون البني يوضح أن المستخدم تثبت إصابته بفيروس كرونا وفقا للبيانات الرسمية التي تصلنا من وزارة الصحة',
                      'assets/iconCode/16.png',
                      Colors.brown,
                      Colors.brown,
                      Colors.white),
                  const Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  dataForBottomSheet(
                      'حجر منزلي',
                      'اللون الازرق يوضح أن المستفيد قادم من سفر وعليه: \n -اجراء فحص كورونا مع بداية اليوم السادس من الوصول \n -اتمام مدخ ٧ ايام من الحجر المنزلي علي ان تكون النتيجه سلبية. \n -الانتظار جتي يتم تحديث الحالة الصحية.',
                      'assets/iconCode/16.png',
                      Colors.blue,
                      Colors.lightBlue,
                      Colors.white),
                  const Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  dataForBottomSheet(
                      'حجر مؤسسي',
                      'اللون البنفسجي يوضح أن المستفيد قادم من سفر، وعليه: \n -إجراء فحصين كورونا ( علي أن تكون النتيجة سلبية) \n -الفحص الاول: خلال ال ٢٤ ساعة الاولي من القدوم. \n -الفحص الثاني : مع بداية اليوم السادس من الوصول. \n - اتمام ٧ ايام من الحجر المؤسسي. \n -الانتظار حتي يتم تحديث الحالة الصحية.',
                      'assets/iconCode/16.png',
                      Colors.purple,
                      Colors.purpleAccent,
                      Colors.white),
                  const Divider(
                    height: 1,
                    color: Colors.grey,
                  ),
                  dataForBottomSheet(
                      'لا يوجد اتصال بالانترنت',
                      'اللون الرمادي يوضح أن المستخدم لا يوجد لدية اتصال انترنت او لم يحدد موقع سكنه او انه يستخدم شبكه افتراضية خاصيه (VPN).',
                      'assets/iconCode/16.png',
                      Colors.grey,
                      Colors.grey,
                      Colors.white)
                ],
              ),
            ),
          );
        });
  }

  Padding dataForBottomSheet(String dataFirst, String dataSecond, String image,
      Color left, Color right, Color iconColor) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                dataFirst,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Arabic-Medium'),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.7,
                child: Text(dataSecond,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey[850],
                        fontWeight: FontWeight.w100,
                        fontFamily: 'Arabic-Medium')),
              )
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
            height: 50,
            width: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerRight,
                end: Alignment.centerLeft,
                colors: [left, right],
              ),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            // image: DecorationImage(image: AssetImage(image))),
            child: Image(
              image: AssetImage(image),
              height: 40,
              color: iconColor,
              alignment: Alignment.topRight,
            ),
          )
        ],
      ),
    );
  }
}
