import 'package:flutter/material.dart';

class welcomescreen extends StatelessWidget {
  const welcomescreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.black,
               Colors.grey,
               Colors.black,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/logo4.png',
                width: 200,
                height: 300,
              ),
              SizedBox(height: 20),
              Container(
                width: 200, 
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/giris'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.login, size: 20.0, color: Colors.black),
                      SizedBox(width: 10),
                      Text(
                        'Oturum Aç',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 200, 
                child: ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.how_to_reg, size: 20.0, color: Colors.black),
                      SizedBox(width: 10.0),
                      Text(
                        'Kayıt Olun',
                        style: TextStyle(fontSize: 20.0, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
