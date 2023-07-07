import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Belajar Routing'),
        backgroundColor: Colors.green.shade700,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text('Tap Untuk ke AboutPage'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade700,
                  elevation: 5,
                  minimumSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/halaman-404');
                },
                child: Text('Tap Halaman lain'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green.shade700,
                  elevation: 5,
                  minimumSize: Size(150, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tentang Aplikasi'),
        backgroundColor: Colors.green.shade700,
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Kembali'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green.shade700,
              elevation: 5,
              minimumSize: Size(150, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            )),
      ),
    );
  }
}
