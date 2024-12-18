import 'package:flutter/material.dart';

class ResponsiveTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Tab Example'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Some text and other widgets
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Some Introductory Text',
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            // TabBar with TabBarView
            DefaultTabController(
              length: 3,
              child: Column(
                children: [
                  TabBar(
                    labelColor: Theme.of(context).primaryColor,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(text: 'Tab 1'),
                      Tab(text: 'Tab 2'),
                      Tab(text: 'Tab 3'),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.9, // Adjust dynamically
                    child: TabBarView(
                      children: [
                        // Tab 1 Content
                        Center(child: Text('Content for Tab 1')),
                        // Tab 2 Content
                        Center(child: Text('Content for Tab 2')),
                        // Tab 3 Content with GridView
                        LayoutBuilder(
                          builder: (context, constraints) {
                            return GridView.builder(
                              padding: const EdgeInsets.all(8.0),
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: constraints.maxWidth > 600 ? 4 : 2, // Responsive columns
                                mainAxisSpacing: 8.0,
                                crossAxisSpacing: 8.0,
                                childAspectRatio: 1,
                              ),
                              itemCount: 20,
                              itemBuilder: (context, index) {
                                return Container(
                                  color: Colors.blue,
                                  child: Center(
                                    child: Text(
                                      'Item $index',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
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

void main() {
  runApp(MaterialApp(
    home: ResponsiveTabView(),
  ));
}
