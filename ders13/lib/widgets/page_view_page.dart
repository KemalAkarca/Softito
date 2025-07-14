import 'package:flutter/material.dart';

class PageViewPage extends StatefulWidget {
  const PageViewPage({super.key});

  @override
  State<PageViewPage> createState() => _PageViewPageState();
}

class _PageViewPageState extends State<PageViewPage> {
  bool yatayEksen = true;
  bool isPageSnapping = true;
  int currentIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: pageController,
            scrollDirection: yatayEksen ? Axis.horizontal : Axis.vertical,
            //dokuduğuğumuzda diğer sayfaya mı geçsin yoksa harekete göre kalsın mı
            pageSnapping: isPageSnapping,
            onPageChanged: (index) {
              currentIndex = index;
            },
            children: [
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.amber.shade300,
                child: Center(
                  child: Text("Sayfa 0", style: TextStyle(fontSize: 36)),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.blue.shade300,
                child: Center(
                  child: Text("Sayfa 1", style: TextStyle(fontSize: 36)),
                ),
              ),
              Container(
                width: double.infinity,
                height: 300,
                color: Colors.green.shade300,
                child: Center(
                  child: Text("Sayfa 2", style: TextStyle(fontSize: 36)),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            height: 200,
            width: double.infinity,
            color: Colors.lightBlue,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: currentIndex == 2
                          ? null
                          : () {
                              pageController.nextPage(
                                duration: Duration(seconds: 1),
                                curve: Curves.easeIn,
                              );
                            },
                      child: Text("ileri"),
                    ),
                    SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: currentIndex == 0
                          ? null
                          : () {
                              pageController.previousPage(
                                duration: Duration(seconds: 1),
                                curve: Curves.easeIn,
                              );
                            },
                      child: Text("geri"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Yatay eksende Çalış"),
                    Checkbox(
                      value: yatayEksen,
                      onChanged: (val) {
                        setState(() {
                          yatayEksen = val!;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("PageSnapping degistir"),
                    Checkbox(
                      value: isPageSnapping,
                      onChanged: (val) {
                        setState(() {
                          isPageSnapping = val!;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
