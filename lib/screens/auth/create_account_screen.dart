import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  var email = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          elevation: 0,
          centerTitle: true,
          title: Text(
            'الأشتراك',
            style: Theme.of(context).textTheme.headline5,
          ),
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.green.shade400,
        body: Container(
          padding: const EdgeInsets.only(top: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 10, 10),
                  child: Text(
                    'تسجيل الدخول الى تطبيق عقار',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                Container(
                    padding: const EdgeInsets.all(15),
                    child: TextFormField(
                      // نفس فكرة عمل id في الجافا لنستطيع استخدامه
                      //controller: email,
                      style: const TextStyle(color: Colors.black),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.emailAddress,
                      decoration:
                          const InputDecoration(labelText: "ادخل اسمك الاول"),
                    )),
                Container(
                    padding: const EdgeInsets.all(15),
                    child: TextFormField(
                      //controller: email,
                      style: const TextStyle(color: Colors.black),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.emailAddress,
                      decoration:
                          const InputDecoration(labelText: "ادخل اسمك الاخير"),
                    )),
                Container(
                    padding: const EdgeInsets.all(15),
                    child: TextFormField(
                      // نفس فكرة عمل id في الجافا لنستطيع استخدامه
                      //controller: email,
                      style: const TextStyle(color: Colors.black),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        labelText: "ادخل رقمك *",
                      ),
                    )),
                Container(
                    padding: const EdgeInsets.all(15),
                    child: TextFormField(
                      // نفس فكرة عمل id في الجافا لنستطيع استخدامه
                      controller: email,
                      style: const TextStyle(color: Colors.black),
                      textAlign: TextAlign.start,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: "ادخل الايميل الخاص بك",
                      ),
                    )),
                Container(
                  padding: const EdgeInsets.only(
                      right: 15, left: 15, top: 8, bottom: 8),
                  child: TextFormField(
                    // نفس فكرة عمل id في الجافا لنستطيع استخدامه
                    controller: password,
                    obscureText: true,
                    textAlign: TextAlign.start,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      labelText: "ادخل كلمة السر",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: MaterialButton(
                    onPressed: () {
                      print(email.text);
                      print(password.text);
                    },
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    color: Colors.brown[100],
                    child: const Text("تسجيل"),
                    textColor: Colors.black,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
