import 'package:flutter/material.dart';

void main() {
  runApp(const HomeView());
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0; // Keep track of the selected index

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MedicalStorePage(currentIndex: currentIndex, onTap: _onTap),
      debugShowCheckedModeBanner: false,
    );
  }

  void _onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}

class MedicalStorePage extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const MedicalStorePage(
      {super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medical Store Mobile App'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Welcome Section
              const Text(
                'Hi, Shahzeb',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Welcome to Quick Medical Store',
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(height: 16),
              // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search Medicine & Healthcare products',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Top Categories
              const Text(
                'Top Categories',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildCategory('Dental', Colors.pink),
                  _buildCategory('Wellness', Colors.green),
                  _buildCategory('Homeo', Colors.orange),
                  _buildCategory('Eye care', Colors.blue),
                ],
              ),
              const SizedBox(height: 16),
              // Promotional Banner
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Save extra on every order\nEtiam mollis metus non faucibus',
                      style: TextStyle(color: Colors.blue),
                    ),
                    Icon(Icons.medical_services, size: 50, color: Colors.blue),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              // Deals of the Day
              const Text(
                'Deals of the Day',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 2 / 3,
                ),
                itemCount: 200,
                itemBuilder: (context, index) {
                  Image.network;
                  'https://th.bing.com/th/id/OIP.tz2y-6WzqU0o9GUurlDtOQHaE8?rs=1&pid=ImgDetMain';
                  return _buildProductCard();
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap, // Pass the onTap function
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.purple,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "YourLikes"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }

  Widget _buildCategory(String title, Color color) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
        ),
        const SizedBox(height: 8),
        Text(title),
      ],
    );
  }

  Widget _buildProductCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue[50],
                ),
                child: const Center(
                  child: Icon(Icons.medication, size: 50, color: Colors.blue),
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Accu-check Active\nTest Strip',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'Rs.112',
              style: TextStyle(color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
