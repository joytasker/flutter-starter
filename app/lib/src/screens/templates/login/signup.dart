import 'package:app/src/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:app/src/utils/size_utils.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController currentDate = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime(2000),
        firstDate: DateTime(1970),
        lastDate: DateTime.now());
    if (pickedDate != null &&
        pickedDate.toString().substring(0, 10) != currentDate.text)
      setState(() {
        currentDate.text = pickedDate.toString().substring(0, 10);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.dark,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(
              horizontal: 30.toWidth, vertical: 15.toHeight),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign Up",
                style: Theme.of(context).textTheme.headline2.copyWith(),
              ),
              SizedBox(
                height: 13.toHeight,
              ),
              Text(
                "Please enter the details to create your account.",
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 40.toHeight,
              ),
              Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.text,
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
                      labelText: 'Full Name',
                      prefixIcon: Icon(
                        Icons.person_outline_outlined,
                        size: 25,
                      ),
                      filled: false,
                    ),
                  ),
                  SizedBox(height: 25.toHeight),
                  TextField(
                    onTap: () {
                      _selectDate(context);
                      FocusScope.of(context).requestFocus(new FocusNode());
                    },
                    readOnly: true,
                    controller: currentDate,
                    autocorrect: false,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: 'Date Of Birth',
                      prefixIcon: Icon(
                        Icons.date_range,
                        size: 25,
                      ),
                      filled: false,
                    ),
                  ),
                  SizedBox(height: 25.toHeight),
                  TextField(
                    keyboardType: TextInputType.number,
                    autocorrect: false,
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.headline5.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      labelText: 'Contact Number',
                      prefixIcon: Icon(
                        Icons.call,
                        size: 25,
                      ),
                      filled: false,
                    ),
                  ),
                  SizedBox(height: 25.toHeight),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
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
                  SizedBox(height: 25.toHeight),
                  TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
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
              SizedBox(height: 40.toHeight),
              Center(
                child: CustomButton(
                  isSecondary: false,
                  onTap: () {},
                  text: 'Create Account',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
