import 'package:flutter/material.dart';
import 'package:shopping_app/responsive.dart';

class clothes extends StatefulWidget {
  const clothes({Key? key}) : super(key: key);
  @override
  _clothesstate createState() => _clothesstate();
}

class _clothesstate extends State<clothes> {
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
                )),
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
                item("assets/images/urun10.jpg", "Triko", "₺ 1900.0"),
                item("assets/images/urun11.jpg", "Triko", "₺ 1800.0"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item("assets/images/urun12.jpg", "Triko", "₺ 800.0"),
                item("assets/images/urun13.jpg", "Triko", "₺ 1000.0"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item("assets/images/urun14.jpg", "Triko", "₺ 2000.0"),
                item("assets/images/urun15.jpg", "Triko", "₺ 1500.0"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item("assets/images/urun16.jpg", "Triko", "₺ 1700.0"),
                item("assets/images/urun17.jpg", "Triko", "₺ 1400.0"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item("assets/images/urun1.jpg", "Ceket", "₺ 2000.0"),
                item("assets/images/urun2.jpg", "Ceket", "₺ 15000.0"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item("assets/images/urun3.jpg", "Ceket", "₺ 19000.0"),
                item("assets/images/urun4.jpg", "Ceket", "₺ 10000.0"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item("assets/images/urun5.jpg", "Ceket", "₺ 18000.0"),
                item("assets/images/urun6.jpg", "Ceket", "₺ 8000.0"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item("assets/images/urun7.jpg", "Ceket", "₺ 9000.0"),
                item("assets/images/urun8.jpg", "Ceket", "₺ 4000.0"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item("assets/images/urun19.jpg", "Kaban", "₺ 2000.0"),
                item("assets/images/urun20.jpg", "Kaban", "₺ 1500.0"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item("assets/images/urun21.jpg", "Kaban", "₺ 19000.0"),
                item("assets/images/urun22.jpg", "Kaban", "₺ 1900.0"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item("assets/images/urun22.jpg", "Kaban", "₺ 1900.0"),
                item("assets/images/urun23.jpg", "Kaban", "₺ 2300.0"),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                item("assets/images/urun24.jpg", "Kaban", "₺ 12300.0"),
                item("assets/images/urun25.jpg", "Kaban", "₺ 1480.0"),
              ],
            ),
          ],
        ),
      );

  Widget look2() => Container(
          child: Column(
        children: [
          titleitem("Ceketler", "View all"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                item("assets/images/urun1.jpg", "Ceket", "₺ 2000.0"),
                item("assets/images/urun2.jpg", "Ceket", "₺ 15000.0"),
                item("assets/images/urun3.jpg", "Ceket", "₺ 19000.0"),
                item("assets/images/urun4.jpg", "Ceket", "₺ 10000.0"),
                item("assets/images/urun5.jpg", "Ceket", "₺ 18000.0"),
                item("assets/images/urun6.jpg", "Ceket", "₺ 8000.0"),
                item("assets/images/urun7.jpg", "Ceket", "₺ 9000.0"),
                
                item("assets/images/urun8.jpg", "Ceket", "₺ 4000.0"),
              ],
            ),
          ),
        ],
      ));
  Widget look3() => Container(
          child: Column(
        children: [
          titleitem("Trikolar", "View all"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                item("assets/images/urun10.jpg", "Triko", "₺ 1900.0"),
                item("assets/images/urun11.jpg", "Triko", "₺ 1800.0"),
                item("assets/images/urun12.jpg", "Triko", "₺ 800.0"),
                item("assets/images/urun13.jpg", "Triko", "₺ 1000.0"),
                item("assets/images/urun14.jpg", "Triko", "₺ 2000.0"),
                item("assets/images/urun15.jpg", "Triko", "₺ 1500.0"),
                item("assets/images/urun16.jpg", "Triko", "₺ 1700.0"),
                item("assets/images/urun17.jpg", "Triko", "₺ 1400.0"),
                item("assets/images/urun18.jpg", "Triko", "₺ 1300.0"),
              ],
            ),
          ),
        ],
      ));
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
                  )),
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
      ));
  Widget look() => Container(
          child: Column(
        children: [
          titleitem("Kabanlar", "View all"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                item("assets/images/urun19.jpg", "Kaban", "₺ 2000.0"),
                item("assets/images/urun20.jpg", "Kaban", "₺ 1500.0"),
                item("assets/images/urun21.jpg", "Kaban", "₺ 19000.0"),
                item("assets/images/urun22.jpg", "Kaban", "₺ 1900.0"),
                item("assets/images/urun23.jpg", "Kaban", "₺ 2300.0"),
                item("assets/images/urun24.jpg", "Kaban", "₺ 12300.0"),
                item("assets/images/urun25.jpg", "Kaban", "₺ 1480.0"),
                item("assets/images/urun26.jpg", "Kaban", "₺ 1300.0"),
                item("assets/images/urun27.jpg", "Kaban", "₺ 3000.0"),
              ],
            ),
          ),
        ],
      ));
  Padding titleitem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            link,
            style: TextStyle(
              color: Color.fromARGB(255, 153, 153, 153),
              fontSize: 10,
            ),
          ),
        ],
      ),
    );
  }
}
