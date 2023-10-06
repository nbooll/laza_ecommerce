import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'screen9.dart';

class Verification extends StatefulWidget {
  const Verification({Key? key}) : super(key: key);

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  Map userData = {};
  final _formkey2 = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color(0xFF1D1E20)),
      ),
      body: Form(
        key: _formkey2,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 75),
              child: Text(
                'Verification Code',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Image.asset('images/lock.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                style: const TextStyle(
                    fontSize: 35,
                    letterSpacing: 30,
                    fontWeight: FontWeight.w700),
                validator: MultiValidator([
                  RequiredValidator(errorText: 'Enter Validator Cood'),
                  PatternValidator(r"6521$", errorText: 'The code is wrong'),
                ]),
                decoration: InputDecoration(
                  errorStyle: const TextStyle(
                    fontSize: 25,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'True Cood : 6521',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
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
                      if (_formkey2.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Screen9()),
                        );
                      }
                    },
                    child: Container(
                      decoration: const BoxDecoration(color: Color(0xFF9775FA)),
                      width: MediaQuery.of(context).size.width,
                      height: 75,
                      child: const Center(
                        child: Text(
                          'Confirm Code',
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
