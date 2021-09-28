import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PassportHealth extends StatefulWidget {
  const PassportHealth({Key? key}) : super(key: key);

  @override
  _PassportHealthState createState() => _PassportHealthState();
}

class _PassportHealthState extends State<PassportHealth> {
  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formatter = DateFormat('EEE d MMM kk:mm').format(now);
    return Scaffold(
      appBar: AppBar(
        // actions: [
        //   Icon(Icons.arrow_forward_ios),
        // ],

        title: const Text('الجواز الصحي'),
        centerTitle: true,
        backgroundColor: Color(0xE175A7A0),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10, right: 10, top: 20),
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(15.0),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Color(0xFF1B1464),
                        Color(0xE1006837),
                      ],
                    )),
                height: 150,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/images/person.jpeg'),
                        ),
                        Row(
                          children: const [
                            CircleAvatar(
                              radius: 20,
                              foregroundColor: Colors.teal,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.translate),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              radius: 20,
                              foregroundColor: Colors.teal,
                              backgroundColor: Colors.white,
                              child: Icon(Icons.category),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'SOLIMAN MOHAMED SOLIMAN ELBAKARI',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 60,
                left: 20,
                child: GestureDetector(
                  onTap: () {
                    _bottomSheet(context, '$formatter');
                  },
                  child: Container(
                    height: 50,
                    width: 390,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15)),
                        color: Colors.teal),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Download Health Passport',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.picture_as_pdf_outlined,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 150,
                  left: 20,
                  child: SingleChildScrollView(
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                        color: Colors.white,
                      ),
                      // color: Colors.black,
                      // height: 200,
                      width: 390,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              " آخر تحديث : $formatter",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                              maxLines: 3,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Personal Information',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          rowTextData('Nationality', 'Egypt'),
                          const SizedBox(
                            height: 10,
                          ),
                          rowTextData('ID NO.', '2461245108'),
                          const SizedBox(
                            height: 10,
                          ),
                          rowTextData('Passport No.', 'A22973640'),
                          const SizedBox(
                            height: 10,
                          ),
                          rowTextData('Blood Type', 'B+'),
                          const SizedBox(
                            height: 10,
                          ),
                          const Divider(
                            height: 10,
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text('Health Information',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          const Text(
                            'COVID-19 vaccine details ',
                            style: TextStyle(
                                fontWeight: FontWeight.w100, fontSize: 12),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          rowTextData('Frist Dose', 'Oxford/AstraZeneca'),
                          const Padding(
                            padding: EdgeInsets.only(left: 290),
                            child: Text('2021-01-16',
                                style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          rowTextData('Second Dose', 'Pfizer BioNtech'),
                          const Padding(
                            padding: EdgeInsets.only(left: 290),
                            child: Text('2021-05-07',
                                style: TextStyle(
                                  fontWeight: FontWeight.w200,
                                )),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Divider(
                            height: 10,
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Center(
                              child: Image(
                            image: AssetImage('assets/icon/13.png'),
                            height: 25,
                            width: 25,
                          )),
                          const SizedBox(
                            height: 20,
                          ),
                          const Center(
                            child: Text(
                              'NO COVID-19 PCR test result have been found ',
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 14),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Divider(
                            height: 10,
                            thickness: 1,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text('Travel Medical Insurance',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          const SizedBox(
                            height: 20,
                          ),
                          const Center(
                              child: Image(
                            image: AssetImage('assets/icon/14.png'),
                            height: 25,
                            width: 25,
                          )),
                          const SizedBox(
                            height: 20,
                          ),
                          const Center(
                            child: Text(
                              'Your immunization health status don not required traval medical insurance',
                              style: TextStyle(
                                  fontWeight: FontWeight.w200, fontSize: 14),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          // Container(
                          //   height: 20,
                          //   color: Colors.black,
                          // )
                        ],
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget rowTextData(String text1, String text2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          text2,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  void _bottomSheet(context, String time) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext bC) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.7,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: Colors.white),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 50,
                    color: Colors.grey[300],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.close),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.upload_outlined),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Image(
                      image: AssetImage('assets/images/25.jpg'),
                      // height: MediaQuery.of(context).size.height * 0.4,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Divider(
                    height: 10,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(time),
                        const Image(
                          image: AssetImage('assets/images/20.png'),
                          height: 20,
                          fit: BoxFit.fill,
                        ),
                        const SizedBox(
                          width: 100,
                          child: Text(
                            'Scan the QR code for electronic validation',
                            style: TextStyle(fontSize: 10),
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
