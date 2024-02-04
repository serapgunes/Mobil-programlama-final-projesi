import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_app/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homestate createState() => _homestate();
}

class _homestate extends State<homepage> {
  late Screen device;

  Widget buildLookWidget() {
    switch (device) {
      case Screen.mobile:
        return look6();
      case Screen.tablet:
        return Column(
          children: [
            look(),
            look2(),
            look3(),
          ],
        );
      case Screen.desktop:
        return Column(
          children: [
            look(),
            look2(),
            look3(),
            look4(),
            look5(),
          ],
        );
    }
  }

  instagram() {
    final Uri uri = Uri.parse("https://www.instagram.com");
    launchUrl(uri);
  }

  linkedin() {
    final Uri uri = Uri.parse("https://www.linkedin.com/in/serapgunes");
    launchUrl(uri);
  }

  call() {
    final Uri uri = Uri.parse("tel:+9012345784234");
    launchUrl(uri);
  }

  email() {
    final Uri uri = Uri.parse("mailto:serap.gunes@stu.istinye.edu.tr");
    launchUrl(uri);
  }

  sms() {
    final Uri uri = Uri.parse("sms:+90012345784234");
    launchUrl(uri);
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
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/profil');
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/avatar.jpeg'),
                        radius: 45,
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Serap Güneş',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  menuitem(
                    title: "AnaSayfa",
                    icon: Icon(Icons.home),
                    onTap: () {
                      Navigator.pushNamed(context, "/home");
                    },
                  ),
                  menuitem(
                    title: "Hakkımızda",
                    icon: Icon(Icons.info_outline),
                    onTap: () {
                      Navigator.pushNamed(context, "/about");
                    },
                  ),
                  menuitem(
                    title: "Giyim",
                    icon: Icon(Icons.checkroom),
                    onTap: () {
                      Navigator.pushNamed(context, "/clothes");
                    },
                  ),
                  menuitem(
                    title: "Ayakkabılar",
                    icon: SvgPicture.asset(
                      height:20,
                      "assets/icons/high-heel.svg"),
                    onTap: () {
                      Navigator.pushNamed(context, "/shoes");
                    },
                  ),
                  menuitem(
                    title: "Çantalar",
                    icon: Icon(Icons.local_mall),
                    onTap: () {
                      Navigator.pushNamed(context, "/bag");
                    },
                  ),
                  menuitem(
                    title: "Takılar",
                    icon: SvgPicture.asset(
                      height:20,
                      "assets/icons/diamond.svg"),
                    onTap: () {
                      Navigator.pushNamed(context, "/diamond");
                    },
                  ),
                  menuitem(
                    title: "Sepetim",
                    icon: Icon(Icons.shopping_cart),
                    onTap: () {
                      Navigator.pushNamed(context, "/shop");
                    },
                  ),
                  menuitem(
                    title: "Mağazalar",
                    icon: Icon(Icons.location_on),
                    onTap: () {
                      Navigator.pushNamed(context, "/location");
                    },
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: instagram,
                    child: SvgPicture.asset(
                      "assets/icons/instagram.svg",
                      height: 22,
                      colorFilter:
                          ColorFilter.mode(Colors.black, BlendMode.srcIn),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: linkedin,
                  child: SvgPicture.asset(
                    "assets/icons/linkedin.svg",
                    height: 22,
                    colorFilter:
                        ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap: call, child: Icon(Icons.phone)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap: sms, child: Icon(Icons.message)),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(onTap: email, child: Icon(Icons.mail)),
                ),
              ],
            ),
            Divider(),
            menuitem(
              icon: Icon(Icons.logout_outlined),
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/welcome', (route) => false);
              },
              title: "Çıkış",
            ),
          ],
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
                      Center(
                        child: Container(
                          height: 200,
                          child: Image.asset(
                            'assets/images/logo2.png',
                          ),
                        ),
                      ),
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

  Widget look6() => Container(
        child: Column(
          children: [
            SizedBox(height: 16),
            item("assets/images/görünüm3.jpg"),
            item("assets/images/görünüm2.jpg"),
            item("assets/images/görünüm1.jpg"),
            item("assets/images/görünüm4.jpg"),
            item("assets/images/görünüm5.jpg"),
            item("assets/images/görünüm6.jpg"),
            item("assets/images/görünüm8.jpg"),
            item("assets/images/görünüm9.jpg"),
            item("assets/images/görünüm7.jpg"),
            item("assets/images/görünüm11.jpg"),
            item("assets/images/görünüm10.jpg"),
            SizedBox(height: 16),
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
                item("assets/images/görünüm1.jpg"),
                item("assets/images/görünüm1.jpg"),
                item("assets/images/görünüm1.jpg"),
              ],
            ),
          ),
        ],
      ));
  Widget look4() => Container(
          child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                item("assets/images/görünüm8.jpg"),
                item("assets/images/görünüm9.jpg"),
              ],
            ),
          ),
        ],
      ));
  Widget look5() => Container(
          child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                item("assets/images/görünüm7.jpg"),
                item("assets/images/görünüm11.jpg"),
                item("assets/images/görünüm10.jpg"),
              ],
            ),
          ),
        ],
      ));

  Widget look3() => Container(
          child: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                item("assets/images/görünüm4.jpg"),
                item("assets/images/görünüm5.jpg"),
                item("assets/images/görünüm6.jpg"),
              ],
            ),
          ),
        ],
      ));

  Widget look() => Container(
          child: Column(
        children: [
          titleitem("Görünümler", "View all"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                item("assets/images/görünüm3.jpg"),
                item("assets/images/görünüm2.jpg"),
              ],
            ),
          ),
        ],
      ));

  Widget item(String photo) => Container(
        width: 500,
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
            ),
          ),
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
              //fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class menuitem extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final Widget icon;

  const menuitem({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            icon,
            SizedBox(
              width: 6,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
