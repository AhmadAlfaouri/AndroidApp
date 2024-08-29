import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Management',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: AddProduct(),
    );
  }
}

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('إضافة منتجات جديدة:'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              // Handle save action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Left Side Bar
            Container(
              width: 80,
              child: Column(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.grid_on),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.list),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            // Right Side Content
            Expanded(
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    // Product Form
                    Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Create product',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Name',
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Description',
                            ),
                            maxLines: 3,
                          ),
                          SizedBox(height: 16.0),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Image',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  'Drag and drop files here',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(height: 4.0),
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Click to select file',
                                    style: TextStyle(
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Category',
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Sub Category',
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Price',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.0),
                    // Product Details Form
                    Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Product Details',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Price',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          SizedBox(height: 16.0),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Width',
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                              SizedBox(width: 16.0),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Height',
                                  ),
                                  keyboardType: TextInputType.number,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.0),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Quantity',
                            ),
                            keyboardType: TextInputType.number,
                          ),
                          SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: () {
                              // Handle save action
                            },
                            child: Text('Save'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
