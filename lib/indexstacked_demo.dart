import 'package:flutter/material.dart';
import 'package:flutter_index_stacked_demo/button_widget.dart';

class IndexStackedDemo extends StatefulWidget {
  IndexStackedDemo({Key key}) : super(key: key);

  @override
  _IndexStackedDemoState createState() => _IndexStackedDemoState();
}

class _IndexStackedDemoState extends State<IndexStackedDemo> {
  int index = 0;
  bool selectedButtonOne = false;
  bool selectedButtonTwo = false;
  bool selectedButtonThree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        title: Text('Index Stacked'),
      ),
      body: Column(
        children: [_buildIndexStackedWidgets(), _buildButtons()],
      ),
    );
  }

  _buildIndexStackedWidgets() {
    return Expanded(
      flex: 3,
      child: IndexedStack(
        index: index,
        children: [
          Column(
            children: [
              Image.asset('assets/image1.png'),
              Text(
                'Widget 1',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: [
              Image.asset('assets/image2.png'),
              Text(
                'Widget 2',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Column(
            children: [
              Image.asset('assets/image3.png'),
              Text(
                'Widget 3',
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 80,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ],
      ),
    );
  }

  _buildButtons() {
    return Expanded(
        flex: 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonWidget(
              buttonText: 'Index 0',
              onTap: () {
                setState(() {
                  index = 0;
                  selectedButtonOne = !selectedButtonOne;
                });
              },
              selectedButton: selectedButtonOne,
            ),
            ButtonWidget(
              buttonText: 'Index 1',
              onTap: () {
                setState(() {
                  index = 1;
                  selectedButtonTwo = !selectedButtonTwo;
                });
              },
              selectedButton: selectedButtonTwo,
            ),
            ButtonWidget(
              buttonText: 'Index 2',
              onTap: () {
                setState(() {
                  index = 2;
                  selectedButtonThree = !selectedButtonThree;
                });
              },
              selectedButton: selectedButtonThree,
            ),
          ],
        ));
  }
}
