import 'dart:async';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
//import 'package:pin_entry_text_field/pin_entry_text_field.dart';
import 'package:talks/view/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class VerifyNumberPage extends StatefulWidget {
  const VerifyNumberPage({Key? key}) : super(key: key);

  @override
  _VerifyNumberPageState createState() => _VerifyNumberPageState();
}

class _VerifyNumberPageState extends State<VerifyNumberPage> {
  //String phoneNo;
  String smsOTP = '';
  String verificationId = '';
  String errorMessage = '';
  //final FirebaseAuth _auth = FirebaseAuth.instance;
  //Timer _timer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Load data only once after screen load
    /*if (widget._isInit) {
      widget._contact = '${ModalRoute.of(context).settings.arguments as String}';
      generateOtp(widget._contact);
      widget._isInit = false;
    }*/
  }

  //dispose controllers
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Container(
            child: Center(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(''),
              Text("Vérifier +237 695 104 050",
                  style: TextStyle(
                    color: PrimaryColorLight,
                    fontSize: MediaQuery.of(context).size.height * 0.03,
                    fontWeight: FontWeight.w600,
                  )),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width * 0.005),
                  child: Icon(
                    Icons.more_vert_outlined,
                    color: Colors.grey,
                  ),
                ),
                onTap: null,
              )
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.1),
            child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text:
                        'En attente de détection automatique d\' un SMS envoyé au +237 695 104 050. ',
                    style: TextStyle(
                        color: ChatBackgroundColorLight,
                        fontSize: MediaQuery.of(context).size.height * 0.02),
                    children: [
                      TextSpan(
                          text: "Numéro incorrect ?",
                          style: TextStyle(color: LinkColor),
                          recognizer: TapGestureRecognizer()..onTap = null)
                    ])),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: screenWidth > 600 ? screenWidth * 0.2 : 16),
            padding: const EdgeInsets.all(16.0),
            /*decoration: BoxDecoration(
                color: Colors.white,
                // ignore: prefer_const_literals_to_create_immutables
                boxShadow: [
                  const BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(16.0)),*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.025),
                  /*child: PinEntryTextField(
                      fields: 6,
                      onSubmit: (text) {
                        smsOTP = text as String;
                        Colors.white;
                      },
                    )*/
                ),
              ],
            ),
          ),
        ],
      ),
    )));
  }
}
