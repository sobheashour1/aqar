import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;

  String? _emailError;
  String? _passwordError;

  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();

    _tapGestureRecognizer = TapGestureRecognizer()
      ..onTap = navigateToCreateAccount;
    //_tapGestureRecognizer.onTap = navigateToCreateAccount;
  }

  void navigateToCreateAccount() =>
      Navigator.pushNamed(context, '/create_account_screen');

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'تسجيل دخول',
          style:Theme.of(context).textTheme.headline5,
        ),
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(
          gradient:LinearGradient(
            begin:AlignmentDirectional.topStart,
              end: AlignmentDirectional.bottomEnd,

              colors: [
                Colors.green.shade200,
                Colors.green.shade800,
              ]
          )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 111, 20, 200),
            child: Column(
              children: [
                SizedBox(
                    child: Image.asset('assets/images/back.jpeg',height: 150,)),

                const Text(
                  '...اهلا بكم في تطبيق عقارك',
                  style:  TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    fontFamily: 'Tajawal'
                  ),
                ),
                const Text(
                  ' ...ادخل بياناتك الشخصية',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    fontFamily: 'Tajawal'
                  ),
                ),
                const SizedBox(height: 40),
                TextField(
                  controller: _emailTextController,
                  cursorColor: Colors.pink,
                  cursorWidth: 5,
                  cursorRadius: const Radius.circular(10),
                  // cursorHeight: 10,
                  showCursor: false,
                  maxLength: 30,
                  buildCounter: (
                    context, {
                    required int currentLength,
                    required bool isFocused,
                    required int? maxLength,
                  }) {
                    return null;
                    // return Text('($currentLength | $maxLength)');
                  },
                  onChanged: (String value) {
                  },
                  style:
                      const TextStyle(color: Colors.black, fontWeight: FontWeight.w100),
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    errorText: _emailError,
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.red.shade900,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'رقم الهاتف ',
                    enabled: true,
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.red.shade100,
                        width: 1,
                      ),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 1,
                      ),
                    ),

                    prefixIcon: const Icon(Icons.phone),
                    fillColor: Colors.grey.shade200,
                    filled: true,
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _passwordTextController,
                  obscureText: true,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.red,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 1,
                        color: Colors.red.shade900,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    errorText: _passwordError,
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    hintText: 'كلمة السر',
                    prefixIcon: const Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.grey.shade400,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.blue.shade400,
                        width: 1,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    _performLogin();
                  },
                  child: const Text('تسجيل دخول'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                  ),
                ),
                const SizedBox(height: 10),
                Center(
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: 'ليس لديك حساب \'',
                      style: const TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        const TextSpan(text: ' '),
                        TextSpan(
                          recognizer: _tapGestureRecognizer,
                          text: 'انشأ الان!',
                          style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),

          ),
        ),
      ),
    );
  }

  void _performLogin() {
    if(checkData()){
      login();
    }
  }

  bool checkData() {
    if (_emailTextController.text.isNotEmpty &&
        _passwordTextController.text.isNotEmpty) {
      checkErrors();
      return true;
    } else {
      checkErrors();
    }
    showSnackBar(
      message: 'ادخل البيانات المطلوبة',
      error: true,
    );
    return false;
  }

  void checkErrors() {
    setState(() {
      _emailError = _emailTextController.text.isNotEmpty ? null : 'خطأ بالايميل';
      _passwordError =
          _passwordTextController.text.isNotEmpty ? null : 'خطأ بكلمة السر';
    });
  }

  void showSnackBar({required String message, bool error = false}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: error ? Colors.red : Colors.green,
      ),
    );
  }

  void login(){
    Navigator.pushReplacementNamed(context, '/main_screen');
  }
}
