import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        Container(
          height: 280,
          decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.only(
            bottomEnd: Radius.circular(50),
            bottomStart: Radius.circular(50),
          ),

            backgroundBlendMode: BlendMode.colorBurn,
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Color(0xff0d69ff).withOpacity(0.0),
                Color(0xff0069ff).withOpacity(0.8),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child:
          ListView(
            children:[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(icon: Icon(Icons.notifications), onPressed: (){}),
                      Text('Welcome , Akila'),
                      IconButton(icon: Icon(Icons.shopping_cart_rounded), onPressed: (){}),
                    ],
                  ),
                  const SizedBox(height: 10),

                  TextField(decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search) ,
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(10),
                    ),
                    hintText: 'Search',
                  ),
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Image.network(
                      //     'https://ibb.co/m9XfSkk'
                      // ),
                    ],
                  ),

                  card(),
                  const SizedBox(height: 10),
                  Category(),
                  Name(),

                  const SizedBox(height: 20),

                  const Text.rich(
                    TextSpan(
                      text: 'Welcome,',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: ' Akila',
                          style: TextStyle(fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                    style: TextStyle(fontSize: 50),

                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      FlutterLogo(size: 48),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Saved Places',
                    style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),
                  ),
                  const SizedBox(height: 300),
                ],
              ),
            ],
          ),
        ),
      ],
    );

  }
}


class card extends StatelessWidget {
  const card ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(icon: const Icon(Icons.camera_alt), color: Colors.white, onPressed: (){}),
            const Text("Upload your Prescription",
              style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.white),
            ),

          ],

        ),
      ),
      elevation: 8,
      color: Colors.blue,
      margin: EdgeInsets.all(20),
      shape:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blueAccent, width: 1)
      ),
    );
  }
}

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          color: Colors.pinkAccent,
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(150),
          ),

          child: Column(
            children: [
              IconButton(icon: const Icon(Icons.category_outlined), color: Colors.white, onPressed: (){}),
            ],
          ),
        ),

        Card(
          color: Colors.green,
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(150),
          ),
          child: Column(
            children: [
              IconButton(
                  icon: Icon(Icons.addchart_sharp),color: Colors.white, onPressed: () {}),
            ],
          ),
        ),

        Card(
          color: Colors.redAccent,
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(150),
          ),
          child: Column(
            children: [
              IconButton(
                  icon: Icon(Icons.child_care), color: Colors.white,onPressed: () {}),
            ],
          ),
        ),

        Card(
          color: Colors.lightBlue,
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(150),
          ),
          child: Column(
            children: [
              IconButton(
                  icon: Icon(Icons.fingerprint),color: Colors.white, onPressed: () {}),
            ],
          ),
        ),

        Card(
          color: Colors.deepOrange,
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(150),
          ),
          child: Column(
            children: [
              IconButton(
                  icon: Icon(Icons.food_bank_outlined),color: Colors.white, onPressed: () {}),
            ],
          ),
        ),
      ],

    );
  }
}
class Name extends StatelessWidget {
  const Name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: const [

            Text(" Categories",
              style: TextStyle(fontWeight: FontWeight.w600,
                  fontSize: 10,
                  color: Colors.black),
            ),
          ],
        ),

        Column(
          children: const [
            Text(" Wellness",
              style: TextStyle(fontWeight: FontWeight.w600,
                  fontSize: 10,
                  color: Colors.black),
            ),
          ],
        ),

        Column(
          children: const [
            Text("  Baby Care",
              style: TextStyle(fontWeight: FontWeight.w600,
                  fontSize: 10,
                  color: Colors.black),
            ),
          ],
        ),

        Column(
          children: const [
            Text("  Diabetes",
              style: TextStyle(fontWeight: FontWeight.w600,
                  fontSize: 10,
                  color: Colors.black),
            ),
          ],
        ),

        Column(
          children: const [
            Text("Personal Care",
              style: TextStyle(fontWeight: FontWeight.w600,
                  fontSize: 10,
                  color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
