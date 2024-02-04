import 'package:flutter/material.dart';
import 'package:shopping_app/responsive.dart';

class shoes extends StatefulWidget {
  const shoes({Key? key}) : super(key: key);

  @override
  _ShoesState createState() => _ShoesState();
}

class _ShoesState extends State<shoes> {
  late Screen device;

  Widget buildLookWidget() {
    switch (device) {
      case Screen.mobile:
        return look4();
      case Screen.tablet:
        return Column(
          children: [
            look(),
            look2(),
          ],
        );
      case Screen.desktop:
        return Column(
          children: [
            look(),
            look2(),
            look3(),
          ],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    device = detectScreen(context);

    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "YSL",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    searchbox(),
                    Divider(),
                    buildLookWidget(), 
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
Widget look4() => Container(
  padding: EdgeInsets.symmetric(horizontal: 16),
  child: Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/a1.jpg", "Ayakkabı", "₺ 2000.0"),
          item("assets/images/a2.jpg", "Ayakkabı", "₺ 15000.0"),
        ],
      ),
      SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/a3.jpg", "Ayakkabı", "₺ 19000.0"),
          item("assets/images/a4.jpg", "Ayakkabı", "₺ 10000.0"),
        ],
      ),
      SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/a5.jpg", "Ayakkabı", "₺ 18000.0"),
          item("assets/images/a6.jpg", "Ayakkabı", "₺ 8000.0"),
        ]
      ),
      SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/a7.jpg", "Ayakkabı", "₺ 9000.0"),
          item("assets/images/a8.jpg", "Ayakkabı", "₺ 3000.0"),
        ],
      ),
      SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/a9.jpg", "Ayakkabı", "₺ 4000.0"),
          item("assets/images/a10.jpg", "Ayakkabı", "₺ 1300.0"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/a12.jpg", "Ayakkabı", "₺ 800.0"),
          item("assets/images/a13.jpg", "Ayakkabı", "₺ 1000.0"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/a14.jpg", "Ayakkabı", "₺ 2000.0"),
          item("assets/images/a15.jpg", "Ayakkabı", "₺ 1500.0"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/a16.jpg", "Ayakkabı", "₺ 1700.0"),
          item("assets/images/a17.jpg", "Ayakkabı", "₺ 1400.0"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/a18.jpg", "Ayakkabı", "₺ 1500.0"),
          item("assets/images/a19.jpg", "Ayakkabı", "₺ 19000.0"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/a20.jpg", "Ayakkabı", "₺ 1900.0"),
          item("assets/images/a21.jpg", "Ayakkabı", "₺ 2300.0"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/a22.jpg", "Ayakkabı", "₺ 12300.0"),
          item("assets/images/a23.jpg", "Ayakkabı", "₺ 1480.0"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/a24.jpg", "Ayakkabı", "₺ 1300.0"),
          item("assets/images/a25.jpg", "Ayakkabı", "₺ 3000.0"),
        ],
      ),
    ],
  ),
);


  Widget look3() => Container(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  item("assets/images/a19.jpg", "Ayakkabı", "₺ 2000.0"),
                  item("assets/images/a20.jpg", "Ayakkabı", "₺ 15000.0"),
                  item("assets/images/a21.jpg", "Ayakkabı", "₺ 19000.0"),
                  item("assets/images/a22.jpg", "Ayakkabı", "₺ 10000.0"),
                  item("assets/images/a23.jpg", "Ayakkabı", "₺ 18000.0"),
                  item("assets/images/a24.jpg", "Ayakkabı", "₺ 8000.0"),
                  item("assets/images/a25.jpg", "Ayakkabı", "₺ 9000.0"),
                  item("assets/images/a26.jpg", "Ayakkabı", "₺ 3000.0"),
                  item("assets/images/a27.jpg", "Ayakkabı", "₺ 4000.0"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget look2() => Container(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  item("assets/images/a10.jpg", "Ayakkabı", "₺ 1900.0"),
                  item("assets/images/a11.jpg", "Ayakkabı", "₺ 1800.0"),
                  item("assets/images/a12.jpg", "Ayakkabı", "₺ 800.0"),
                  item("assets/images/a13.jpg", "Ayakkabı", "₺ 1000.0"),
                  item("assets/images/a14.jpg", "Ayakkabı", "₺ 2000.0"),
                  item("assets/images/a15.jpg", "Ayakkabı", "₺ 1500.0"),
                  item("assets/images/a16.jpg", "Ayakkabı", "₺ 1700.0"),
                  item("assets/images/a17.jpg", "Ayakkabı", "₺ 1400.0"),
                  item("assets/images/a18.jpg", "Ayakkabı", "₺ 1300.0"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget item(String photo, String title, String fiyat) => Container(
        width: 165,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(25, 170, 170, 170),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              photo,
              width: 150,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 56, 56, 56),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(173, 163, 161, 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  fiyat,
                  style: TextStyle(
                    fontSize: 8,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ]),
      );

  Widget searchbox() => Container(
        height: 50,
        margin: EdgeInsets.all(12),
        padding: EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromARGB(25, 170, 170, 170),
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.search, size: 17, color: Colors.grey),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Aramak istediğiniz ürünü giriniz",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            Icon(Icons.tune_outlined, size: 17, color: Colors.black),
          ],
        ),
      );

  Widget look() => Container(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  item("assets/images/a1.jpg", "Ayakkabı", "₺ 1500.0"),
                  item("assets/images/a2.jpg", "Ayakkabı", "₺ 1500.0"),
                  item("assets/images/a3.jpg", "Ayakkabı", "₺ 19000.0"),
                  item("assets/images/a4.jpg", "Ayakkabı", "₺ 1900.0"),
                  item("assets/images/a5.jpg", "Ayakkabı", "₺ 2300.0"),
                  item("assets/images/a6.jpg", "Ayakkabı", "₺ 12300.0"),
                  item("assets/images/a7.jpg", "Ayakkabı", "₺ 1480.0"),
                  item("assets/images/a8.jpg", "Ayakkabı", "₺ 1300.0"),
                  item("assets/images/a9.jpg", "Ayakkabı", "₺ 1500.0"),
                ],
              ),
            ),
          ],
        ),
      );
}
