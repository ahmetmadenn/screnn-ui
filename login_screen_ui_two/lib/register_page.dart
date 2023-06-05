import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color(0xff1f005c),
              Color(0xff5b0060),
              Color(0xff870160),
              Color(0xffac255e),
              Color(0xffca485c),
              Color(0xffe16b5c),
              Color(0xfff39060),
              Color(0xffffb56b),
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 600,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(10),
                          child: const Text("SIGNUP",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 50,
                              )),
                        ),
                        GestureDetector(
                          child: Container(
                            height: 20,
                            padding: const EdgeInsets.fromLTRB(50, 10, 50, 50),
                            child: const TextField(
                              decoration: InputDecoration(),
                            ),
                          ),
                        ),
                        Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.fromLTRB(10, 10, 20, 20),
                            child: TextFormField(
                              validator: (deger) {
                                if (deger == null || deger.isEmpty) {
                                  return 'Please enter a valid name.';
                                }
                                return null;
                              },
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[300],
                                  contentPadding: const EdgeInsets.symmetric(),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                  hintText: 'Name *'),
                            )),
                        Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.fromLTRB(10, 10, 20, 20),
                            child: TextFormField(
                              validator: (deger) {
                                if (deger == null || deger.isEmpty) {
                                  return 'Please enter a valid email address.';
                                }
                                return null;
                              },
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[300],
                                  contentPadding: EdgeInsets.symmetric(),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                  hintText: 'Email *'),
                            )),
                        Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.fromLTRB(10, 10, 20, 20),
                            child: TextFormField(
                              validator: (deger) {
                                if (deger == null || deger.isEmpty) {
                                  return 'Please enter a valid mobile number.';
                                }
                                return null;
                              },
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[300],
                                  contentPadding: EdgeInsets.symmetric(),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                  hintText: 'Mobile Number *'),
                            )),
                        Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.fromLTRB(10, 10, 20, 20),
                            child: TextFormField(
                              validator: (deger) {
                                if (deger == null || deger.isEmpty) {
                                  return 'Please enter a valid password.';
                                }
                                return null;
                              },
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.grey[300],
                                  contentPadding: const EdgeInsets.symmetric(),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                  hintText: 'Password *'),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 100,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                print('email girişi onaylandı');
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightBlue,
                              textStyle: const TextStyle(fontSize: 19),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            child: const Text("SIGNUP"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
