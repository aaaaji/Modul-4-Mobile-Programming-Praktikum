import 'package:flutter/material.dart';

void main() {
  runApp(MyMusicApp());
}

class MyMusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      theme: ThemeData.dark(), // a. Gunakan tema gelap
      home: Scaffold(
        appBar: AppBar(title: Text('MyMusic')),
        body: Center(
          child: Text(
            'Pemutar Musik',
            style: TextStyle(fontSize: 40),
          ),
        ),
        // b. Letakkan Control Bar di bagian bawah layar
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          // c. Padding
          color: Colors.black54,
          // c. Latar belakang gelap
          child: Row(
            children: [
              // d. Tombol Shuffle
              Expanded(child: Icon(Icons.shuffle, color: Colors.white)),
              // d. Tombol Previous
              Expanded(child: Icon(Icons.skip_previous, color: Colors.white)),
              // d. Tombol Play (lebih besar dengan Flexible flex:2)
              Flexible(
                fit: FlexFit.tight,
                flex: 2,
                child: Icon(
                  Icons.play_circle_fill,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              // d. Tombol Next
              Expanded(child: Icon(Icons.skip_next, color: Colors.white)),
              // d. Tombol Repeat
              Expanded(child: Icon(Icons.repeat, color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
