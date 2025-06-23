import 'package:flutter/material.dart';

class Weaather extends StatefulWidget {
  const Weaather({super.key});

  @override
  State<Weaather> createState() => _WeaatherState();
}

class _WeaatherState extends State<Weaather> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue.shade800,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  SizedBox(height: 120),
                  Align(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        color: Colors.blue.shade800,
                        height: 50,
                        width: 400,
                        child: Row(
                          children: [
                            Image.asset("resimler/konum.png"),
                            SizedBox(width: 12),
                            Text(
                              "Forteleza",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                decoration: TextDecoration.none,
                              ),
                            ),
                            SizedBox(width: 10),
                            Image.asset("resimler/alt_ok.png"),
                            SizedBox(width: 205),
                            Image.asset("resimler/bildirim.png"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Resim
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Container(
                color: Colors.blue.shade800,
                width: 300,
                child: Image.asset("resimler/hava_resim.png"),
              ),
            ),

            //Yazı
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Container(
                child: Text(
                  "28°",
                  style: TextStyle(
                    fontSize: 37,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(
                "Precipitations",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 6.0),
              child: Text(
                "Max.:31°Max.:25°",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            SizedBox(height: 15),
            Container(
              child: Row(
                children: [
                  SizedBox(width:15,),
                  Image.asset("resimler/yagmur.png"),
                  Text(
                  "6%",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(width:80,),
                  Image.asset("resimler/derece_icon.png"),
                  Text(
                  "90%",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(width:70,),
                  Image.asset("resimler/ruzgar_hiz.png"),
                  Text(
                  "19km/h",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.none,
                  ),
                ),
                ],
              ),
              height: 50,
              width: 380,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 9, 57, 130),
                borderRadius: BorderRadius.circular(45),
              ),
            ),
            SizedBox(height: 15),
            Container(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0,top: 8.0),
                          child: Text(
                          
                                          "Today",
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                        ),
                  Spacer(flex: 110,),
                  Padding(
                    padding: const EdgeInsets.only(right  : 12.0,top: 8.0),
                    child: Text(
                      "Mar,9",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                      ],
                  ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24.0,top: 8.0),
                          child: Text(
                          
                                          "29°",
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                        ),
                  Spacer(flex: 110,),
                  Padding(
                    padding: const EdgeInsets.only(right  : 36.0,top: 8.0),
                    child: Text(
                      "26°",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  Padding(
                          padding: const EdgeInsets.only(left: 30.0,top: 8.0),
                          child: Text(
                          
                                          "24°",
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                        ),
                  Spacer(flex: 110,),
                  Padding(
                          padding: const EdgeInsets.only(left: 36.0,top: 8.0),
                          child: Text(
                          
                                          "23°",
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                        ),
                  Spacer(flex: 110,),
                      ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 13.0,top: 8.0),
                          child: Container(child: Image.asset("resimler/hava_resim.png"),height: 70,width: 70,)
                        ),
                  Spacer(flex: 110,),
                  Padding(
                    padding: const EdgeInsets.only(right  : 10.0,top: 8.0),
                    child: Container(child: Image.asset("resimler/hava_resim.png"),height: 70,width: 70,)
                  ),
                  Padding(
                          padding: const EdgeInsets.only(left: 18.0,top: 8.0),
                          child: Container(child: Image.asset("resimler/hava_resim.png"),height: 70,width: 70,)
                        ),
                  Spacer(flex: 110,),
                  Padding(
                          padding: const EdgeInsets.only(left: 12.0,top: 8.0),
                          child: Container(child: Image.asset("resimler/hava_resim.png"),height: 70,width: 70,)
                        ),
                  Spacer(flex: 110,),
                      ],
                  ),
                 Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24.0,top: 8.0),
                          child: Text(
                          
                                          "15.00",
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                        ),
                  Spacer(flex: 110,),
                  Padding(
                    padding: const EdgeInsets.only(right  : 20.0,top: 8.0),
                    child: Text(
                      "16.00",
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  Padding(
                          padding: const EdgeInsets.only(left: 30.0,top: 8.0),
                          child: Text(
                          
                                          "17.00",
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                        ),
                  Spacer(flex: 110,),
                  Padding(
                          padding: const EdgeInsets.only(left: 36.0,top: 8.0),
                          child: Text(
                          
                                          "18.00",
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                        ),
                  Spacer(flex: 110,),
                      ],
                  ),
                ],
              ),
              height: 200,
              width: 380,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 9, 57, 130),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            SizedBox(height: 15),
           Container(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0,top: 8.0),
                          child: Text(
                          
                                          "Next Forecast",
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                        ),
                  Spacer(flex: 110,),
                  Padding(
                    padding: const EdgeInsets.only(right  : 12.0,top: 8.0),
                    child: Image.asset(
                      "resimler/takvim.png",
                      
                    ),
                  ),
                      ],
                  ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24.0,top: 8.0),
                          child: Text(
                          
                                          "Monday",
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                        ),
                  Spacer(flex: 110,),
                  
                  Padding(
                          padding: const EdgeInsets.only(left: 30.0,top: 8.0),
                          child: Image.asset("resimler/mavi_yagmur.png")
                        ),
                  Spacer(flex: 110,),
                  Padding(
                          padding: const EdgeInsets.only(left: 36.0,top: 8.0),
                          child: Text(
                          
                                          "13°-10°",
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                        ),
                  Spacer(flex: 110,),
                      ],
                  ),
                    Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24.0,top: 8.0),
                          child: Text(
                          
                                          "Tuesday",
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                        ),
                  Spacer(flex: 110,),
                  
                  Padding(
                          padding: const EdgeInsets.only(left: 30.0,top: 8.0),
                          child: Image.asset("resimler/yildirim.png")
                        ),
                  Spacer(flex: 110,),
                  Padding(
                          padding: const EdgeInsets.only(left: 36.0,top: 8.0),
                          child: Text(
                          
                                          "17°-12°",
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                        ),
                  Spacer(flex: 110,),
                      ],
                  ),
                   Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 24.0,top: 8.0),
                          child: Text(
                          
                                          "Wednesday",
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                        ),
                  Spacer(flex: 110,),
                  
                  Padding(
                          padding: const EdgeInsets.only(left: 12.0,top: 8.0),
                          child: Image.asset("resimler/gunes_yagmur.png")
                        ),
                  Spacer(flex: 110,),
                  Padding(
                          padding: const EdgeInsets.only(left: 36.0,top: 8.0),
                          child: Text(
                          
                                          "17°-12°",
                                          style: TextStyle(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                          ),
                                        ),
                        ),
                  Spacer(flex: 110,),
                      ],
                  ),
                 
                 
                ],
              ),
              height: 200,
              width: 380,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 9, 57, 130),
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
