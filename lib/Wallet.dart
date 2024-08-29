import 'package:flutter/material.dart';

void main() {
  runApp(MyWalletApp());
}

class MyWalletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Wallet App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WalletHomePage(),
    );
  }
}

class WalletHomePage extends StatefulWidget {
  @override
  _WalletHomePageState createState() => _WalletHomePageState();
}

class _WalletHomePageState extends State<WalletHomePage> {
  List<Map<String, dynamic>> transactions = [
    {
      'type': 'expense',
      'title': 'Couch',
      'date': 'March 1, 2024',
      'amount': -50.00,
    },
    {
      'type': 'income',
      'title': 'Salary',
      'date': 'March 20, 2024',
      'amount': 1500.00,
    },
    {
      'type': 'expense',
      'title': 'Table',
      'date': 'March 1, 2024',
      'amount': -70.00,
    },
  ];

  double _balance = 1380.0;

  void _addTransaction(Map<String, dynamic> transaction) {
    setState(() {
      transactions.add(transaction);
      _updateBalance(transaction);
    });
  }

  void _updateBalance(Map<String, dynamic> transaction) {
    double amount = transaction['amount'];
    if (transaction['type'] == 'income') {
      _balance += amount;
    } else {
      _balance -= amount;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(251, 255, 255, 255),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Balance',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                '\$${_balance.toStringAsFixed(2)}',
                style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: _balance >= 0 ? Colors.green : Colors.red),
              ),
              SizedBox(height: 20),
              Text(
                'Transactions',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: transactions.map((transaction) {
                    double amount = transaction['amount'];
                    String formattedAmount = '\$${amount.abs().toStringAsFixed(2)}';
                    if (transaction['type'] == 'income') {
                      formattedAmount = '+$formattedAmount';
                    } else {
                      formattedAmount = '-$formattedAmount';
                    }

                    return Card(
                      child: ListTile(
                        leading: Icon(
                          transaction['type'] == 'income'
                              ? Icons.arrow_downward
                              : Icons.arrow_upward,
                          color: transaction['type'] == 'income'
                              ? Colors.green
                              : Colors.red,
                        ),
                        title: Text(transaction['title']),
                        subtitle: Text(transaction['date']),
                        trailing: Text(formattedAmount),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 193, 111, 18),
        onPressed: () async {
          final newTransaction = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddTransactionPage()),
          );
          if (newTransaction != null) {
            _addTransaction(newTransaction);
          }
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class AddTransactionPage extends StatefulWidget {
  @override
  _AddTransactionPageState createState() => _AddTransactionPageState();
}

class _AddTransactionPageState extends State<AddTransactionPage> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _amount = '';
  String _date = '';
  String _type = 'expense';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Transaction'),
        backgroundColor: const Color.fromARGB(255, 193, 111, 18),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  labelText: 'Title',
                  labelStyle: TextStyle(color: Color.fromARGB(255, 187, 115, 14)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 187, 115, 14),
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 187, 115, 14),
                      width: 3,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 255, 0, 0),
                      width: 3,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 255, 0, 0),
                      width: 3,
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
                onSaved: (value) {
                  _title = value!;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  labelText: 'Amount',
                  labelStyle: TextStyle(color: Color.fromARGB(255, 187, 115, 14)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 187, 115, 14),
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 187, 115, 14),
                      width: 3,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 255, 0, 0),
                      width: 3,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 255, 0, 0),
                      width: 3,
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an amount';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
                onSaved: (value) {
                  _amount = value!;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  labelText: 'Date',
                  labelStyle: TextStyle(color: Color.fromARGB(255, 187, 115, 14)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 187, 115, 14),
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 187, 115, 14),
                      width: 3,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 255, 0, 0),
                      width: 3,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 255, 0, 0),
                      width: 3,
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a date';
                  }
                  return null;
                },
                onSaved: (value) {
                  _date = value!;
                },
              ),
              SizedBox(height: 10),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  labelText: 'Type',
                  labelStyle: TextStyle(color: Color.fromARGB(255, 187, 115, 14)),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 187, 115, 14),
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 187, 115, 14),
                      width: 3,
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 255, 0, 0),
                      width: 3,
                    ),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 255, 0, 0),
                      width: 3,
                    ),
                  ),
                ),
                value: _type,
                onChanged: (value) {
                  setState(() {
                    _type = value!;
                  });
                },
                items: <String>['expense', 'income']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(255, 193, 111, 18)),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    Navigator.pop(context, {
                      'type': _type,
                      'title': _title,
                      'date': _date,
                      'amount': _type == 'income'
                          ? double.parse(_amount)
                          : -double.parse(_amount),
                    });
                  }
                },
                child: Text('Add Transaction'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
