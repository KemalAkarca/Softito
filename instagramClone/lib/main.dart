import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyInstagramProject());
}

class MyInstagramProject extends StatelessWidget {
  const MyInstagramProject({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram  Clone"),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      body: MyStorySection(),
    );
  }
}

class MyStorySection extends StatelessWidget {
  const MyStorySection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> imgList = [
      "https://www.tu-ilmenau.de/unionline/fileadmin/_processed_/0/0/csm_Person_Yury_Prof_Foto_AnLI_Footgrafie__2_.JPG_94f12fbf25.jpg",
      "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "https://t4.ftcdn.net/jpg/03/92/64/99/360_F_392649994_HXjhEQv9UHFIj2wI5uivLHyxEvhrzxy6.jpg",
      "https://as2.ftcdn.net/jpg/02/14/03/63/1000_F_214036309_8gqTQJGUc9wpuoYg14SYoON8XQH5L5nK.jpg",
      "https://t4.ftcdn.net/jpg/02/95/51/83/360_F_295518339_z4vpJrqTeMk0XgOjejjCpXGYuQT1Y1cN.jpg",
    ];
    List<int> randomNumber = [];
    Random r = Random();
    for (int i = 0; i < imgList.length; i++) {
      int sayi = r.nextInt(3);
      randomNumber.add(sayi);
    }
    return Column(
      children: [
        Container(
          height: 80,
          //color: Colors.grey.shade200,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Row(
                  children: [
                    Story(imgUrl: imgList[randomNumber[0]]),
                    Story(imgUrl: imgList[randomNumber[1]]),
                    Story(imgUrl: imgList[randomNumber[2]]),
                    Story(imgUrl: imgList[randomNumber[3]]),
                    Story(imgUrl: imgList[randomNumber[4]]),
                    Story(imgUrl: imgList[randomNumber[1]]),
                    Story(imgUrl: imgList[randomNumber[2]]),
                    Story(imgUrl: imgList[randomNumber[3]]),
                  ],
                ),
              ],
            ),
          ),
        ),
        Divider(endIndent: 12, indent: 12),
        Expanded(child: PostPage()),
      ],
    );
  }
}

class Story extends StatelessWidget {
  final String imgUrl;
  const Story({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      height: 65,
      width: 65,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(100),
        image: DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover),
      ),
    );
  }
}

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 700,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 300,
                      color: Colors.green,
                      child: Image.asset("resimler/11.png", fit: BoxFit.cover),
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                      child: Row(
                        children: [
                          //Like and like count text
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: [
                                Icon(Icons.favorite_outline, size: 30),
                                SizedBox(width: 6),
                                Text(
                                  "55.673",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Comment and comment text
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.comment),
                                SizedBox(width: 6),
                                Text(
                                  "13",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Share icon and text
                           Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.paperPlane,size: 21,),
                                SizedBox(width: 6),
                                Text(
                                  "128",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //
                          Spacer(),
                          Container(
                            margin: EdgeInsets.only(right:4),
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.bookmark,size: 21,),
                                SizedBox(width: 6),
                                
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 420,
                      color: Colors.green,
                      child: Image.asset("resimler/3.png", fit: BoxFit.cover),
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                      child: Row(
                        children: [
                          //Like and like count text
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: [
                                Icon(Icons.favorite_outline, size: 30),
                                SizedBox(width: 6),
                                Text(
                                  "55.673",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Comment and comment text
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.comment),
                                SizedBox(width: 6),
                                Text(
                                  "13",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Share icon and text
                           Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.paperPlane,size: 21,),
                                SizedBox(width: 6),
                                Text(
                                  "128",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                           Spacer(),
                          Container(
                            margin: EdgeInsets.only(right:4),
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.bookmark,size: 21,),
                                SizedBox(width: 6),
                                
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
             Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 420,
                      color: Colors.green,
                      child: Image.asset("resimler/12.png", fit: BoxFit.cover),
                    ),
                    Container(
                      height: 50,
                      color: Colors.white,
                      child: Row(
                        children: [
                          //Like and like count text
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              children: [
                                Icon(Icons.favorite_outline, size: 30),
                                SizedBox(width: 6),
                                Text(
                                  "55.673",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Comment and comment text
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.comment),
                                SizedBox(width: 6),
                                Text(
                                  "13",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //Share icon and text
                           Container(
                            margin: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.paperPlane,size: 21,),
                                SizedBox(width: 6),
                                Text(
                                  "128",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                           Spacer(),
                          Container(
                            margin: EdgeInsets.only(right:4),
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.bookmark,size: 21,),
                                SizedBox(width: 6),
                                
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


