import 'package:flutter/material.dart';
import 'package:laza_ecommerce/pages/reviews.dart';

class Screen10 extends StatefulWidget {
  const Screen10({super.key});

  @override
  State<Screen10> createState() => _Screen10State();
}

var x = 'images/6.png';

class _Screen10State extends State<Screen10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: double.infinity,
                  color: const Color.fromARGB(255, 242, 242, 242),
                  child: Stack(
                    children: [
                      Hero(
                        tag: 'xxx',
                        child: Center(
                          child: Image.asset(x),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            child: IconButton(
                              iconSize: 30,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_circle_left_outlined,
                                color: Color.fromARGB(255, 66, 62, 62),
                              ),
                            ),
                          ),
                          trailing: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white),
                            child: IconButton(
                                iconSize: 30,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Screen10()),
                                  );
                                },
                                icon: const Icon(Icons.shopping_bag_outlined,
                                    color: Color.fromARGB(255, 66, 62, 62))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 10, 0, 10),
                      child: Text(
                        "Men's Printed Pullover Hoodie",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8F959E)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 10, 35, 10),
                      child: Text(
                        'Price',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF8F959E)),
                      ),
                    ),
                  ),
                ],
              ),
              const Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 10),
                      child: Text(
                        "Nike Club Fleece",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1D1E20)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 25, 10),
                      child: Text(
                        '\$ 120',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1D1E20)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              x = 'images/6.png';
                            });
                          },
                          child: Row(
                            children: [
                              Image.asset('images/66.png'),
                              const Padding(padding: EdgeInsets.all(5)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              x = 'images/11-1.png';
                            });
                          },
                          child: Row(
                            children: [
                              Image.asset('images/11.png'),
                              const Padding(padding: EdgeInsets.all(5)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              x = 'images/12-1.png';
                            });
                          },
                          child: Row(
                            children: [
                              Image.asset('images/12.png'),
                              const Padding(padding: EdgeInsets.all(5)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              x = 'images/13-1.png';
                            });
                          },
                          child: Row(
                            children: [
                              Image.asset('images/13.png'),
                              const Padding(padding: EdgeInsets.all(5)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              x = 'images/14-1.png';
                            });
                          },
                          child: Row(
                            children: [
                              Image.asset('images/14.png'),
                              const Padding(padding: EdgeInsets.all(5)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              x = 'images/6.png';
                            });
                          },
                          child: Row(
                            children: [
                              Image.asset('images/66.png'),
                              const Padding(padding: EdgeInsets.all(5)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              x = 'images/11-1.png';
                            });
                          },
                          child: Row(
                            children: [
                              Image.asset('images/11.png'),
                              const Padding(padding: EdgeInsets.all(5)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              x = 'images/12-1.png';
                            });
                          },
                          child: Row(
                            children: [
                              Image.asset('images/12.png'),
                              const Padding(padding: EdgeInsets.all(5)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              x = 'images/13-1.png';
                            });
                          },
                          child: Row(
                            children: [
                              Image.asset('images/13.png'),
                              const Padding(padding: EdgeInsets.all(5)),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              x = 'images/13-1.png';
                            });
                          },
                          child: Row(
                            children: [
                              Image.asset('images/13.png'),
                              const Padding(padding: EdgeInsets.all(5)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                      child: Text(
                        "Size",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1D1E20)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                      child: Text(
                        'Size Guide',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF8F959E)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFF5F6FA),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                                child: Text(
                                  'S',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(5)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFF5F6FA),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                                child: Text(
                                  'M',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(5)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFF5F6FA),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                                child: Text(
                                  'L',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(5)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFF5F6FA),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                                child: Text(
                                  'XL',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(5)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFF5F6FA),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                                child: Text(
                                  '2XL',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(5)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFFF5F6FA),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                                child: Text(
                                  '3XL',
                                  style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ),
                            const Padding(padding: EdgeInsets.all(5)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
                  child: Text(
                    "Description",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF1D1E20)),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                  child: Text(
                    "The Nike Throwback Pullover Hoodie is made from premium French terry fabric that blends a performance feel with "
                    "Read More..",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF8F959E)),
                  ),
                ),
              ),
              const Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 25, 0, 10),
                      child: Text(
                        "Reviews",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1D1E20)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 25, 25, 10),
                      child: Text(
                        'View All',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF8F959E)),
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                  child: Image.asset('images/15.png'),
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
              const Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 0, 25),
                      child: Text(
                        "Total Price",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1D1E20)),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
                      child: Text(
                        '\$125',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1D1E20)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Reviews()),
            );
          },
          child: Container(
            decoration: const BoxDecoration(color: Color(0xFF9775FA)),
            width: MediaQuery.of(context).size.width,
            height: 75,
            child: const Center(
              child: Text(
                'Add to Cart',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
