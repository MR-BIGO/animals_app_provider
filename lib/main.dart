import 'package:flutter/material.dart';

void main() {
  runApp(const AnimalsApp());
}

class AnimalsApp extends StatelessWidget {
  const AnimalsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animals App',
      home: HomeScreen(),);
      
  }

}

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
        title: Center(child: Text('Animals'))
        ),
      body: Center(
        child:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,

        children: [
          if (showDog == true)(
          Image.network('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/dog-puppy-on-garden-royalty-free-image-1586966191.jpg?crop=1.00xw:0.669xh;0,0.190xh&resize=1200:*', width: 350, height: 350)
          ),
          if (showCat == true)(
          Image.network('https://icatcare.org/app/uploads/2018/07/Thinking-of-getting-a-cat.png', width: 350, height: 350)
          ),
          if (showKoala == true) (
          Image.network('https://d1jyxxz9imt9yb.cloudfront.net/animal/27/meta_image/regular/DR_2020-01-18_Koroit-Victoria-AU_Bushfires-MosswoodWildlife-RescuedKoalas_1D_MelanieMahoney_094V1176.jpg', width: 350, height: 350)
          ),
          if (showLion == true)(
          Image.network('https://cdn.britannica.com/29/150929-050-547070A1/lion-Kenya-Masai-Mara-National-Reserve.jpg', width: 350, height: 350)
          )
        ]
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                child: Text('Dog'),
                shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.zero),
                onPressed: () {
                 setState(() {
                  showDog = !showDog;
                  showCat = false;
                  showKoala = false;
                  showLion = false;
              });
                }),
              FloatingActionButton(
                child: Text('Cat'),
                shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.zero),
                onPressed: () {
                 setState(() {
                  showDog = false;
                  showCat = !showCat;
                  showKoala = false;
                  showLion = false;
              });
                }),
          ]  
      ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           FloatingActionButton(
                child: Text('Koala'),
                shape: BeveledRectangleBorder(
               borderRadius: BorderRadius.zero),
               onPressed: () {
                setState(() {
                  showDog = false;
                  showCat = false;
                  showKoala = !showKoala;
                  showLion = false;
              });
                }),
            FloatingActionButton(
              child: Text('Lion'),
              shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.zero),
              onPressed: () {
                setState(() {
                showDog = false;
                showCat = false;
                showKoala = false;
                showLion = !showLion;
              });
                }),
        ],
      )
      ]))
        );
   }    
}




