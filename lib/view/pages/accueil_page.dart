import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:talks/view/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class AccueilPage extends StatefulWidget {
  AccueilPage({Key? key}) : super(key: key);

  @override
  _AccueilPageState createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                "Bienvenue sur Talks",
                style: TextStyle(
                  color: TextTitleColor,
                  fontSize: MediaQuery.of(context).size.height * 0.044,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              Image.asset(
                "assets/images/hero.png",
                height: MediaQuery.of(context).size.height * 0.4,
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
                        text: 'Veuillez lire notre ',
                        style: TextStyle(
                          color: ChatBackgroundColorLight,
                          fontSize: MediaQuery.of(context).size.height * 0.0167,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: "Politique de confidentialité",
                              style: TextStyle(color: LinkColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  var url =
                                      "https://www.google.com/search?q=bonjour&oq=bonjour&aqs=chrome.0.69i59j69i57j0i271l3.7375j0j7&sourceid=chrome&ie=UTF-8";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                }),
                          TextSpan(
                            text:
                                ". Appuyez sur << Accepter et continuer >> pour accepter les ",
                            style: TextStyle(color: ChatBackgroundColorLight),
                          ),
                          TextSpan(
                              text: "Conditions d'utilisation.",
                              style: TextStyle(color: LinkColor),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  var url =
                                      "https://www.google.com/search?q=bonjour&oq=bonjour&aqs=chrome.0.69i59j69i57j0i271l3.7375j0j7&sourceid=chrome&ie=UTF-8";
                                  if (await canLaunch(url)) {
                                    await launch(url);
                                  } else {
                                    throw 'Could not launch $url';
                                  }
                                }),
                        ])),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              GestureDetector(
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.1),
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.77,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: PrimaryColorLight,
                      borderRadius: BorderRadius.circular(5)),
                  child: Text("ACCEPTER ET CONTINUER"),
                ),
                onTap: null,
              )
            ],
          ),
        ),
      ),
    );
  }
}
