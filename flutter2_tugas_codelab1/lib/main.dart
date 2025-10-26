import 'package:flutter/material.dart';

//Frist Challenge by Dicoding
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var listData = [
    {
      "title": "Wisata 1",
      "imageUrl" : "https://shopee.co.id/inspirasi-shopee/wp-content/uploads/2022/06/mpGDXVHoSzKsqkWsopmjWg_thumb_470.webp",
      "description" : "Menarik dan Nampol"
    },
    {
      "title": "Wisata 2",
      "imageUrl" : "https://bankraya.co.id/uploads/insights/jO3TRUmMuBAuyilKHgu9Ovjfs3nFoubWiSSjB3Pn.jpg",
      "description" : "Segar, Fresh, Clean"
    },
    {
      "title" : "Tangan Thanos",
      "imageUrl" : "https://ds393qgzrxwzn.cloudfront.net/resize/m600x500/cat1/img/images/0/vkrXS5BEg0.jpg",
      "description" : "Tangan Thanos jaman majapahit"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 31, 35),
        title: Text(
          "Tugas 1 Code Lab Dicoding",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
      child: ListView.builder(
          itemCount: listData.length,
          itemBuilder: (BuildContext context,int index){
            final Item = listData[index];
            return Container(
              padding: EdgeInsets.only(top: 16, right: 16, left: 16),
              child: Card(
                elevation: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      child: ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(8),
                        child: Image.network(
                          Item['imageUrl']!,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 8),
                            child: Text(Item["title"]!, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, left: 8),
                            child: Text(Item["description"]!),
                          )
                        ],
                      )
                    ),
                  ],
                ),
              ),
            );
          }
        )
      ),
    );
  }
}