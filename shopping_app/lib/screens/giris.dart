import 'package:flutter/material.dart';


class giris extends StatefulWidget {
  const giris({super.key}); 
   @override
  State<giris> createState() => _girisState();
  }

class _girisState extends State<giris>{


  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(),   
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
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Kullanıcı Girişi',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 20.0),
                      TextField(
                        
                        decoration: InputDecoration(
                          hintText: 'Kullanıcı Adı',
              
                        ),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        
                        decoration: InputDecoration(
                          hintText: 'Şifre',
   
                        ),
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context, '/home', (Route<dynamic> route) => false);
                        },
                        child: Text('Oturum Aç',style: TextStyle(color: Colors.black),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}