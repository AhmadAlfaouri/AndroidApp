import 'dart:convert';
import 'package:ahmad/model/list_products.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ahmad/Loginpage.dart';
import 'package:ahmad/Wallet.dart';
import 'package:ahmad/api/modelsignup.dart';
import 'package:ahmad/cartPage.dart';
import 'package:ahmad/home.dart';
import 'package:ahmad/model/prouducts_models.dart';
import 'package:ahmad/orderpage.dart';

class BasicHome extends StatefulWidget {
  const BasicHome({Key? key}) : super(key: key);

  @override
  State<BasicHome> createState() => _BasicHomeState();
}

class _BasicHomeState extends State<BasicHome> {
  final ApiService _apiService = ApiService('http://127.0.0.1:8000');
  int _pageIndex = 0;
  Welcome? _userInfo;
  bool _isLoading = true;

  final List<Map<String, dynamic>> _pages = [
    {'title': 'Home', 'page': Home()},
    {'title': 'Cart', 'page': CartPage()},
    {'title': 'Order', 'page': orderpage()},
    {'title': 'Wallet', 'page': WalletHomePage()},
  ];

  @override
  void initState() {
    super.initState();
    _loadUserInfo();
  }

  Future<void> _loadUserInfo() async {
    setState(() {
      _isLoading = true;
    });
    try {
      final user = await _apiService.fetchUserInfo(2);
      if (mounted) {
        setState(() {
          _userInfo = user;
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error loading user info: $e')),
      );
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 193, 111, 18),
        centerTitle: true,
        title: Text(
          _pages[_pageIndex]['title'],
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              showSearch(context: context, delegate: DataSearch(prouducts));
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(252, 243, 204, 161),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.brown,
              ),
              child: CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('images/123456.jpg'),
              ),
            ),
            if (_isLoading)
              const Center(child: CircularProgressIndicator())
            else if (_userInfo == null)
              const Center(child: Text('Failed to load user info'))
            else
              // _buildProfileDetails(),
            ListTile(
              onTap: _signOut,
              leading: const Icon(Icons.logout),
              title: const Text("Sign Out"),
            ),
          ],
        ),
      ),
      body: _pages[_pageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        onTap: _onBottomNavBarTapped,
        backgroundColor: Colors.blue,
        selectedItemColor: const Color.fromARGB(255, 193, 111, 18),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.border_outer_rounded),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: "Wallet",
          ),
        ],
      ),
    );
  }

  // Widget _buildProfileDetails() {
  //   return Column(
  //     children: [
  //       _buildProfileItem(
  //         icon: Icons.person,
  //         label: 'Profile',
  //         value: _userInfo?.name ?? '',
  //         onTap: () {
  //           _editProfileField(context, 'Profile', _userInfo?.name ?? '');
  //         },
  //       ),
  //       _buildProfileItem(
  //         icon: Icons.phone,
  //         label: 'Phone',
  //         value: _userInfo?.phone ?? '',
  //         onTap: () {
  //           _editProfileField(context, 'Phone', _userInfo?.phone ?? '');
  //         },
  //       ),
  //       _buildProfileItem(
  //         icon: Icons.email,
  //         label: 'Email',
  //         value: _userInfo?.email ?? '',
  //         onTap: () {
  //           _editProfileField(context, 'Email', _userInfo?.email ?? '');
  //         },
  //       ),
  //       _buildProfileItem(
  //         icon: Icons.location_on,
  //         label: 'Address',
  //         value: _userInfo?.address ?? '',
  //         onTap: () {
  //           _editProfileField(context, 'Address', _userInfo?.address ?? '');
  //         },
  //       ),
  //     ],
  //   );
  // }

  // Widget _buildProfileItem({
  //   required IconData icon,
  //   required String label,
  //   required String value,
  //   required VoidCallback onTap,
  // }) 
  // {
  //   return Card(
  //     margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
  //     elevation: 3,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(10),
  //     ),
  //     child: ListTile(
  //       leading: Icon(icon, color: Colors.brown),
  //       title: Text(
  //         '$label:',
  //         style: const TextStyle(fontWeight: FontWeight.bold),
  //       ),
  //       subtitle: Text(value),
  //       trailing: const Icon(Icons.edit),
  //       onTap: onTap,
  //     ),
  //   );
  // }

  Future<void> _editProfileField(BuildContext context, String field, String currentValue) async {
    TextEditingController controller = TextEditingController(text: currentValue);

    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit $field'),
          content: TextField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter your $field',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () async {
                final updatedValue = controller.text;
                Navigator.of(context).pop();
                await _updateUserInfo(field, updatedValue);
              },
              child: const Text('Save'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  Future<void> _updateUserInfo(String field, String newValue) async {
    try {
      await _apiService.updateUserInfo(field, newValue);
      _loadUserInfo();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error updating $field: $e')),
      );
    }
  }

  void _onBottomNavBarTapped(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  void _signOut() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const Login()),
    );
  }
}

class ApiService {
  final String baseUrl;

  ApiService(this.baseUrl);

  Future<Welcome?> fetchUserInfo(int userId) async {
    try {
      final response = await http.get(
        Uri.parse('$baseUrl/api/update_user/$userId'),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
      );

      if (response.statusCode == 200) {
        return welcomeFromJson(response.body);
      } else {
        throw Exception('Failed to load user info: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching user info: $e');
    }
  }

  Future<void> updateUserInfo(String field, String newValue) async {
    try {
      final response = await http.put(
        Uri.parse('$baseUrl/api/update_user'),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: jsonEncode({'field': field, 'value': newValue}),
      );

      if (response.statusCode != 200) {
        throw Exception('Failed to update user info: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error updating user info: $e');
    }
  }
}

class DataSearch extends SearchDelegate<String> {
  final List<ProductsModel> products;

  DataSearch(this.products);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<ProductsModel> results = products
        .where((product) => product.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(results[index].image),
          title: Text(results[index].title),
          subtitle: Text('Price: ${results[index].price}'),
          onTap: () {
            close(context, results[index].title);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<ProductsModel> suggestions = products
        .where((product) => product.title.toLowerCase().startsWith(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Image.asset(suggestions[index].image),
          title: Text(suggestions[index].title),
          subtitle: Text('Price: ${suggestions[index].price}'),
          onTap: () {
            query = suggestions[index].title;
            showResults(context);
          },
        );
      },
    );
  }
}
