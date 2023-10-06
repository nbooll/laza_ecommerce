import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app/get_it.dart';
import 'reviews.dart';

class AddReview extends StatefulWidget {
  const AddReview({super.key});

  @override
  State<AddReview> createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      appBar: AppBar(
        toolbarHeight: 100,
        title: const Center(
            child: Text(
          "Add Review",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
        )),
        backgroundColor: const Color(0xFFFEFEFE),
        iconTheme: const CupertinoIconThemeData(
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 25, 25, 0),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Name",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 18),
              ),
            ),
            const Padding(padding: EdgeInsets.all(5)),
            TextField(
              controller: dataname,
              decoration: InputDecoration(
                fillColor: const Color(0xFFF5F6FA),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                hintText: 'Type your name',
                errorStyle: const TextStyle(fontSize: 14.0),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text(
                  "How was your experience ?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.all(5)),
            TextField(
              controller: datades,
              minLines: 6,
              keyboardType: TextInputType.multiline,
              maxLines: 10,
              decoration: InputDecoration(
                fillColor: const Color(0xFFF5F6FA),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                hintText: 'Describe your experience?',
                errorStyle: const TextStyle(fontSize: 14.0),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: InkWell(
          onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Center(
                  child: Text(
                'Thank you for your review',
                style: TextStyle(fontWeight: FontWeight.w700),
              )),
              content: Image.asset('images/thank-you.gif'),
              actions: <Widget>[
                Center(
                  child: TextButton(
                    onPressed: () {
                      dess = true;
                      setState(() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Reviews()),
                        );
                      });
                      getIt
                          .get<SharedPreferences>()
                          .setString('pure_data', dataname.text);

                      getIt
                          .get<SharedPreferences>()
                          .setString('data_des', datades.text);
                    },
                    child: const Text(
                      'Next',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF9775FA)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          child: Container(
            decoration: const BoxDecoration(color: Color(0xFF9775FA)),
            width: MediaQuery.of(context).size.width,
            height: 75,
            child: const Center(
              child: Text(
                'Submit Review',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
