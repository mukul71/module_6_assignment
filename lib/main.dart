import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Photo Gallery'),
      ),
      body: ListView(
        children: [
          Text(
            'Welcome to My Photo Gallery!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Search for photos...',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  mySnackBar('Hi, this is photo 1', context);
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Image.network(
                      'https://spng.pngfind.com/pngs/s/49-493368_kitten-png-high-quality-image-domestic-short-haired.png'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mySnackBar('Hi, this is photo 2', context);
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 1,
                  )),
                  child: Image.network('https://tinyurl.com/wcnez4c2'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mySnackBar('Hi, this is photo 3', context);
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 1,
                  )),
                  child: Image.network(
                      'https://img.lovepik.com/free-png/20220127/lovepik-short-blue-white-cat-png-image_401942662_wh300.png'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Photo 1'),
              Text('Photo 2'),
              Text('Photo 3'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  mySnackBar('Hi, this is photo 4', context);
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 1,
                  )),
                  child: Image.network(
                      'https://e7.pngegg.com/pngimages/579/252/png-clipart-orange-and-white-kitten-kitten-cat-puppy-dog-litter-box-cute-kitten-animals-cat-like-mammal.png'),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mySnackBar('Hi, this is photo 5', context);
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 1,
                  )),
                  child: Image.network(
                    'https://img.lovepik.com/element/40094/5515.png_300.png',
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  mySnackBar('Hi, I am photo 6 and love to smile', context);
                },
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                    width: 1,
                  )),
                  child: Image.network('https://tinyurl.com/tzpn44a3'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Photo 4'),
              Text('Photo 5'),
              Text('Photo 6'),
            ],
          ),
          Container(
            height: 300,
            child: ListView(
              children: [
                ListTile(
                  title: Text('Photo 1'),
                  subtitle: Text('Playful Kitten for kids.'),
                ),
                ListTile(
                  title: Text('Photo 2'),
                  subtitle: Text('Wiselook cat for good mood.'),
                ),
                ListTile(
                  title: Text('Photo 3'),
                  subtitle: Text('Obedient Cat!'),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        onPressed: () {
          mySnackBar('Upload Sucessfulll', context);
        },
        child: Icon(Icons.arrow_circle_up_sharp),
      ),
    );
  }
}
