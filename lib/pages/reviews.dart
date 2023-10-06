import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../app/get_it.dart';
import 'addreview.dart';

TextEditingController dataname = TextEditingController();
TextEditingController datades = TextEditingController();
bool dess = false;

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFEFEFE),
        appBar: AppBar(
          toolbarHeight: 100,
          title: const Center(
              child: Text(
            "Reviews",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          )),
          backgroundColor: const Color(0xFFFEFEFE),
        ),
        body: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('images/rate2.png', width: 150),
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddReview()),
                        );
                      },
                      child: Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF7043),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.edit_square,
                                color: Colors.white,
                              ),
                              Text(
                                'Add Review',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Visibility(
                visible: dess,
                child: ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.account_box)),
                  title: Text(
                    getIt.get<SharedPreferences>().getString('pure_data') ??
                        '  ',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF1D1E20),
                    ),
                  ),
                  subtitle: const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.access_time_outlined,
                        size: 18,
                      ),
                      Padding(padding: EdgeInsets.all(5)),
                      Text('13 Sep, 2020')
                    ],
                  ),
                  trailing: Image.asset('images/rate.png'),
                ),
              ),
              Visibility(
                visible: dess,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 25, 20),
                    child: Text(
                      getIt.get<SharedPreferences>().getString('data_des') ??
                          'hello',
                      style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF8F959E)),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset('images/15.png'),
                ),
                title: const Text(
                  "Jenny Wilson",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1D1E20),
                  ),
                ),
                subtitle: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.access_time_outlined,
                      size: 18,
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text('13 Sep, 2020')
                  ],
                ),
                trailing: Image.asset('images/rate.png'),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 25, 20),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8F959E)),
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset('images/22.png'),
                ),
                title: const Text(
                  "Ronald Richards",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1D1E20),
                  ),
                ),
                subtitle: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.access_time_outlined,
                      size: 18,
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text('13 Sep, 2020')
                  ],
                ),
                trailing: Image.asset('images/rate.png'),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 25, 20),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8F959E)),
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset('images/21.png'),
                ),
                title: const Text(
                  "Guy Hawkins",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1D1E20),
                  ),
                ),
                subtitle: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.access_time_outlined,
                      size: 18,
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text('13 Sep, 2020')
                  ],
                ),
                trailing: Image.asset('images/rate.png'),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 25, 20),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8F959E)),
                  ),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset('images/20.png'),
                ),
                title: const Text(
                  "Savannah Nguyen",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1D1E20),
                  ),
                ),
                subtitle: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.access_time_outlined,
                      size: 18,
                    ),
                    Padding(padding: EdgeInsets.all(5)),
                    Text('13 Sep, 2020')
                  ],
                ),
                trailing: Image.asset('images/rate.png'),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 25, 20),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque malesuada eget vitae amet...",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8F959E)),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
