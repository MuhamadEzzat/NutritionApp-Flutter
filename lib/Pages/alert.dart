import 'package:flutter/material.dart';

class Alert extends StatefulWidget {
  const Alert({Key? key}) : super(key: key);

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
bool value1 = false;
bool value2 = false;



  @override
  Widget build(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: const Text('Alert'),
      content: const Text('You have been succeed in making Alert Dialog'),

      actions: [
        ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(context, '/spinner');
            },
            child: const Text('OK')
        ),
        ElevatedButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child: const Text('Cancel')
        ),
      ],
    );

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  value: value1,
                  onChanged: (bool? checkvalue) {
                    setState(() {
                      value1 = checkvalue!;
                      if   (value2 == true && value1 == true){
                        Navigator.pushNamed(context, '/spinner');
                      };
                    });
                    }
                    ),
                const Text(
                  'Fish',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20.0,
                    letterSpacing: 1.0
                  ),
                ),
                Checkbox(
                    value: value2,
                    onChanged: (bool? checkvalue) {
                      setState(() {
                        value2 = checkvalue!;
                        if   (value2 == true && value1 == true){
                          Navigator.pushNamed(context, '/spinner');
                        };
                      });
                    }
                ),
                const Text(
                  'Chicken',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20.0,
                      letterSpacing: 1.0
                  ),
                ),
                  
              ],
            ),
            const SizedBox(height: 40.0,),
            ElevatedButton(
                onPressed: () {

                  showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return alert;
                      }
                  );

                },
                child: const Text(
                  'Alert',
                ),
            ),
            const SizedBox(height: 8.0,),
            ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('SnackBar open Successfully'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );

                // Find the ScaffoldMessenger in the widget tree
                // and use it to show a SnackBar.
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text(
                'Snack',
              ),
            ),
            const SizedBox(height: 24.0,),
            Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue)
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(30.0, 10.0, 10.0, 10.0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue)
                          ),
                          child: const Text('A'),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('B'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('C'),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('D'),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('E'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('F'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
