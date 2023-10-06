import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'verification.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

enum Strength {
  empty('Empty', 0 / 4, Colors.transparent),
  weak('Weak', 1 / 4, Colors.red),
  medium('Medium', 2 / 4, Colors.orange),
  strong('Strong', 3 / 4, Colors.blue),
  veryStrong('Very Strong', 4 / 4, Colors.green),
  ;

  final String text;
  final double value;
  final Color color;

  const Strength(this.text, this.value, this.color);
}

bool _switchValue = true;

class _RegisterState extends State<Register> {
  bool isPressed = true;
  Map userData = {};
  final _formkey = GlobalKey<FormState>();

  Strength _strength = Strength.empty;

  void _updatePasswordStrength(String value) {
    setState(() {
      _strength = _calculatePasswordStrength(value);
    });
  }

  Strength _calculatePasswordStrength(String value) {
    if (value.isEmpty) {
      return Strength.empty;
    } else if (value.contains(RegExp(
        r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$"))) {
      return Strength.veryStrong;
    } else if (value.contains(
            RegExp(r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$")) ||
        value.contains(RegExp(
            r"^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,}$"))) {
      return Strength.strong;
    } else if (value
        .contains(RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"))) {
      return Strength.medium;
    } else {
      return Strength.weak;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color(0xFF1D1E20)),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 100),
              child: Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                validator: MultiValidator([
                  RequiredValidator(errorText: 'Enter Username'),
                  MinLengthValidator(3,
                      errorText: 'Minimum 3 charecter filled Username'),
                ]),
                decoration: const InputDecoration(
                  hintText: 'Enter Username',
                  labelText: 'Username',
                  prefixIcon: Icon(
                    Icons.person,
                    color: Color(0xFF9775FA),
                  ),
                  errorStyle: TextStyle(fontSize: 14.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                onChanged: (value) => _updatePasswordStrength(value),
                validator: MultiValidator([
                  RequiredValidator(errorText: 'Enter Password'),
                  PatternValidator(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$",
                      errorText:
                          'Minimum eight characters, at least one letter and one number'),
                ]),
                obscureText: isPressed,
                decoration: InputDecoration(
                  suffix: Text(
                    _strength.text,
                    style: TextStyle(
                      color: _strength.color,
                      fontSize: 20,
                    ),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isPressed = !isPressed;
                      });
                    },
                    icon: isPressed == true
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                  ),
                  hintText: 'Enter Password',
                  labelText: 'Password',
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Color(0xFF9775FA),
                  ),
                  errorStyle: const TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                validator: MultiValidator([
                  RequiredValidator(errorText: 'Enter email address'),
                  EmailValidator(errorText: 'Please correct email filled'),
                ]),
                decoration: const InputDecoration(
                  hintText: 'Enter Email Address',
                  labelText: 'Email Address',
                  prefixIcon: Icon(
                    Icons.email,
                    color: Color(0xFF9775FA),
                  ),
                  errorStyle: TextStyle(fontSize: 14.0),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: ListTile(
                title: const Text(
                  'Remember me',
                  style: TextStyle(
                      color: Color(0xFF1D1E20),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                trailing: CupertinoSwitch(
                  value: _switchValue,
                  onChanged: (value) {
                    setState(() {
                      _switchValue = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: InkWell(
                    onTap: () {
                      if (_formkey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Verification()),
                        );
                      }
                    },
                    child: Container(
                      decoration: const BoxDecoration(color: Color(0xFF9775FA)),
                      width: MediaQuery.of(context).size.width,
                      height: 75,
                      child: const Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
