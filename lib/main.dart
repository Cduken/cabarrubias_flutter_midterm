import 'package:flutter/material.dart';

void main() => runApp(MyMidtermApp());

class MyMidtermApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Midterm Exam',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> items = [
    'Magic Sarap',
    'Asin',
    'Bitsin',
    'Bombay',
    'Paminta',
    'Ahos',
    'Baboy nga manok',
    'Ketchup',
    'Suka',
    'Toyo',
  ];

  List<bool> isAdded = List.filled(10, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ErnestoCabarrubias_MidtermExam'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/images/background.jpg"), // Add your image path here
            fit: BoxFit.cover, // To cover the entire background
            alignment: Alignment.center, // To center the background image
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: isAdded[index] ? Colors.green[200] : Colors.white,
                      child: ListTile(
                        title: Text(items[index]),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextButton(
                              onPressed: () {
                                print('Details of ${items[index]}');
                              },
                              child: Text('Details'),
                            ),
                            TextButton(
                              onPressed: () {
                                setState(() {
                                  isAdded[index] = true;
                                });
                              },
                              child: Text(isAdded[index] ? 'Added' : 'Add'),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
