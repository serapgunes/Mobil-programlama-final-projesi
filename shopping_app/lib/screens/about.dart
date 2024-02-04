import 'package:flutter/material.dart';

class about extends StatelessWidget {
  const about({super.key});

  @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
        title: Text('Hakkımızda'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Biz Kimiz?',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Amacımız kullanıcılarımıza kaliteli ürünleri uygun fiyatlarla ulaştırmaktır. '
                'Siz değerli müşterilerimizle birlikte büyüyor ve gelişiyoruz.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 24),
              Center(
                child: Text(
                  'Vizyonumuz',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Müşteri memnuniyetini ön planda tutarak, güvenilir ve kullanıcı dostu bir alışveriş deneyimi sağlamak. '
                'Kaliteli ürünleri uygun fiyatlarla sunmak ve müşterilerimizin beklentilerini aşmak.',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(height: 24),
              Center(
                child: Text(
                  'İletişim',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 16),
              Column(
                children: [
                  abouts('Adres', 'Türkiye'),
                  abouts('E-posta', 'shoppingapp@gmail.com'),
                  abouts('Telefon', '123 456 7890'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget abouts(String title, String aciklama) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 70,
            child: Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              aciklama,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}