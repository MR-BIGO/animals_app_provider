import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _nameState createState() => _nameState();
}

class _nameState extends State<HomeScreen> {
  bool showDog = false;
  bool showCat = false;
  bool showKoala = false;
  bool showLion = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Animals')),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        ),
        elevation: 0,
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 1 : 2,

            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0,8,0,8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 300,
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Column(
                              children: [
                                if (showDog == true)
                                  SizedBox(
                                    
                                    child: Image.network(
                                      'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*',
                                    ),
                                  ),
                                if (showCat == true)
                                  SizedBox(
                                    
                                    child: Image.network(
                                      'https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png',
                                    ),
                                  ),
                                if (showKoala == true)
                                  SizedBox(
                                    
                                    child: Image.network(
                                      'https://d1jyxxz9imt9yb.cloudfront.net/animal/27/meta_image/regular/DR_2020-01-18_Koroit-Victoria-AU_Bushfires-MosswoodWildlife-RescuedKoalas_1D_MelanieMahoney_094V1176.jpg',
                                    ),
                                  ),
                                if (showLion == true)
                                  SizedBox(
                                    
                                    child: Image.network(
                                      'https://cdn.britannica.com/29/150929-050-547070A1/lion-Kenya-Masai-Mara-National-Reserve.jpg',
                                    ),
                                  ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 4.0, horizontal: 4.0),
                            child: SizedBox(
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 16.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Container(
                                        width: 300,
                                        height: 40,
                                        color: Colors.blue,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            if (showDog == true)
                                              const Text(
                                                'This is a domesticated animal.\n A lot of people like it ',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 13,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            if (showCat == true)
                                              const Text(
                                                'This is a domesticated animal.\n A good amount of people like it ',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontSize: 13,
                                                ),
                                              ),
                                            if (showKoala == true)
                                              const Text(
                                                'This is not a domesticated animal.\n Only the people outside the Australia like it ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13,
                                                    color: Colors.white),
                                              ),
                                            if (showLion == true)
                                              const Text(
                                                'This is not a domesticated animal.\n Only the people outside the Africa like it ',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 13,
                                                    color: Colors.white),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 90,
                        child: FloatingActionButton(
                          child: const Text('Dog'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () {
                            setState(
                              () {
                                showDog = !showDog;
                                showCat = false;
                                showKoala = false;
                                showLion = false;
                              },
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 90,
                        child: FloatingActionButton(
                          child: const Text('Cat'),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          onPressed: () {
                            setState(() {
                              showDog = false;
                              showCat = !showCat;
                              showKoala = false;
                              showLion = false;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 90,
                          child: FloatingActionButton(
                            child: const Text('Koala'),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            onPressed: () {
                              setState(
                                () {
                                  showDog = false;
                                  showCat = false;
                                  showKoala = !showKoala;
                                  showLion = false;
                                },
                              );
                            },
                          ),
                        ),
                        Container(
                          width: 90,
                          child: FloatingActionButton(
                            child: const Text('Lion'),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            onPressed: () {
                              setState(
                                () {
                                  showDog = false;
                                  showCat = false;
                                  showKoala = false;
                                  showLion = !showLion;
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
