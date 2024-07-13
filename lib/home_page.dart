import 'package:flutter/material.dart';
import 'user_service.dart';
import 'user_page.dart';

class HomePage extends StatelessWidget {
  final List<ImageData> images = [
    ImageData(
      id: "J2PmlIizw",
      url: "https://cataas.com/cat",
      width: 1080,
      height: 1350,
    ),
    ImageData(
      id: "IFXsxmXLm",
      url: "https://cataas.com/cat/orange,cute",
      width: 973,
      height: 973,
    ),
    ImageData(
      id: "8ciqdpaO5",
      url: "https://cataas.com/cat/says/hello",
      width: 1080,
      height: 809,
    ),
    ImageData(
      id: "aaxNf4D0H",
      url: "https://cataas.com/cat/says/hello?fontSize=50&fontColor=red",
      width: 1080,
      height: 1350,
    ),
    ImageData(
      id: "8RsP7Xt3h",
      url: "https://cataas.com/cat?filter=mono",
      width: 1024,
      height: 817,
    ),
    ImageData(
      id: "byQhFO7iV",
      url: "https://cataas.com/cat?filter=custom&r=7&g=12&b=50",
      width: 1795,
      height: 2397,
    ),
    ImageData(
      id: "O3btzLlsO",
      url: "https://cataas.com/cat/gif",
      width: 1100,
      height: 739,
    ),
    ImageData(
      id: "H_UWbOfra",
      url: "https://cataas.com/cat?filter=custom&brightness=1.5&saturation=50",
      width: 1200,
      height: 1200,
    ),
    ImageData(
      id: "bz15V3Kvg",
      url: "https://cataas.com/cat?width=100",
      width: 1440,
      height: 1080,
    ),
    ImageData(
      id: "ZocD-pQxd",
      url: "https://cataas.com/cat/gif/says/Hello?filter=mono&fontColor=orange&fontSize=20&type=square",
      width: 880,
      height: 1100,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cat Images Gallery'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          childAspectRatio: 1.0, // Aspect ratio of the cards
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserPage(image: images[index]),
                ),
              );
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.network(
                      images[index].url,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      images[index].id,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
