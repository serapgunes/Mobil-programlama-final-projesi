import 'package:flutter/material.dart';
import 'package:shopping_app/responsive.dart';

class bag extends StatefulWidget {
  const bag({Key? key}) : super(key: key);

  @override
  _BagState createState() => _BagState();
}

class _BagState extends State<bag> {
  late Screen device;

  Widget buildLookWidget() {
    switch (device) {
      case Screen.mobile:
        return look4();
      case Screen.tablet:
        return Column(
          children: [
            look3(),
            look2(),
          ],
        );
      case Screen.desktop:
        return Column(
          children: [
            look3(),
            look2(),
            look(),
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
          item("assets/images/çanta19.jpg", "Çanta", "₺ 2000.0"),
          item("assets/images/çanta20.jpg", "Çanta", "₺ 15000.0"),
        ],
      ),
      SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/çanta21.jpg", "Çanta", "₺ 19000.0"),
          item("assets/images/çanta22.jpg", "Çanta", "₺ 10000.0"),
        ],
      ),
      SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/çanta23.jpg", "Çanta", "₺ 18000.0"),
          item("assets/images/çanta24.jpg", "Çanta", "₺ 8000.0"),
        ],
      ),
      SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/çanta25.jpg", "Çanta", "₺ 9000.0"),
          item("assets/images/çanta26.jpg", "Çanta", "₺ 3000.0"),
        ],
      ),
      SizedBox(height: 16),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/çanta27.jpg", "Çanta", "₺ 4000.0"),
          item("assets/images/çanta18.jpg", "Çanta", "₺ 1300.0"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/çanta10.jpg", "Çanta", "₺ 1900.0"),
          item("assets/images/çanta11.jpg", "Çanta", "₺ 1800.0"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/çanta12.jpg", "Çanta", "₺ 800.0"),
          item("assets/images/çanta13.jpg", "Çanta", "₺ 1000.0"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/çanta14.jpg", "Çanta", "₺ 2000.0"),
          item("assets/images/çanta15.jpg", "Çanta", "₺ 1500.0"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/çanta16.jpg", "Çanta", "₺ 1700.0"),
          item("assets/images/çanta17.jpg", "Çanta", "₺ 1400.0"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/çanta2.jpg", "Çanta", "₺ 1500.0"),
          item("assets/images/çanta3.jpg", "Çanta", "₺ 19000.0"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/çanta4.jpg", "Çanta", "₺ 1900.0"),
          item("assets/images/çanta5.jpg", "Çanta", "₺ 2300.0"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/çanta6.jpg", "Çanta", "₺ 12300.0"),
          item("assets/images/çanta7.jpg", "Çanta", "₺ 1480.0"),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          item("assets/images/çanta8.jpg", "Çanta", "₺ 1300.0"),
          item("assets/images/çanta9.jpg", "Çanta", "₺ 3000.0"),
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
                  item("assets/images/çanta19.jpg", "Çanta", "₺ 2000.0"),
                  item("assets/images/çanta20.jpg", "Çanta", "₺ 15000.0"),
                  item("assets/images/çanta21.jpg", "Çanta", "₺ 19000.0"),
                  item("assets/images/çanta22.jpg", "Çanta", "₺ 10000.0"),
                  item("assets/images/çanta23.jpg", "Çanta", "₺ 18000.0"),
                  item("assets/images/çanta24.jpg", "Çanta", "₺ 8000.0"),
                  item("assets/images/çanta25.jpg", "Çanta", "₺ 9000.0"),
                  item("assets/images/çanta26.jpg", "Çanta", "₺ 3000.0"),
                  item("assets/images/çanta27.jpg", "Çanta", "₺ 4000.0"),
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
                  item("assets/images/çanta10.jpg", "Çanta", "₺ 1900.0"),
                  item("assets/images/çanta11.jpg", "Çanta", "₺ 1800.0"),
                  item("assets/images/çanta12.jpg", "Çanta", "₺ 800.0"),
                  item("assets/images/çanta13.jpg", "Çanta", "₺ 1000.0"),
                  item("assets/images/çanta14.jpg", "Çanta", "₺ 2000.0"),
                  item("assets/images/çanta15.jpg", "Çanta", "₺ 1500.0"),
                  item("assets/images/çanta16.jpg", "Çanta", "₺ 1700.0"),
                  item("assets/images/çanta17.jpg", "Çanta", "₺ 1400.0"),
                  item("assets/images/çanta18.jpg", "Çanta", "₺ 1300.0"),
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
                  item("assets/images/çanta2.jpg", "Çanta", "₺ 1500.0"),
                  item("assets/images/çanta3.jpg", "Çanta", "₺ 19000.0"),
                  item("assets/images/çanta4.jpg", "Çanta", "₺ 1900.0"),
                  item("assets/images/çanta5.jpg", "Çanta", "₺ 2300.0"),
                  item("assets/images/çanta6.jpg", "Çanta", "₺ 12300.0"),
                  item("assets/images/çanta7.jpg", "Çanta", "₺ 1480.0"),
                  item("assets/images/çanta8.jpg", "Çanta", "₺ 1300.0"),
                  item("assets/images/çanta9.jpg", "Çanta", "₺ 3000.0"),
                ],
              ),
            ),
          ],
        ),
      );
}
