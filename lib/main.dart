import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp ({Key?  key}) : super (key : key);
  const MyApp ({super.key});
  
  Widget build(BuildContext context){

    Widget titleSection = Container(
      padding: const EdgeInsets.all(16.0),
  child: Row (
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom : 8.0),
              child: const Text('Oeschinen Lake Campground',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                ),
              ),
        ),
            const Text(
              'Kandersteg, Sitzerland',
              style: TextStyle(
                color: Colors.grey,
              ),
            )
          ],
        )
      ),
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text ('41')
    ],
  ),
    );
    

    

Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
  Color color = Theme.of(context).primaryColor;

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);

Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
 'Gambar tersebut menampilkan pemandangan yang sangat indah dan menenangkan.'
 'Terdapat sebuah danau yang luas dengan air yang sangat jernih berwarna biru kehijauan.'
 'Permukaan danau terlihat sangat tenang, sehingga memantulkan langit dan pepohonan di sekitarnya dengan sangat jelas.',
    softWrap: true,
  ),
);
  
  
  return MaterialApp(
    title: 'Flutter Layout Demo',
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Ahmad Diky Dharmawan | 362358302047'),
      ),
      body: ListView(
        children: [
          Image.asset(
            '../assets/image/danau.jpg',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    ),
  );
  
}


}