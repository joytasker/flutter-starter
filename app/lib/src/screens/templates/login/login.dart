import 'package:flutter/material.dart';
import 'package:app/src/utils/size_utils.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              horizontal: 20.toWidth, vertical: 12.toHeight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Keep Connected",
                style: Theme.of(context).textTheme.headline2.copyWith(
                      fontSize: 28.toFont,
                    ),
              ),
              SizedBox(
                height: 13.toHeight,
              ),
              Text(
                "Enter your email address and password to login into your account.",
                style:
                    TextStyle(fontWeight: FontWeight.w300, fontSize: 14.toFont),
              ),
              SizedBox(
                height: 30.toHeight,
              ),
              Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    autofocus: true,
                    autocorrect: false,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: 'Email Address',
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        size: 25,
                      ),
                      filled: false,
                    ),
                  ),
                  SizedBox(height: 10.toHeight),
                  TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    autofocus: true,
                    autocorrect: false,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: 'Password',
                      prefixIcon: Icon(
                        Icons.lock_outline,
                        size: 25,
                      ),
                      filled: false,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.toHeight),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Theme(
                      data: ThemeData(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _value = !_value;
                          });
                        },
                        child: Row(
                          children: [
                            _value
                                ? Icon(Icons.check_box, color: Colors.grey)
                                : Icon(Icons.check_box_outline_blank,
                                    color: Colors.grey),
                            SizedBox(width: 5.toWidth),
                            Text(
                              'Remember Me',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontSize: 13.toFont,
                                    color: Colors.grey,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Theme(
                      data: ThemeData(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/forgot-password');
                        },
                        child: Text(
                          'Forgot Password?',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                fontSize: 13.toFont,
                                color: Colors.grey,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.toHeight),
              Align(
                alignment: Alignment.centerRight,
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, "/enter-number");
                  },
                  child: Text(
                    "Login With Number",
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontSize: 13.toFont,
                          color: Colors.grey,
                        ),
                  ),
                ),
              ),
              SizedBox(height: 20.toHeight),
              Container(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        enableFeedback: true,
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Theme.of(context).primaryColorDark,
                        ),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(
                              horizontal: 100.toWidth, vertical: 15.toHeight),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      onPressed: () {
                        // Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        "Login Now",
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    SizedBox(
                      height: 14.toHeight,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        enableFeedback: true,
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white,
                        ),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(
                              horizontal: 80.toWidth, vertical: 15.toHeight),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/signup');
                      },
                      child: Text(
                        "Create Account",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: Colors.black),
                      ),
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
}
