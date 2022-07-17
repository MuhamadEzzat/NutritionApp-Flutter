import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  const Food({Key? key}) : super(key: key);

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {

  var list = List<int>.generate(100 , (i) => i + 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              //Container with some views and containers
              Container(
                height: 180,
                width: 300,
                color: Colors.blue,
                child: Stack(
                  children: <Widget> [
                    Positioned(
                        top: 8.0,
                        left: 8.0,
                        child: Container(
                          width: 80,
                          height: 40,
                          decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.redAccent
                      ),
                    ),
                    ),
                    Positioned(
                      top: 8.0,
                      right: 8.0,
                      child: Container(
                        width: 80,
                        height: 40,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.redAccent
                        ),
                      ),
                    ),
                    Positioned(
                      top: 50.0,
                      right: 50.0,
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.redAccent
                        ),
                      ),
                    ),
                    Positioned(
                      top: 90.0,
                      right: 90.0,
                      child: Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.red[100]
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 40.0,
                      left: 60.0,
                      child: Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            color: Colors.red[500]
                        ),
                      ),
                    ),
                  ],
                )
              ),
              const SizedBox(height: 16,),
              //Food Text
              const Text(
                'Food',
                style: TextStyle(
                    fontSize: 32,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold
                ),
              ),
          Center(

            child: Container(

              decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent)
              ),
              height: 50.0,
              padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
              margin: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
              child: Center(
                //Average Food
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Column(
                      children: const <Widget>[
                        Text(
                          'F1',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        //SizedBox(height: 1,),
                        Text(
                          '5/10',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    const VerticalDivider(
                      thickness: 2.0,
                    ),
                    Column(
                      children: const <Widget>[
                        Text(
                          'F2',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        //SizedBox(height: 1,),
                        Text(
                          '9/10',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    const VerticalDivider(
                      thickness: 2.0,
                    ),
                    Column(
                      children: const <Widget>[
                        Text(
                          'F3',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        //SizedBox(height: 1,),
                        Text(
                          '10/10',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                    const VerticalDivider(
                      thickness: 2.0,
                    ),
                    Column(
                      children: const <Widget>[
                        Text(
                          'F4',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        //SizedBox(height: 1,),
                        Text(
                          '3/10',
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

              ),
            ),
          ),
              // ListView
              Container(
                height: 450,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),

                    itemCount: 100,
                    itemBuilder: (context, index){
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
                        child: Card(
                          child: ListTile(
                            onTap: () {
                              Navigator.pushNamed(context, '/alert');
                            },
                            title: Text(
                              'List ${list[index]}',
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}