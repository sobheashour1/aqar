import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VrTour extends StatelessWidget {
  const VrTour({Key? key}) : super(key: key);

  // final aqarId = ModalRoute.of(context)!.settings.arguments as String;
  // //فريبل سليكت عشان تخزن ونحصل على الرحلة الي تم اختيارها
  // final selectData = Pass_data.firstWhere((trip) => trip.id == aqarId);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green.shade500,
        title: const Text(
          'صفحة التنقل',
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10,top: 20),
            child: Container(
              child: Text(
                'للتمتع بخدمة التجول الافتراضية داخل العقار الرجاء منك الضغط على الايقونة التي بالاسفل للانتقال مباشرة الى موقع العقار ....',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 150, 0, 20),
              child: Image.asset(
                'assets/images/00.jpg',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 500, 25, 20),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(primary: Colors.green.shade800,
                shadowColor:Colors.white,
                minimumSize: const Size(double.infinity, 75),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              label: const Text(
                '             جولة بتقنية 360درجة         ',
              ),
              icon: const Icon(Icons.accessibility_sharp,),
              onPressed: () async {
                // const url =
                //     'https://farouqashour.000webhostapp.com/ffff/output/';
                   const url='https://motiv-x.net/tours/19/04/Taurnblick/';
                //   var url= selectData.url;
                if (await canLaunch(url)) {
                  await launch(url,
                      forceSafariVC: false,
                      forceWebView: true,
                      enableJavaScript: true);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
