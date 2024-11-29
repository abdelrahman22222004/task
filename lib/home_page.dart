import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
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

      //            body
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(),
          const SizedBox(height: 50),
          _buildIconRow(),
          const SizedBox(height: 10),
          _buildLabelRow(),
          const SizedBox(height: 40),
          const Center(
            child: Text(
              'Sales',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                _buildProductCard('Smartphones', 'assets/phone.jpg', '-50%'),
                _buildProductCard('Monitors', 'assets/monitor.jpg', '-50%'),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: [
                _buildProductCard(
                  'LapTops',
                  'assets/laptop.jpg',
                  '-40%',
                ),
                _buildProductCard('AirPods', 'assets/air.jpg', '-30%'),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.blue, // Color for the selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
        backgroundColor: Colors.white, // Background color of the bar
      ),
    );
  }

//---------------------------------------------------------
//    widgets
  Widget _buildHeader() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Bose Home Speaker       ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Text(
                'USD 279',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              'assets/hh.jpg',
              width: 100,
              height: 110,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Color(0xffB9C1C9),
              borderRadius: BorderRadius.circular(111)),
          child:const Icon(
            Icons.subject_outlined,
            color: Colors.blue,
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Color(0xffB9C1C9),
              borderRadius: BorderRadius.circular(111)),
          child:const Icon(
            Icons.favorite,
            color: Colors.blue,
          ),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Color(0xffB9C1C9),
              borderRadius: BorderRadius.circular(111)),
          child:const Icon(Icons.card_giftcard, color: Colors.blue),
        ),
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Color(0xffB9C1C9),
              borderRadius: BorderRadius.circular(111)),
          child:const Icon(
            Icons.star,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }

  Widget _buildLabelRow() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Categories',
            style: TextStyle(color: Colors.blue),
          ),
          Text(
            'Favorite',
            style: TextStyle(color: Colors.blue),
          ),
          Text(
            'Gifts',
            style: TextStyle(color: Colors.blue),
          ),
          Text(
            'Best Seller',
            style: TextStyle(color: Colors.blue),
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(String title, String imagePath, String discount) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.grey, borderRadius: BorderRadius.circular(4)),
                child: Text(
                  discount,
                  style: const TextStyle(color: Colors.red),
                ),
              )),
          Image.asset(
            imagePath,
            height: 100,
          ),
          Text(title),
        ],
      ),
    );
  }
}
