import 'package:flutter/material.dart';
import 'package:tekrar/main.dart';

class Sliverlar extends StatefulWidget {
  const Sliverlar({super.key});

  @override
  State<Sliverlar> createState() =>
      _SliverlarState();
}

class _SliverlarState
    extends State<Sliverlar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            surfaceTintColor:
                Colors.white,
            floating: true,
            pinned: true,
            snap: true,
            //title: Text("SliverAppBar"),
            /*  backgroundColor:
                const Color.fromARGB(
                  255,
                  255,
                  183,
                  75,
                ), */
            expandedHeight: 300,
            foregroundColor:
                Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "SliverAppBar",
              ),
              // centerTitle: false,
              background: Image.network(
                "https://pbs.twimg.com/profile_images/1346115773828313090/H-iO_oRH_400x400.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          /* SliverList(
            delegate:
                SliverChildListDelegate(
                  [
                    sabitEleman(),
                    sabitEleman(),
                    sabitEleman(),
                    sabitEleman(),
                    sabitEleman(),
                    sabitEleman(),
                    sabitEleman(),
                    sabitEleman(),
                    sabitEleman(),
                    sabitEleman(),
                    sabitEleman(),
                    sabitEleman(),
                    sabitEleman(),
                  ],
                ),
          ), */
          SliverPadding(
            padding:
                EdgeInsets.symmetric(
                  vertical: 30,
                ),
            sliver: SliverGrid(
              delegate:
                  SliverChildListDelegate([
                    sabitGridViewEleman(
                      Colors.red,
                    ),
                    sabitGridViewEleman(
                      Colors.pink,
                    ),
                    sabitGridViewEleman(
                      Colors.purple,
                    ),
                    sabitGridViewEleman(
                      Colors.green,
                    ),
                    sabitGridViewEleman(
                      Colors.orange,
                    ),
                    sabitGridViewEleman(
                      Colors.blue,
                    ),
                    sabitGridViewEleman(
                      Colors.teal,
                    ),
                  ]),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

class dinamisilverlist
    extends StatelessWidget {
  const dinamisilverlist({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate:
          SliverChildBuilderDelegate(
            childCount: 20,
            (context, index) {
              return dinamikGridElemani(
                index,
              );
            },
          ),
    );
  }
}
